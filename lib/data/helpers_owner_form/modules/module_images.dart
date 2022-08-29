import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/colors.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/image_container.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ModuleImages extends StatefulWidget {
  const ModuleImages({Key? key}) : super(key: key);
  @override
  _ModuleImagesState createState() => _ModuleImagesState();
}

class _ModuleImagesState extends State<ModuleImages> {
  PlatformFile? pickedFile;
  UploadTask? uploadTask;

  Future selectUploadFile() async {
    //first select file from gallery of phone
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result == null) return;

    setState(() {
      pickedFile = result.files.first;
    });

    // second upload to Firebase
    final path = 'files/${pickedFile!.name}';
    final file = File('${pickedFile!.path}');

    final ref = FirebaseStorage.instance.ref().child(path);
    uploadTask = ref.putFile(file);

    final snapshot = await uploadTask!.whenComplete(() {});

    final urlDownload = await snapshot.ref.getDownloadURL();
    debugPrint('Download Link: $urlDownload');
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          // TODO добавить разделение разных контейнеров под загрузку разных изображений
          Row(
            children: [
              (pickedFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedFile!.path}'),
                      ),
                      onPressed: () {},
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadFile,
                              icon: Image.asset('assets/icons/speedboat.png')),
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: photoContainer)),
                    ),
              const SizedBox(
                width: 8,
              ),
              (pickedFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedFile!.path}'),
                      ),
                      onPressed: () {},
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadFile,
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
              (pickedFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedFile!.path}'),
                      ),
                      onPressed: () {},
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadFile,
                              icon: Image.asset('assets/icons/ferry.png')),
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: photoContainer)),
                    ),
              const SizedBox(
                width: 8,
              ),
              (pickedFile != null)
                  ? (Expanded(
                      child: ImageContainerButtonCreate(
                      file: FileImage(
                        File('${pickedFile!.path}'),
                      ),
                      onPressed: () {},
                    )))
                  : Expanded(
                      child: Container(
                          child: IconButton(
                              onPressed: selectUploadFile,
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
