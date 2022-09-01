import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/image_container.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:rent_my_boat/screens/owner_form.dart';

class ModuleImages extends StatefulWidget {
  const ModuleImages({Key? key}) : super(key: key);
  @override
  _ModuleImagesState createState() => _ModuleImagesState();
}

class _ModuleImagesState extends State<ModuleImages> {
  PlatformFile? pickedFirstFile;
  PlatformFile? pickedSecondFile;
  PlatformFile? pickedThirdFile;
  PlatformFile? pickedFourthFile;
  PlatformFile? pickedAvatarFile;
  UploadTask? uploadTask;

//select file from gallery of phone
  Future selectUploadFirstFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'png',
        'jpeg',
        'jpg',
        'JPG',
        'JPEG',
      ],
    );
    if (result == null) return;

    setState(() {
      pickedFirstFile = result.files.first;
    });

    final path = 'files/first/${pickedFirstFile!.name}';
    final file = File('${pickedFirstFile!.path}');
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);
    final snapshot = await uploadTask!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();
    debugPrint('Download Link: $urlDownload');
  }

  Future selectUploadSecondFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: [
        'png',
        'jpeg',
        'jpg',
        'JPG',
        'JPEG',
      ],
    );
    if (result == null) return;

    setState(() {
      pickedSecondFile = result.files.first;
    });
    final path = 'files/second/${pickedFirstFile!.name}';
    final file = File('${pickedFirstFile!.path}');
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);
  }

  Future selectUploadThirdFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'png',
        'jpeg',
        'jpg',
        'JPG',
        'JPEG',
      ],
    );
    if (result == null) return;

    setState(() {
      pickedThirdFile = result.files.first;
    });
    final path = 'files/third/${pickedFirstFile!.name}';
    final file = File('${pickedFirstFile!.path}');
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);
  }

  Future selectUploadFourthFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: [
        'png',
        'jpeg',
        'jpg',
        'JPG',
        'JPEG',
      ],
    );
    if (result == null) return;

    setState(() {
      pickedFourthFile = result.files.first;
    });

    final path = 'files/fourth/${pickedFirstFile!.name}';
    final file = File('${pickedFirstFile!.path}');
    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);
  }

  //upload selected fite to Firebase Storage

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          // TODO добавить разделение разных контейнеров под загрузку разных изображений
          Row(
            children: [
              (pickedFirstFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedFirstFile!.path}'),
                      ),
                      onPressed: () {
                        selectUploadFirstFile();
                      },
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadFirstFile,
                              icon: Image.asset('assets/icons/speedboat.png')),
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: photoContainer)),
                    ),
              const SizedBox(
                width: 8,
              ),
              (pickedSecondFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedSecondFile!.path}'),
                      ),
                      onPressed: () {
                        selectUploadSecondFile();
                      },
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadSecondFile,
                              icon: Image.asset('assets/icons/ship.png')),
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: photoContainer)),
                    ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              (pickedThirdFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedThirdFile!.path}'),
                      ),
                      onPressed: () {
                        selectUploadThirdFile();
                      },
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadThirdFile,
                              icon: Image.asset('assets/icons/ferry.png')),
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: photoContainer)),
                    ),
              const SizedBox(
                width: 8,
              ),
              (pickedFourthFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedFourthFile!.path}'),
                      ),
                      onPressed: () {
                        selectUploadFourthFile();
                      },
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadFourthFile,
                              icon: Image.asset('assets/icons/motor_boat.png')),
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: photoContainer)),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
