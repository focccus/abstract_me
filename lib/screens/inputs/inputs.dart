import 'package:flutter/material.dart';
import '../../data/input_values.dart';
import '../../intl.dart';
import '../../widgets/button.dart';
import '../output/output.dart';
import 'heading.dart';
import 'modules/date_picker.dart';
import 'modules/slider.dart';
import 'modules/text.dart';
import 'modules/yesno.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  int slider = 100;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final secondFirstNameController = TextEditingController();
  bool gender = true;
  var birth = DateTime.now();
  final birthTownController = TextEditingController();
  var isWorking = true;
  final jobController = TextEditingController();
  int size = 150;
  final eyeColorController = TextEditingController();
  final hairColorController = TextEditingController();
  int shoeSize = 40;
  var hasHats = false;
  int children = 0;
  bool relationship = false;
  final favoriteAnimalController = TextEditingController();
  final petNameController = TextEditingController();
  int moved = 2;
  var hasApartment = true;
  final firstLoveController = TextEditingController();
  int friends = 3;
  var conservativeOpinion = false;
  final religionController = TextEditingController();
  var climateFriendly = true;
  final musicController = TextEditingController();
  var vegetarian = false;
  var glasEmpty = true;

  void generate() {
    final values = InputValues();
    values.addBool(glasEmpty);
    values.addRange(firstNameController.text.length);
    values.addRange(lastNameController.text.length);
    values.addBool(hasApartment);
    values.addRange(secondFirstNameController.text.length);
    values.addBool(gender);
    values.addBool(vegetarian);
    values.addRange(birth.day, 31);
    values.addRange(birth.month, 12);
    values.addBool(hasHats);
    values.addBool(birth.year < 1960);
    values.addRange(eyeColorController.text.length);
    values.addRange(DateTime.now().year - birth.year, 110);
    values.addRange(birth.weekday, 7);
    values.addRange(shoeSize, 55, 20);
    values.addRange(moved, 10);
    values.addRange(hairColorController.text.length);
    values.addRange(birthTownController.text.length);
    values.addBool(hasApartment);
    values.addRange(petNameController.text.length);
    values.addString(petNameController.text, 0, 2);
    values.addString(firstNameController.text, 1, 1);
    values.addBool(secondFirstNameController.text.isNotEmpty);
    values.addString(firstNameController.text, 0, 2);
    values.addBool(relationship);
    values.addString(lastNameController.text, 0, 0);
    values.addString(lastNameController.text, 2, 1);
    values.addString(hairColorController.text, 0, 1);
    values.addRange(friends, 15);
    values.addRange(musicController.text.length);
    values.addBool(climateFriendly);
    values.addString(musicController.text, 1, 0);
    values.addBool(isWorking);
    values.addString(secondFirstNameController.text, 1);
    values.addString(favoriteAnimalController.text, 1, 0);
    values.addRange(size, 60, 250);
    values.addRange(jobController.text.length);
    values.addString(jobController.text, 0, 2);
    values.addRange(religionController.text.length);
    values.addBool(firstLoveController.text.length > 0);
    values.addString(eyeColorController.text, 1, 0);
    values.addString(religionController.text, 0, 0);
    values.addBool(conservativeOpinion);
    values.addRange(children, 10);
    values.addRange(firstLoveController.text.length);
    values.addRange(favoriteAnimalController.text.length);
    values.addString(firstLoveController.text, 0, 0);
    values.addBool(climateFriendly);

    print(values.length);
    print(values.values);
    print(values.average);
    print(values.getAverageBetween(0, 10));
    print(values.getAverageBetween(50, 59));

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => OutputPage(values),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final AbstractLocalizations l = AbstractLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(4),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 650),
            child: Column(
              children: <Widget>[
                SectionHeading(l.generalInformation, [
                  TextInputModule(firstNameController, l.firstName),
                  TextInputModule(lastNameController, l.lastName),
                  TextInputModule(secondFirstNameController, l.secondName),
                  YesNoInputModule(
                    gender,
                    label: l.female,
                    onChanged: (v) => setState(() => gender = v),
                  ),
                  DateTimePicker(
                    labelText: l.dateofBirth,
                    selectedDate: birth,
                    selectDate: (d) => setState(() => birth = d),
                  ),
                  TextInputModule(birthTownController, l.placeofBirth),
                  YesNoInputModule(
                    isWorking,
                    label: l.isWorking,
                    onChanged: (v) => setState(() => isWorking = v),
                  ),
                  TextInputModule(jobController, l.jobOrEducation),
                ]),
                SectionHeading(l.traits, [
                  SliderInputModule(
                    size,
                    onChanged: (int newValue) {
                      setState(() {
                        size = newValue;
                      });
                    },
                    min: 60,
                    max: 250,
                    showLabel: (v) => (v / 100).toStringAsFixed(2) + "m",
                    label: l.bodySize,
                  ),
                  TextInputModule(eyeColorController, l.eyeColor),
                  TextInputModule(hairColorController, l.hairColor),
                  SliderInputModule(
                    shoeSize,
                    min: 20,
                    max: 55,
                    showLabel: (v) => "$v",
                    label: l.shoeSize,
                    onChanged: (v) => setState(() => shoeSize = v),
                  ),
                  YesNoInputModule(
                    hasHats,
                    label: l.headgear,
                    onChanged: (v) => setState(() => hasHats = v),
                  ),
                ]),
                SectionHeading(l.surroundings, [
                  SliderInputModule(
                    children,
                    min: 0,
                    max: 6,
                    showLabel: (v) => v >= 6 ? "6+" : "$v",
                    onChanged: (v) => setState(() => children = v),
                    label: l.children,
                  ),
                  YesNoInputModule(
                    relationship,
                    label: l.inRelationship,
                    onChanged: (v) => setState(() => relationship = v),
                  ),
                  TextInputModule(favoriteAnimalController, l.favoriteAnimal),
                  TextInputModule(
                    petNameController,
                    l.lastPet,
                  ),
                  SliderInputModule(
                    moved,
                    min: 0,
                    max: 6,
                    showLabel: (v) => v >= 10 ? "10+" : "$v",
                    onChanged: (v) => setState(() => moved = v),
                    label: l.moved,
                  ),
                  YesNoInputModule(
                    hasApartment,
                    label: l.livesInApartment,
                    onChanged: (v) => setState(() => hasApartment = v),
                  ),
                  TextInputModule(
                    firstLoveController,
                    l.puppyLove,
                  ),
                  SliderInputModule(
                    friends,
                    min: 0,
                    max: 15,
                    showLabel: (v) => v >= 15 ? "15+" : "$v",
                    onChanged: (v) => setState(() => friends = v),
                    label: l.friends,
                  ),
                ]),
                SectionHeading(l.opinion, [
                  YesNoInputModule(
                    conservativeOpinion,
                    label: l.ratherConservative,
                    onChanged: (v) => setState(() => conservativeOpinion = v),
                  ),
                  TextInputModule(religionController, l.religion),
                  YesNoInputModule(
                    climateFriendly,
                    label: l.fightForClimate,
                    onChanged: (v) => setState(() => climateFriendly = v),
                  ),
                  TextInputModule(musicController, l.favoriteMusician),
                  YesNoInputModule(
                    vegetarian,
                    label: l.vegetarian,
                    onChanged: (v) => setState(() => vegetarian = v),
                  ),
                  YesNoInputModule(
                    glasEmpty,
                    label: l.glassHalfEmpty,
                    onChanged: (v) => setState(() => glasEmpty = v),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BlackButton(
                    l.generate,
                    onPressed: generate,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
