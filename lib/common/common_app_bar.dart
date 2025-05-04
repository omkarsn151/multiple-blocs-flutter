import 'package:flutter/material.dart';
import 'package:multiple_blocs_flutter/common/widgets/custom_text.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String appBarTitle;

  const CommonAppBar({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(text: appBarTitle, fontSize: 20, fontWeight: FontWeight.w600,),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}