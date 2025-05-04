import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/months_bloc/months_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/months_bloc/months_event.dart';
import 'package:multiple_blocs_flutter/bloc/months_bloc/months_state.dart';
import 'package:multiple_blocs_flutter/common/common_app_bar.dart';
import 'package:multiple_blocs_flutter/presentation/widgets/current_daymonth_card.dart';
import 'package:multiple_blocs_flutter/presentation/widgets/custom_icon_button.dart';

class MonthsScreen extends StatelessWidget {
  const MonthsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(appBarTitle: "Months"),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            BlocBuilder<MonthsBloc, MonthsState>(
              builder: (context, state){
                return CurrentDaymonthCard(currentDayOrMonth:  state.currentMonth);
              }),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 20,
                children: [
                  CustomIconButton(onPressed: () => context.read<MonthsBloc>().add(PreviousMonth()), icon: Icons.remove_rounded),
                  CustomIconButton(onPressed: () => context.read<MonthsBloc>().add(NextMonth()), icon: Icons.add_rounded),
                ],
              ),
              CustomIconButton(onPressed: ()=> context.read<MonthsBloc>().add(ResetMonth()), icon: Icons.refresh_rounded)
          ],
        ),
      ),
    );
  }
}