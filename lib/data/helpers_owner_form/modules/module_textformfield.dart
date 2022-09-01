import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/dropdownbutton_multiselection.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/label_text.dart';
import 'package:rent_my_boat/data/helpers_owner_form/singles/package_dropdownbutton.dart';
import 'package:rent_my_boat/data/helpers_owner_form/modules/module_images.dart';
import '../singles/textformfield.dart';

import '../../colors.dart';

class ModuleTextFormField extends StatefulWidget {
  const ModuleTextFormField({Key? key}) : super(key: key);

  @override
  State<ModuleTextFormField> createState() => _ModuleTextFormFieldState();
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
final GlobalKey<FormState> _form14Key = GlobalKey();
final GlobalKey<FormState> _form15Key = GlobalKey();
final GlobalKey<FormState> _form16Key = GlobalKey();
final GlobalKey<FormState> form17Key = GlobalKey();

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
final TextEditingController boatNameController = TextEditingController();
final TextEditingController rentalPriceController = TextEditingController();
final TextEditingController capitanPaymentController = TextEditingController();
final TextEditingController yearBoatController = TextEditingController();

class _ModuleTextFormFieldState extends State<ModuleTextFormField> {
  late var click = "English";
  late String name,
      mobile,
      dateOfBirth,
      email,
      language,
      manufactorer,
      model,
      boatName,
      location,
      capacity,
      cabins,
      sleepingPlaces,
      length,
      enginePower,
      rentalPrice,
      capitanPayment,
      yearOfBoat,
      equipment;

  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelText(text: tr.name),
            Form(
              key: _form1Key,
              child: TextFormFieldCreate(
                controller: nameController,
                hintText: tr.nameHint,
                keyboardType: TextInputType.text,
                maxLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr.errorMessage;
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText(text: tr.dateOfBirth),
                      Form(
                        key: _form2Key,
                        child: TextFormFieldCreate(
                            controller: dateOfBirthController,
                            hintText: '00.00.0000',
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return tr.errorMessage;
                              }
                              return null;
                            },
                            onSaved: (value) {
                              dateOfBirth = value!;
                            }),
                      ),
                    ]),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText(text: tr.phoneNumber),
                      Form(
                        key: _form3Key,
                        child: TextFormFieldCreate(
                          controller: phoneNumberController,
                          hintText: '+0 000 0000000',
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          validator: (value) {
                            bool mobileValid =
                                RegExp(r'(^[0-9]*$)').hasMatch(value!);
                            if (!mobileValid) {
                              return tr.errorMessage;
                            } else if (value.length < 7) {
                              return tr.errorMessage;
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            mobile = value!;
                          },
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LabelText(text: tr.email),
          Form(
            key: _form4Key,
            child: TextFormFieldCreate(
              controller: emailController,
              hintText: 'yourmail@gmail.com',
              keyboardType: TextInputType.emailAddress,
              maxLines: 1,
              validator: (value) {
                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value!);
                if (!emailValid) {
                  return tr.errorMessage;
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                email = value!;
              },
            ),
          ),
        ]),
        const SizedBox(height: 16),
        //DropdownTextField with multiselection of user language
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LabelText(text: tr.languages),
          Form(
            key: _form5Key,
            child: DropDownButtonCreate(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tr.errorMessage;
                }
                return null;
              },
              onSaved: (value) {
                language = value!;
              },
              onChanged: (val) {
                setState(() {});
              },
              submitButtonText: tr.button_save,
              hintText: click,
            ),
          ),
        ]),
        const SizedBox(height: 16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LabelText(text: tr.manufactorer),
          Form(
            key: _form6Key,
            child: TextFormFieldCreate(
              controller: manufBoatController,
              hintText: 'Lagoon',
              keyboardType: TextInputType.text,
              maxLines: 1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tr.errorMessage;
                }
                return null;
              },
              onSaved: (value) {
                manufactorer = value!;
              },
            ),
          ),
        ]),
        const SizedBox(height: 16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LabelText(text: tr.model),
          Form(
            key: _form7Key,
            child: TextFormFieldCreate(
              controller: modelBoatController,
              hintText: '52',
              keyboardType: TextInputType.text,
              maxLines: 1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tr.errorMessage;
                }
                return null;
              },
              onSaved: (value) {
                model = value!;
              },
            ),
          ),
        ]),
        const SizedBox(height: 16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LabelText(text: tr.year),
          Form(
            key: _form8Key,
            child: TextFormFieldCreate(
              controller: yearBoatController,
              hintText: '2019',
              keyboardType: TextInputType.number,
              maxLines: 1,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return tr.errorMessage;
                }
                return null;
              },
              onSaved: (value) {
                yearOfBoat = value!;
              },
            ),
          ),
        ]),
        const SizedBox(height: 16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          LabelText(text: tr.location),
          Form(
            key: _form9Key,
            child: TextFormFieldCreate(
                controller: locationController,
                hintText: tr.locationHint,
                keyboardType: TextInputType.text,
                maxLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr.errorMessage;
                  }
                  return null;
                },
                onSaved: (value) {
                  location = value!;
                }),
          ),
        ]),
        const SizedBox(height: 16),
        SizedBox(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LabelText(text: tr.capacity),
                      Form(
                        key: _form10Key,
                        child: TextFormFieldCreate(
                          controller: capacityController,
                          hintText: '12',
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return tr.errorMessage;
                            }
                            return null;
                          },
                          onSaved: (value) {
                            capacity = value!;
                          },
                        ),
                      ),
                    ]),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(text: tr.cabins),
                    Form(
                      key: _form11Key,
                      child: TextFormFieldCreate(
                          controller: cabinsNumberController,
                          hintText: '4',
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return tr.errorMessage;
                            }
                            return null;
                          },
                          onSaved: (value) {
                            cabins = value!;
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(text: tr.sleepingPlaces),
                    Form(
                      key: _form12Key,
                      child: TextFormFieldCreate(
                          controller: bedNumderController,
                          hintText: '8',
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return tr.errorMessage;
                            }
                            return null;
                          },
                          onSaved: (value) {
                            sleepingPlaces = value!;
                          }),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(text: tr.length),
                    Form(
                      key: _form13Key,
                      child: TextFormFieldCreate(
                          controller: lenghtBoatController,
                          hintText: tr.lengthHint,
                          keyboardType: TextInputType.text,
                          maxLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return tr.errorMessage;
                            }
                            return null;
                          },
                          onSaved: (value) {
                            length = value!;
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelText(text: tr.enginePower),
            Form(
              key: _form14Key,
              child: TextFormFieldCreate(
                controller: powerBoatController,
                hintText: tr.enginePowerHint,
                keyboardType: TextInputType.text,
                maxLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr.errorMessage;
                  }
                  return null;
                },
                onSaved: (value) {
                  enginePower = value!;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelText(text: tr.boatWeekPrice),
            Form(
              key: _form15Key,
              child: TextFormFieldCreate(
                controller: rentalPriceController,
                hintText: '200 000 ₽',
                keyboardType: TextInputType.text,
                maxLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr.errorMessage;
                  }
                  return null;
                },
                onSaved: (value) {
                  rentalPrice = value!;
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelText(text: tr.captainDayPrice),
            Form(
              key: _form16Key,
              child: TextFormFieldCreate(
                controller: capitanPaymentController,
                hintText: '10 000 ₽',
                keyboardType: TextInputType.text,
                maxLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return tr.errorMessage;
                  }
                  return null;
                },
                onSaved: (value) {
                  capitanPayment = value!;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SaveButton extends StatefulWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  @override
  Widget build(BuildContext context) {
    var tr = AppLocalizations.of(context)!;
    return Center(
        child: SizedBox(
      width: 350,
      height: 40,
      child: ElevatedButton(
          child: Text(
            tr.button_save,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: background,
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
            _form14Key.currentState?.validate();
            _form15Key.currentState?.validate();
            _form16Key.currentState?.validate();
            form17Key.currentState?.validate();

            {}
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(activeButton),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
          )),
    ));
  }
}
