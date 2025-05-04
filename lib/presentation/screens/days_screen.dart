import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/days_bloc/days_bloc.dart';
import 'package:multiple_blocs_flutter/bloc/days_bloc/days_event.dart';
import 'package:multiple_blocs_flutter/bloc/days_bloc/days_state.dart';
import 'package:multiple_blocs_flutter/common/common_app_bar.dart';
import 'package:multiple_blocs_flutter/presentation/widgets/current_daymonth_card.dart';
import 'package:multiple_blocs_flutter/presentation/widgets/custom_icon_button.dart';

class DaysScreen extends StatelessWidget {
  const DaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(appBarTitle: "Days"),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            BlocBuilder<DaysBloc, DaysState>(
              builder: (context, state){
                return CurrentDaymonthCard(currentDayOrMonth: state.currentDay, );
              }),
              const SizedBox(height: 20,),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(onPressed: ()=> context.read<DaysBloc>().add(PreviousDay()), icon: Icons.remove_rounded),
                CustomIconButton(onPressed: ()=> context.read<DaysBloc>().add(NextDay()), icon: Icons.add_rounded),
              ],
            ),
            CustomIconButton(onPressed: ()=> context.read<DaysBloc>().add(ResetDay()), icon: Icons.refresh_rounded)
          ],
        ),
      ),
    );
  }
}

