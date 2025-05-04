import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/days_bloc/days_event.dart';
import 'package:multiple_blocs_flutter/bloc/days_bloc/days_state.dart';

class DaysBloc extends Bloc<DaysEvent, DaysState> {
  int dayCounterIndex = 0;
  static const days = [
                        "Sunday",
                        "Monday",
                        "Tuesday",
                        "Wednesday",
                        "Thursday",
                        "Friday",
                        "Saturday",
                      ];

  DaysBloc() : super(DaysState(days[0])) {
    on<NextDay>((event, emit) {

      dayCounterIndex = dayCounterIndex < days.length - 1 ? dayCounterIndex + 1 : 0;

      emit(DaysState(days[dayCounterIndex]));
    });

    on<PreviousDay>((event, emit) {
      
      dayCounterIndex = dayCounterIndex > 1 ? dayCounterIndex - 1 : 0;

      emit(DaysState(days[dayCounterIndex]));
    },);

    on<ResetDay>((event, emit) {
      dayCounterIndex = 0;
      emit(DaysState(days[dayCounterIndex]));
    },);
  }
}