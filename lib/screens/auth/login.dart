import 'package:dinein/metadata/assets.dart';
import 'package:dinein/metadata/meta_text.dart';
import 'package:dinein/metadata/text_style.dart';
import 'package:dinein/repository/login.dart';
import 'package:dinein/utils/validation.dart';
import 'package:dinein/widgets/login_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  Assets.logo,
                  height: 120,
                  width: 120,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 13, left: 20),
                child: Text(
                  MetaText.mobileNumber,
                  style: AppTextStyles.formTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: LoginTextField(
                  controller: _mobileNumberController,
                  hintText: MetaText.pleaseEnterMobileNumber,
                  onChanged: (val) {},
                ),
              ),
              OutlinedButton(
                child: Text("LOGIN"),
                onPressed: () async {
                  bool isValidMobileNumber = Validation().validateMobileNumber(_mobileNumberController.text);
                  await LoginRepository().authenticateWithMobileNumber(_mobileNumberController.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
