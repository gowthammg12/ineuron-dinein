import 'package:dinein/bloc/login/events.dart';
import 'package:dinein/bloc/login/state.dart';
import 'package:dinein/repository/login.dart';
import 'package:dinein/utils/navigation.dart';
import 'package:dinein/utils/routes.dart';
import 'package:dinein/utils/validation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;
  LoginBloc(this.loginRepository) : super(LoginInitialState()) {
    on<LoginEvent>((event, emit) async {
      if (event is GenerateOtp) {
        final result = await loginRepository.generateOtp(event.mobileNumber);
        if (result.isSuccess) {
          emit(OtpState(isOtpSent: true, otpResult: result.data));
        }
      }
    });
  }
}
