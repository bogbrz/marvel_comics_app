import 'package:flutter/material.dart';
import 'package:mood_up_recruitment_task/app/core/app.dart';
import 'package:mood_up_recruitment_task/app/injectable/injection_conatiner.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}
