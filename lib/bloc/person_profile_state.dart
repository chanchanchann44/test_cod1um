part of 'person_profile_bloc.dart';

enum PersonProfileStatus {
  initialized,
  GetPersonProfileList,
  GetPersonProfileDetail,
}

class PersonProfileState {
  const PersonProfileState._({
    @required this.status,
    this.personProfileList,
    this.personProfileDetail,
    this.index
  });

  const PersonProfileState.initialized()
      : this._(status: PersonProfileStatus.initialized);

  const PersonProfileState.personProfileList({PersonProfile personProfileList}) : this._(status: PersonProfileStatus.GetPersonProfileList,personProfileList: personProfileList);
  const PersonProfileState.personProfileDetail({Profile personProfileDetail,int index}) : this._(status: PersonProfileStatus.GetPersonProfileDetail,personProfileDetail: personProfileDetail,index:index);


  final PersonProfileStatus status;
  final PersonProfile personProfileList;
  final Profile personProfileDetail;
  final int index;

}
