import 'package:flutter/material.dart';
import 'package:mood_up_recruitment_task/app/app.dart';
import 'package:mood_up_recruitment_task/app/injection_conatiner.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}
