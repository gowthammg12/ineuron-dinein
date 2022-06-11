import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginInitialState extends LoginState {}

class OtpState extends LoginState {
  final bool otpSending;
  final bool isOtpSent;
  final bool isResendOtpSent;
  final ConfirmationResult? otpResult;

  const OtpState({
    this.isOtpSent = false,
    this.isResendOtpSent = false,
    this.otpResult,
    this.otpSending = false,
  });

  @override
  List<Object?> get props => [isOtpSent, isResendOtpSent];
}

class LoginSuccessfulState extends LoginState {}

class LoginErrorState extends LoginState {}
