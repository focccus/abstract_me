import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AbstractLocalizations {
  AbstractLocalizations(this.locale);

  final Locale locale;

  static AbstractLocalizations of(BuildContext context) {
    return Localizations.of<AbstractLocalizations>(
        context, AbstractLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'yes': 'yes',
      'no': 'no',
      'title': 'abstract_me',
      'privacy':
          """This app requires you to give personal information to calculate an abstract portrait.
This data is kept secret entirely and is not exanged with anyone. Everything inputted here stays on the device.""",
      'start': 'Start',
      'generalInformation': 'General Information',
      'firstName': 'first name',
      'secondName': 'second name',
      'lastName': 'last name',
      'female': 'female',
      'dateofBirth': 'date of birth',
      'placeofBirth': 'hometown',
      'isWorking': 'I go to work',
      'jobOrEducation': 'Job or educational level',
      'traits': 'Traits',
      'bodySize': 'body size',
      'eyeColor': 'eye color',
      'hairColor': 'hair color',
      'shoeSize': 'shoe size',
      'headgear': 'I wear headgear',
      'surroundings': 'Surroundings',
      'children': 'children',
      'inRelationship': 'in relationship',
      'favoriteAnimal': 'favorite animal',
      'lastPet': 'name of your last pet',
      'moved': 'moved house',
      'livesInApartment': 'I live in an apartment',
      'puppyLove': 'name of your puppy love',
      'friends': 'friends',
      'opinion': 'Opinion',
      'ratherConservative': "I'm rather conservative",
      'religion': 'religion',
      'fightForClimate': 'I fight for the climate',
      'favoriteMusician': 'favorite Musician',
      'vegetarian': 'I am a vegetarian',
      'glassHalfEmpty': 'glass is half-empty',
      'generate': 'Generate',
      'save': 'Save',
      'savedImage': 'Saved image in %s.',
      'shareText':
          'Hey, did you try abstract_me already? This app generates a cool abstract portrait of your self.'
    },
    'de': {
      'yes': 'Ja',
      'no': 'Nein',
      'title': 'abstract_me',
      'privacy':
          """Diese App verlangt persönliche Informationen, um ein abstraktes Portrait zu berechnen.
Diese Daten bleiben komplett privat und werden nicht mit Dritten geteilt. Alles, was eingegeben wird, bleibt auf dem Gerät.""",
      'start': 'Starten',
      'generalInformation': 'Generelle Informationen',
      'firstName': 'Vorname',
      'secondName': '2. Vorname',
      'lastName': 'Nachname',
      'female': 'Weiblich',
      'dateofBirth': 'Geburtsdatum',
      'placeofBirth': 'Geburtsort',
      'isWorking': 'Ich gehe zur Arbeit',
      'jobOrEducation': 'Job oder Bildungsstadium',
      'traits': 'Eigenschaften',
      'bodySize': 'Körpergröße',
      'eyeColor': 'Augenfarbe',
      'hairColor': 'Haarfarbe',
      'shoeSize': 'Schuhgröße',
      'headgear': 'Ich trage Kopfbedeckungen',
      'surroundings': 'Umfeld',
      'children': 'Kinder',
      'inRelationship': 'In einer Beziehung',
      'favoriteAnimal': 'Lieblingstier',
      'lastPet': 'Name des letzten Haustieres',
      'moved': 'Umgezogen',
      'livesInApartment': 'Ich lebe in einer Wohnung',
      'puppyLove': 'Name der ersten Liebe',
      'friends': 'Freunde',
      'opinion': 'Meinung',
      'ratherConservative': 'Ich bin eher konservativ eingestellt',
      'religion': 'Religion',
      'fightForClimate': 'Ich kämpfe für das Klima',
      'favoriteMusician': 'Lieblingsmusiker',
      'vegetarian': 'Ich lebe vegetarisch',
      'glassHalfEmpty': 'Glas ist halbleer',
      'generate': 'Generieren',
      'save': 'Abspeichern',
      'savedImage': 'Bild unter %s gespeichert.',
      'shareText':
          'Hey, hast du schon abstract_me ausprobiert? Die App generiert ein einzigartiges abstraktes Portrait für dich.',
    },
  };

  String get yes => _localizedValues[locale.languageCode]['yes'];
  String get no => _localizedValues[locale.languageCode]['no'];
  String get title => _localizedValues[locale.languageCode]['title'];
  String get privacy => _localizedValues[locale.languageCode]['privacy'];
  String get start => _localizedValues[locale.languageCode]['start'];
  String get generalInformation =>
      _localizedValues[locale.languageCode]['generalInformation'];
  String get firstName => _localizedValues[locale.languageCode]['firstName'];
  String get secondName => _localizedValues[locale.languageCode]['secondName'];
  String get lastName => _localizedValues[locale.languageCode]['lastName'];
  String get female => _localizedValues[locale.languageCode]['female'];
  String get dateofBirth =>
      _localizedValues[locale.languageCode]['dateofBirth'];
  String get placeofBirth =>
      _localizedValues[locale.languageCode]['placeofBirth'];
  String get isWorking => _localizedValues[locale.languageCode]['isWorking'];
  String get jobOrEducation =>
      _localizedValues[locale.languageCode]['jobOrEducation'];
  String get traits => _localizedValues[locale.languageCode]['traits'];
  String get bodySize => _localizedValues[locale.languageCode]['bodySize'];
  String get eyeColor => _localizedValues[locale.languageCode]['eyeColor'];
  String get hairColor => _localizedValues[locale.languageCode]['hairColor'];
  String get shoeSize => _localizedValues[locale.languageCode]['shoeSize'];
  String get headgear => _localizedValues[locale.languageCode]['headgear'];
  String get surroundings =>
      _localizedValues[locale.languageCode]['surroundings'];
  String get children => _localizedValues[locale.languageCode]['children'];
  String get inRelationship =>
      _localizedValues[locale.languageCode]['inRelationship'];
  String get favoriteAnimal =>
      _localizedValues[locale.languageCode]['favoriteAnimal'];
  String get lastPet => _localizedValues[locale.languageCode]['lastPet'];
  String get moved => _localizedValues[locale.languageCode]['moved'];
  String get livesInApartment =>
      _localizedValues[locale.languageCode]['livesInApartment'];
  String get puppyLove => _localizedValues[locale.languageCode]['puppyLove'];
  String get friends => _localizedValues[locale.languageCode]['friends'];
  String get opinion => _localizedValues[locale.languageCode]['opinion'];
  String get ratherConservative =>
      _localizedValues[locale.languageCode]['ratherConservative'];
  String get religion => _localizedValues[locale.languageCode]['religion'];
  String get fightForClimate =>
      _localizedValues[locale.languageCode]['fightForClimate'];
  String get favoriteMusician =>
      _localizedValues[locale.languageCode]['favoriteMusician'];
  String get vegetarian => _localizedValues[locale.languageCode]['vegetarian'];
  String get glassHalfEmpty =>
      _localizedValues[locale.languageCode]['glassHalfEmpty'];
  String get generate => _localizedValues[locale.languageCode]['generate'];
  String get save => _localizedValues[locale.languageCode]['save'];
  String get shareText => _localizedValues[locale.languageCode]['shareText'];
  String savedImage(String p) {
    return _localizedValues[locale.languageCode]['savedImage']
        .replaceFirst("%s", p);
  }
}

class AbstractLocalizationsDelegate
    extends LocalizationsDelegate<AbstractLocalizations> {
  const AbstractLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);

  @override
  Future<AbstractLocalizations> load(Locale locale) {
    return SynchronousFuture<AbstractLocalizations>(
        AbstractLocalizations(locale));
  }

  @override
  bool shouldReload(AbstractLocalizationsDelegate old) => false;
}
