// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math' as math;
import 'package:flutter/foundation.dart';

bool isSolved(List<int> board) {
  List<int> solvedList = [1, 2, 3, 4, 5, 6, 7, 8, 0];
  List<int> unsolvedList = [1, 2, 3, 4, 6, 5, 7, 8, 0];
  bool t = listEquals(solvedList, board) | listEquals(unsolvedList, board);

  return t;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
