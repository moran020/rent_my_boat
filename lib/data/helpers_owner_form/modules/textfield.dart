import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../colors.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/dropdownbutton_multiselection.dart';
import '../singles/package_dropdownbutton.dart';

class TextFormValidation extends StatefulWidget {
  const TextFormValidation({Key? key}) : super(key: key);

  @override
  State<TextFormValidation> createState() => _TextFormValidationState();
}

    final GlobalKey<FormState> _form1Key = GlobalKey();
    final GlobalKey<FormState> _form2Key = GlobalKey();
    final GlobalKey<FormState> _form3Key = GlobalKey();
    final GlobalKey<FormState> _form4Key = GlobalKey();
    final GlobalKey<FormState> _form5Key = GlobalKey();
    final GlobalKey<FormState> _form6Key = GlobalKey();
    final GlobalKey<FormState> _form7Key = GlobalKey();
    final GlobalKey<FormState> _form8Key = GlobalKey();
    final GlobalKey<FormState> _form9Key = GlobalKey();
    final GlobalKey<FormState> _form10Key = GlobalKey();
    final GlobalKey<FormState> _form11Key = GlobalKey();
    final GlobalKey<FormState> _form12Key = GlobalKey();
    final GlobalKey<FormState> _form13Key = GlobalKey();
    
final TextEditingController nameController = TextEditingController();
final TextEditingController dateOfBirthController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();
final TextEditingController manufBoatController = TextEditingController();
final TextEditingController modelBoatController = TextEditingController();
final TextEditingController locationController = TextEditingController();
final TextEditingController capacityController = TextEditingController();
final TextEditingController lenghtBoatController = TextEditingController();
final TextEditingController cabinsNumberController = TextEditingController();
final TextEditingController bedNumderController = TextEditingController();
final TextEditingController powerBoatController = TextEditingController();
final TextEditingController addEquipment = TextEditingController();
final MultiValueDropDownController languagesController =
    MultiValueDropDownController();
final TextEditingController boatNameController = TextEditingController(); //добавила контроллер для нового поля "название лодки"

class _TextFormValidationState extends State<TextFormValidation> {

  late String name, mobile, dateOfBirth, email, language, manufactorer, model, boatName, location, capacity, cabins, sleepingPlaces, length, enginePower;

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    
    return Column(
      children: <Widget>[
      Form(
               key: _form1Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller: nameController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                         hintText: tr.nameHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                }, onSaved: (value) {
    name = value!;
  }, 
                         ),), 
     const SizedBox(height: 10),
    SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                     child: Form(
               key: _form2Key,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                          controller: dateOfBirthController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.dateOfBirthHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         }, onSaved: (value) {
    dateOfBirth = value!;
  }, ),
             ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                   child: Form(
               key: _form3Key,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                          controller:phoneNumberController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.phoneNumberHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                      bool mobileValid = RegExp(r'(^[0-9]*$)')
                          .hasMatch(value!);
                      if (!mobileValid) {
                        return 'Введите данные';
                       } else if (value.length != 7){
                        return 'Введите данные';
                      } else {
                 return null;
                   }},
                          onSaved: (value) {
    mobile = value!;
  }, ),
             ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 10),
             Form(
               key: _form4Key,
               child: TextFormField(
                 keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.emailHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (!emailValid) {
                        return 'Введите данные';
                      } else {
                        return null;
                      }
                    },
                     onSaved: (value) {
    email = value!;
  }, ),
             ),
      const SizedBox(height: 10),
     DropDownButtonCreate(
              submitButtonText: tr.button_save,
              hintText: tr.languagesHint,
              onChanged: (val) {
                setState(() {});
              }, 
            ),
       const SizedBox(height: 10),
       Form(
               key: _form5Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller: manufBoatController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.manufactorerHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    manufactorer = value!;
  }, ), ),
            const SizedBox(height: 10),
       Form(
               key: _form6Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller: modelBoatController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.modelHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    model = value!;
  }, ),
             ),
            const SizedBox(height: 10),
       Form(
               key: _form7Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller: boatNameController, // сделала новый контроллер "название лодки"
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.modelHint, // необходим перевод поля "название лодки", чтобы вставить в эту строку
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    boatName = value!;
  }, ),
             ),
      const SizedBox(height: 10),
      Form(
               key: _form8Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller: locationController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.locationHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    location= value!;
  }, ),),
      const SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                   child: Form(
               key: _form9Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller:capacityController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.year, // нужен перевод слова Вместимость
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    capacity = value!;
  }, ),
             ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Form(
               key: _form10Key,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                          controller:cabinsNumberController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.cabinsHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    cabins = value!;
  }, ),
             ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
             SizedBox(
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Form(
               key: _form11Key,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                          controller:bedNumderController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.sleepingPlacesHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    sleepingPlaces= value!;
  }, ),
             ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Form(
               key: _form12Key,
               child: TextFormField(
                 keyboardType: TextInputType.number,
                          controller:lenghtBoatController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.lengthHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    length = value!;
  }, ),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
      Form(
               key: _form13Key,
               child: TextFormField(
                 keyboardType: TextInputType.text,
                          controller:powerBoatController,
                   cursorColor: activeButton,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     errorStyle: TextStyle(color: calendarSymbols, fontSize: 10, fontWeight: FontWeight.w500,fontFamily: 'Montserrat', letterSpacing: 0.5),
                     errorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     focusedErrorBorder:  OutlineInputBorder(borderSide: BorderSide(color: errorBorder)),
                     contentPadding: const EdgeInsets.only(top: 9, bottom: 9, left: 11),
                     enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(
                color: activeButton,
                         )),
                     focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5),
                         borderSide: BorderSide(width: 2.5, color: activeButton)),
                     hintText: tr.enginePowerHint,
                     hintStyle: TextStyle(fontSize: 17, color: hintTextColor),
                     isDense: true,
                   ),
                   validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Введите данные';
                }
                return null;
                         },
                          onSaved: (value) {
    enginePower = value!;
  }, ),
             ),
      ]);
  }
} // кнопка "Сохранить"
class SaveButton extends StatefulWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: 350,
      height: 40,
      child: ElevatedButton(
          child: Text(
            "Сохранить",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: inactiveButtonText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1),
          ),
          onPressed: () {
             _form1Key.currentState?.validate();
             _form2Key.currentState?.validate();
              _form3Key.currentState?.validate();
               _form4Key.currentState?.validate();
                _form5Key.currentState?.validate();
                 _form6Key.currentState?.validate();
                  _form7Key.currentState?.validate();
                   _form8Key.currentState?.validate();
                    _form9Key.currentState?.validate();
                     _form10Key.currentState?.validate();
                      _form11Key.currentState?.validate();
                       _form12Key.currentState?.validate();
                        _form13Key.currentState?.validate();
              {           
              }},               
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(inactiveButton),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
          )),
    ));
  }
}

  
