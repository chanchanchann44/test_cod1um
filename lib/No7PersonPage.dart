import 'package:flutter/material.dart';
import 'package:test_cod1um/configs/FontTheme.dart';
import 'bloc/person_profile_bloc.dart';
import 'configs/AppTheme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'models/PersonProfileModel.dart';

class No7PersonPage extends StatefulWidget {
  const No7PersonPage({Key key, @required this.personProfileList})
      : super(key: key);
  final PersonProfile personProfileList;

  @override
  _No7State createState() => _No7State();
}

class _No7State extends State<No7PersonPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.white,
        appBar: AppBar(
          elevation: 5.0,
          backgroundColor: AppTheme.white,
          title: Text(
            "Person",
            style: TextStyle(color: AppTheme.fontBlue),
          ),

          /// hidden leading back button
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppTheme.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView.builder(
            itemCount: widget.personProfileList.profile.length,
            padding: EdgeInsets.only(top: 7),
            itemBuilder: (context, index) {
              return ProfileCard(
                  personProfileDetail: widget.personProfileList.profile[index],
                  index: index);
            }));
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key key, this.personProfileDetail, this.index})
      : super(key: key);
  final Profile personProfileDetail;
  final int index;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: maxWidth * 0.05, vertical: 7),
          child: InkWell(
            onTap: () {
              context
                  .read<PersonProfileBloc>()
                  .add(GetPersonProfileDetail(personProfileDetail, index));
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppTheme.shadow,
                    blurRadius: 10,
                    offset: Offset(5, 5),
                  )
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: maxWidth,
                  padding: EdgeInsets.all(maxWidth * 0.04),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        child: Text(
                          '${personProfileDetail.name[0].toUpperCase()}',
                        ),
                        backgroundColor: AppTheme.fontBlue,
                      ),
                      SizedBox(
                        width: maxWidth * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            personProfileDetail.name,
                            style: FontTheme.font16,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            personProfileDetail.email,
                            style: FontTheme.font16,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              width: maxWidth * 0.55,
                              child: Text(
                                personProfileDetail.address,
                                style: FontTheme.font16
                                    .copyWith(color: AppTheme.fontGrey),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
