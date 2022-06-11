import 'package:dinein/bloc/login/bloc.dart';
import 'package:dinein/bloc/login/events.dart';
import 'package:dinein/bloc/login/state.dart';
import 'package:dinein/metadata/assets.dart';
import 'package:dinein/metadata/meta_text.dart';
import 'package:dinein/metadata/text_style.dart';
import 'package:dinein/utils/validation.dart';
import 'package:dinein/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isValidMobileNumber;
  String? mobileNumber;
  final TextEditingController _otpController = TextEditingController();

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
                  MetaText.mobileNumber,
                  style: AppTextStyles.formTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 15),
                child: LoginTextField(
                  hintText: MetaText.pleaseEnterMobileNumber,
                  onChanged: (String val) {
                    setState(() {
                      isValidMobileNumber = Validation().validateMobileNumber(val);
                      mobileNumber = val;
                    });
                  },
                ),
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoginInitialState) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20,left: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          child: Text("Generate OTP",style: TextStyle(color: Colors.black54),),
                          onPressed: (isValidMobileNumber ?? false)
                              ? () async {
                                  context.read<LoginBloc>().add(GenerateOtp(mobileNumber ?? ""));
                                }
                              : null,
                        ),
                      ),
                    );
                  }
                  return Container();
                },
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is OtpState) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Otp is sent to your mobile"),
                          LoginTextField(
                            hintText: "Please enter the OTP",
                            controller: _otpController,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
