import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {}

class GenerateOtp extends LoginEvent {
  final String mobileNumber;

  GenerateOtp(this.mobileNumber);
  @override
  List<Object?> get props => [mobileNumber];
}
