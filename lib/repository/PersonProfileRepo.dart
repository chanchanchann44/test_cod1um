import 'package:test_cod1um/models/PersonProfileModel.dart';
import 'package:flutter/services.dart';

class PersonProfileRepo {

  Future<PersonProfile> getPersonProfileList() async {
    final String response = await rootBundle.loadString('assets/profile.json');

    return personProfileFromJson(response);
  }
}
