import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:test_cod1um/models/PersonProfileModel.dart';
import 'package:test_cod1um/repository/PersonProfileRepo.dart';

part 'person_profile_event.dart';

part 'person_profile_state.dart';

class PersonProfileBloc extends Bloc<PersonProfileEvent, PersonProfileState> {
  PersonProfileBloc() : super(const PersonProfileState.initialized());
  /// for save new information (Because no API to post new data)
  PersonProfile personProfileListBloc;

  @override
  Stream<PersonProfileState> mapEventToState(
    PersonProfileEvent event,
  ) async* {
    if (event is GetPersonProfileList) {
      /// Mock get data from API
      PersonProfile personProfileList = await PersonProfileRepo().getPersonProfileList();
      /// for save new information (Because no API to post new data)
      personProfileListBloc = personProfileList;
      yield PersonProfileState.personProfileList(personProfileList: personProfileListBloc);
    }
    if(event is GetPersonProfileDetail){
      yield PersonProfileState.personProfileDetail(personProfileDetail: event.personProfileDetail,index:event.index);
    }
    if(event is SavePersonProfile){
      personProfileListBloc.profile[event.index] = event.personProfileDetail;
      yield PersonProfileState.personProfileList(personProfileList: personProfileListBloc);
    }
  }
}
