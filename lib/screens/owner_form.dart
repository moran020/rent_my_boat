import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_my_boat/data/helpers_owner_form/modules/module_checkbox.dart';
import 'package:rent_my_boat/data/helpers_owner_form/modules/module_images.dart';
import 'package:rent_my_boat/data/helpers_owner_form/modules/module_radiobutton.dart';
import 'package:rent_my_boat/data/helpers_owner_form/modules/module_textformfield.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/circle_avatar.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/header_middle_text.dart';
import '../data/helpers_owner_form/modules/textfield.dart';
import '/data/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '/data/calendar.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/textformfield.dart';

class OwnerForm extends StatefulWidget {
  const OwnerForm({Key? key}) : super(key: key);

  @override
  FormState createState() => FormState();
}

class FormState extends State with TickerProviderStateMixin {
  // The entry point for accessing a Firebase Database.
  final _database = FirebaseDatabase.instance;
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    //variable for accessing localization files
    var tr = AppLocalizations.of(context)!;
    // variable for creating branch to save the data to realtime database
    final reference = _database.ref().child('Личные данные');
    final currentWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: appbarLine, width: 2)),
        backgroundColor: background,
        elevation: 0.0,
        // shadowColor: appbarLine ,
        leading: IconButton(
          icon: Image.asset('assets/icons/chevron_left.png'),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
        actions: <Widget>[
          //With method .set data from textfields are goind into realtime database firebase
          TextButton(
            onPressed: () {
              reference.set({
                tr.nameHint: nameController.text,
                tr.dateOfBirthHint: dateOfBirthController.text,
                tr.emailHint: emailController.text,
                tr.phoneNumberHint: phoneNumberController.text,
                tr.languagesHint:
                    languagesController.dropDownValueList.toString(),
                tr.manufactorerHint: manufBoatController.text,
                tr.modelHint: modelBoatController.text,
                tr.locationHint: locationController.text,
                tr.year: capacityController.text,
                tr.lengthHint: lenghtBoatController.text,
                tr.cabinsHint: cabinsNumberController.text,
                tr.sleepingPlacesHint: bedNumderController.text,
                tr.enginePowerHint: powerBoatController.text,
              }).asStream();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                tr.button_save,
                style: TextStyle(
                    color: basicText,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            
      ))],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                //using the button CircleAvatarCreate, the user will be able to upload a photo of himself
                child: CircleAvatarCreate(),
              ),
              const SizedBox(height: 35),
              Text(
                tr.greeting,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.41),
              ),
              const SizedBox(height: 11),
              HeaderMiddleText(text: tr.introduction),
              const SizedBox(height: 20),
              //The module of textfields for the form
              const TextFormValidation(),
              const SizedBox(height: 40),
              HeaderMiddleText(text: tr.boatCategory),
              const SizedBox(height: 18),
              //The module of radiobuttons with the ability to select the type of boat
              const ModuleRadioButton(),
              const SizedBox(height: 32),
              HeaderMiddleText(text: tr.instructionOne),
              const SizedBox(height: 20),
              //The module for containers with buttons, which give the user will be able to upload a photos of his boat
              const ModuleImages(),
              const SizedBox(height: 32),
              HeaderMiddleText(text: tr.instructionTwo),
              const SizedBox(height: 20),
              //The module of checkboxes with a choice of equipment on board the boat
              const ModuleCheckBox(),
              const SizedBox(height: 32),
              HeaderMiddleText(text: tr.instructionThree),
              const SizedBox(height: 24),
              TextFormFieldCreate(
                  controller: addEquipment,
                  hintText: tr.instructionThreeHint,
                  keyboardType: TextInputType.text),
              const SizedBox(height: 40),
              HeaderMiddleText(text: tr.instructionFour),
              const SizedBox(height: 20),
              //Calendar
              const Calendar(),
              const SizedBox(height: 30),
              const SaveButton()
            ],
          ),
        ), 
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : SizedBox(
              width: 36,
              height: 36,
              child: FloatingActionButton(
                onPressed: _scrollToTop,
                child: Image.asset("assets/icons/uptotop.png"),
                backgroundColor: upToTopButton,
                elevation: 0,
              ), 
            ),
            
    ) );
  }
}
