import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/app_route.dart';
import 'package:flutter_complete_project/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRoute: AppRoute()));
}
