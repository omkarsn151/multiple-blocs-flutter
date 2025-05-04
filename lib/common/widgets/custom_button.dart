import 'package:flutter/material.dart';
import 'package:multiple_blocs_flutter/common/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final IconData? icon;
  final double borderRadius;
  final double elevation;
  final double padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final double? width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.borderColor,
    this.icon,
    this.borderRadius = 25.0,
    this.elevation = 1.0,
    this.padding = 8.0,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height ?? deviceHeight * 0.06, 
      width: width ?? deviceWidth * 0.8,   
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          backgroundColor: backgroundColor ?? Colors.black87,
          foregroundColor: textColor ?? Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: borderColor != null
                ? BorderSide(color: borderColor!)
                : BorderSide.none,
          ),
          padding: EdgeInsets.all(padding),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 20),
              const SizedBox(width: 8),
            ],
            CustomText(
              text: text,
              color: Colors.white,
              fontSize: fontSize ?? 18,
              fontWeight: fontWeight ?? FontWeight.bold,
              )
          ],
        ),
      ),
    );
  }
}