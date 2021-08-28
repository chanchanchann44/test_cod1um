part of 'person_profile_bloc.dart';

abstract class PersonProfileEvent extends Equatable {
  const PersonProfileEvent();

  @override
  List<Object> get props => [];
}

class GetPersonProfileList extends PersonProfileEvent {}

class GetPersonProfileDetail extends PersonProfileEvent {
  final Profile personProfileDetail;
  final int index;

  GetPersonProfileDetail(this.personProfileDetail, this.index);

  @override
  List<Object> get props => [personProfileDetail,index];
}

class SavePersonProfile extends PersonProfileEvent {
  final Profile personProfileDetail;
  final int index;

  SavePersonProfile(this.personProfileDetail, this.index);

  @override
  List<Object> get props => [personProfileDetail,index];
}
