
import 'package:flutter/material.dart';
import 'package:todo_bloc/component/text_style.dart';
  // ignore: must_be_immutable
  class CustomTextFieldWidget extends StatelessWidget {
  String? prefixText;
  String? labelText;
  String? hintText;
  Color? hintTextColor;
  Color? boxColor;
  Color borderColor;
  Widget? prefixMyIconn;
  BorderRadius? borderRadius;
  double height;
  double? iconHeightScale;
  double? iconWidthtScale;
  TextStyle? hintStyle;
    double? padding;
  double width;
  TextEditingController textEditingController;

  CustomTextFieldWidget(
      {super.key,
      this.prefixText,
     
     // this.onChanged,
      this.hintStyle,
      this.prefixMyIconn,
      this.padding,
      this.iconHeightScale,
      this.iconWidthtScale,
      this.boxColor,
    required this.borderColor,
       this.borderRadius,
      this.hintText,
      this.hintTextColor,
       required this.height,
       required this.width,
      this.labelText, 
    required this.textEditingController,
      });

  @override
   Widget build(BuildContext context) {
    return 
        SizedBox(
          width: width,
          child: TextFormField(
            controller: textEditingController,
            
              style: LightAppTextStyles.searchTextStyle,
              decoration: InputDecoration(
                fillColor: boxColor,
                filled: true,
              
                hintText: hintText,
               hintStyle: hintStyle,
             
                prefixIcon:iconHeightScale != null|| iconWidthtScale !=null? Transform.scale(
                  scaleX: iconWidthtScale,     
                   scaleY: iconHeightScale,
                  child: Padding(
                    padding:  EdgeInsets.only(left: padding??0,right: padding??0),
                    child: prefixMyIconn,
                  ),
                ):prefixMyIconn,

                labelText: labelText,
                labelStyle: LightAppTextStyles.searchTextStyle,
                prefixText: prefixText ,
                
                enabledBorder:  OutlineInputBorder(
                
                   borderRadius: borderRadius?? BorderRadius.zero,
                    borderSide:
                        BorderSide(color: borderColor)),
                focusedBorder:  OutlineInputBorder(
                  borderRadius: borderRadius?? BorderRadius.zero,
                    borderSide:
                        BorderSide(color: borderColor)),
                border:  OutlineInputBorder(
                  borderRadius: borderRadius?? BorderRadius.zero,
                    borderSide:
                        BorderSide(color: borderColor)),
              ),
           ),
        );
  
  }
      }