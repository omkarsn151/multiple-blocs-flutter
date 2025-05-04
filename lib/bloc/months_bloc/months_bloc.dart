import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/months_bloc/months_event.dart';
import 'package:multiple_blocs_flutter/bloc/months_bloc/months_state.dart';

class MonthsBloc extends Bloc<MonthsEvent, MonthsState> {
  int monthCounterIndex = 0;
  static const months = ['January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'];


  MonthsBloc() : super(MonthsState(months[0])) {

    on<NextMonth>((event, emit) {
      monthCounterIndex = monthCounterIndex < months.length - 1 ? monthCounterIndex + 1 : 0;
      emit(MonthsState(months[monthCounterIndex]));
    });

    on<PreviousMonth>((event, emit) {
      monthCounterIndex = monthCounterIndex > 1 ? monthCounterIndex - 1 : 0;
      emit(MonthsState(months[monthCounterIndex]));
    },);

    on<ResetMonth>((event, emit) {
      emit(MonthsState(months[0]));
    },);
  }
}