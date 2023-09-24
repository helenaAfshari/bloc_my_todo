
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButtonWidget extends StatelessWidget {
  double? height;
  double? width;
  String? text;
  BorderRadius? borderRadius;
  Border? border;
  SvgPicture? myIcon;
  Color? color;
  Color? textColor;
  TextStyle? textStyle;
  SvgPicture? image;
  double? fontSize;
  final Function() onPress;
  double? padding;

  CustomButtonWidget(
      {super.key,
      this.height,
      this.width,
      this.image,
      this.textStyle,
      this.borderRadius,
      this.padding,
      this.border,
      this.textColor,
      this.fontSize,
      this.color,
      this.text,
      this.myIcon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius,
            border: border,
          ),
          child: Center(
            child: text != null
                ? Padding(
                    padding: EdgeInsets.all(padding??0),
                    child: Text(
                      text!,
                      style: GoogleFonts.roboto(
                        color: textColor,
                         fontSize: fontSize,
                        textStyle: textStyle,
                      ),
                    ),
                  )
                : myIcon,
          )),
    );
  }
}