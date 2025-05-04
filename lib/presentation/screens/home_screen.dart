import 'package:flutter/material.dart';
import 'package:multiple_blocs_flutter/common/common_app_bar.dart';
import 'package:multiple_blocs_flutter/presentation/screens/months_screen.dart';
import 'package:multiple_blocs_flutter/presentation/screens/days_screen.dart';
import 'package:multiple_blocs_flutter/common/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(appBarTitle: "Multiple BLoCs - Flutter"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => DaysScreen())), text: "Days Screen"),
            const SizedBox(height: 20,),
            CustomButton(
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) => MonthsScreen())), text: "Months Screen"),
          ],
        ),
      ),
    );
  }
}

