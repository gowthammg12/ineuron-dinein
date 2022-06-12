import 'package:dinein/metadata/assets.dart';
import 'package:dinein/metadata/text_style.dart';
import 'package:dinein/widgets/login_text_field.dart';
import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  UserDetailScreen({Key? key}) : super(key: key);
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

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
              Center(
                child: Text(
                  "DINE-IN",
                  style: AppTextStyles.formTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 13, left: 20),
                child: Text(
                  "Name",
                  style: AppTextStyles.formTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 25),
                child: LoginTextField(
                  hintText: "Please enter your billing Name",
                  controller: _nameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 13, right: 20, left: 20),
                child: Text(
                  "Address(Optional)",
                  style: AppTextStyles.formTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 40),
                child: LoginTextField(
                  hintText: "Address",
                  controller: _addressController,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 40)),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Proceed"),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
