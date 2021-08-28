import 'package:flutter/material.dart';
import 'package:test_cod1um/No7EditProfilePage.dart';
import 'package:test_cod1um/No7PersonPage.dart';
import 'bloc/person_profile_bloc.dart';
import 'configs/AppTheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class No7 extends StatefulWidget {
  const No7({Key key}) : super(key: key);

  @override
  _No7State createState() => _No7State();
}

class _No7State extends State<No7> {

  @override
  void initState() {
    context.read<PersonProfileBloc>().add(GetPersonProfileList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonProfileBloc, PersonProfileState>(
      builder: (context, state) {
        switch (state.status) {
          case PersonProfileStatus.GetPersonProfileList:
            return No7PersonPage(personProfileList: state.personProfileList,);
          case PersonProfileStatus.GetPersonProfileDetail:
            return No7EditProfilePage(personProfileDetail: state.personProfileDetail,index: state.index,);
          default:
            return Scaffold(
                body: Container()
            );
        }
      },
    );
  }
}
