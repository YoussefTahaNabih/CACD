import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/strings.dart';
import '../../../../../core/utils/styles.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  File? _file;
  Future pickPhoto() async {
    final myphoto = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _file = File(myphoto!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        pickPhoto()
            .then((value) => const SpinKitFadingCircle(
                  color: kPrimaryColor,
                  size: 50.0,
                  duration: Duration(milliseconds: 5),
                ))
            .then((value) => dialog(context));
      },
      child: Container(
        width: 232.0,
        height: 44.0,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.cloud_upload_rounded,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              StringsData.upload,
              style: Styles.textbutton,
            )
          ],
        ),
      ),
    );
  }

  Future<void> dialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: SizedBox(
              child: _file == null
                  ? const Icon(
                      Icons.image,
                      size: 50,
                    )
                  : Image.file(
                      _file!,
                      fit: BoxFit.contain,
                    )),
          content: SizedBox(
            child: Column(
              children: [
                const Text('The Result is:'),
                Text(
                  'Bengin',
                  style: Styles.result,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: Text(
                'Cancel',
                style: Styles.textbutton.copyWith(color: kPrimaryColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
