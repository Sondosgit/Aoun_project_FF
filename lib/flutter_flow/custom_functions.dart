import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<int> initPuzzle() {
  List<int> puzzlenumbers = [1, 2, 3, 4, 5, 6, 7, 8];
  return puzzlenumbers;
}

int getIndex(
  List<int> puzzleList,
  int value,
) {
  return puzzleList.indexOf(value);
}
