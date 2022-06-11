import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<int> {
  Timer? timer;
  TimerCubit() : super(0);

  void startTimer(int duration) {
    int seconds = duration;
    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (seconds == 0) {
        timer.cancel();
      } else {
        seconds -= 1;
        emit(seconds);
      }
    });
  }
}
