
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_bloc/resource/colors.dart';

class LightAppTextStyles {
LightAppTextStyles._();
static TextStyle manageYourTasksTextStyle = GoogleFonts.jost(
  fontSize: 24,
  fontWeight: FontWeight.normal,
);

static TextStyle manageNotifierTextStyle = GoogleFonts.roboto(
  fontSize: 12,
  color: haSolidColors.manageNotifierColor,
  fontWeight: FontWeight.normal,
);
static TextStyle getStartedTextStyle = GoogleFonts.roboto(
  fontSize: 16,
  color: haSolidColors.getStartedTextColor,
  fontWeight: FontWeight.normal,
);

static TextStyle mTodoLogoTextStyle = GoogleFonts.jost(
  fontSize: 20,
  color: haSolidColors.getStartedTextColor,
  fontWeight: FontWeight.bold,
);

static TextStyle searchTextStyle = GoogleFonts.jost(
  fontSize: 16,
  color: haSolidColors.searchTextColor,
);
  
}