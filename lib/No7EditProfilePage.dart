import 'package:flutter/material.dart';

import 'bloc/person_profile_bloc.dart';
import 'configs/AppTheme.dart';
import 'configs/BoxTheme.dart';
import 'configs/FontTheme.dart';
import 'models/PersonProfileModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class No7EditProfilePage extends StatefulWidget {
  const No7EditProfilePage({Key key, this.personProfileDetail, this.index})
      : super(key: key);
  final Profile personProfileDetail;
  final int index;

  @override
  _No7EditProfilePageState createState() => _No7EditProfilePageState();
}

class _No7EditProfilePageState extends State<No7EditProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _birthDateController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    _nameController.text = widget.personProfileDetail.name;
    _emailController.text = widget.personProfileDetail.email;
    _birthDateController.text = widget.personProfileDetail.birthDate;
    _addressController.text = widget.personProfileDetail.address;
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
          "Edit Profile",
          style: FontTheme.font20,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppTheme.fontBlue,
          ),
          onPressed: () {
            Profile newProfile = Profile(
                name: widget.personProfileDetail.name,
                email: widget.personProfileDetail.email,
                birthDate: widget.personProfileDetail.birthDate,
                address: widget.personProfileDetail.address);
            context
                .read<PersonProfileBloc>()
                .add(SavePersonProfile(newProfile,widget.index));
          },
        ),
        actions: [
          InkWell(
            onTap: () {
              Profile newProfile = Profile(
                  name: _nameController.text,
                  email: _emailController.text,
                  birthDate: _birthDateController.text,
                  address: _addressController.text);
              context
                  .read<PersonProfileBloc>()
                  .add(SavePersonProfile(newProfile,widget.index));
            },
            child: Container(
              width: 80,
              child: Center(
                  child: Text(
                "Save",
                style: FontTheme.font16,
              )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  child: Text(
                    "${widget.personProfileDetail.name[0].toUpperCase()}",
                    style: TextStyle(fontSize: 38),
                  ),
                  radius: 50,
                  backgroundColor: AppTheme.fontBlue,
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                child: Text(
                  "Name",
                  style: FontTheme.font18,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                controller: _nameController,
                style: TextStyle(color: AppTheme.fontBlue),
                decoration: BoxTheme.textFieldEditProfile.copyWith(
                  hintText: "Name",
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                child: Text(
                  "E-mail",
                  style: FontTheme.font18,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                controller: _emailController,
                style: TextStyle(color: AppTheme.fontBlue),
                decoration: BoxTheme.textFieldEditProfile.copyWith(
                  hintText: "E-mail",
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                child: Text(
                  "Birth Date",
                  style: FontTheme.font18,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                controller: _birthDateController,
                style: TextStyle(color: AppTheme.fontBlue),
                decoration: BoxTheme.textFieldEditProfile.copyWith(
                  hintText: "Date Birth",
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                child: Text(
                  "Address",
                  style: FontTheme.font18,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              TextFormField(
                controller: _addressController,
                style: TextStyle(color: AppTheme.fontBlue),
                maxLines: 4,
                decoration: BoxTheme.textFieldEditProfile.copyWith(
                  hintText: "Address",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
