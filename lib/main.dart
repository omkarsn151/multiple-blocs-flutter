import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/days_bloc/days_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/months_bloc/months_bloc.dart';
import 'package:multiple_blocs_flutter/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DaysBloc()),
        BlocProvider(create: (_) => MonthsBloc()),
      ],
      child: MaterialApp(
        title: 'Multiple BLoCs - Flutter',
        home: HomeScreen(),
      ),
    );
  }
}
