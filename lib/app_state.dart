import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _puzzleNum = [];
  List<int> get puzzleNum => _puzzleNum;
  set puzzleNum(List<int> value) {
    _puzzleNum = value;
  }

  void addToPuzzleNum(int value) {
    _puzzleNum.add(value);
  }

  void removeFromPuzzleNum(int value) {
    _puzzleNum.remove(value);
  }

  void removeAtIndexFromPuzzleNum(int index) {
    _puzzleNum.removeAt(index);
  }

  void updatePuzzleNumAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _puzzleNum[index] = updateFn(_puzzleNum[index]);
  }

  void insertAtIndexInPuzzleNum(int index, int value) {
    _puzzleNum.insert(index, value);
  }

  int _moves = 0;
  int get moves => _moves;
  set moves(int value) {
    _moves = value;
  }

  bool _isStarted = false;
  bool get isStarted => _isStarted;
  set isStarted(bool value) {
    _isStarted = value;
  }

  String _TimeResult = '';
  String get TimeResult => _TimeResult;
  set TimeResult(String value) {
    _TimeResult = value;
  }

  bool _active = false;
  bool get active => _active;
  set active(bool value) {
    _active = value;
  }

  bool _ac1 = false;
  bool get ac1 => _ac1;
  set ac1(bool value) {
    _ac1 = value;
  }

  bool _ac2 = false;
  bool get ac2 => _ac2;
  set ac2(bool value) {
    _ac2 = value;
  }

  bool _ac3 = false;
  bool get ac3 => _ac3;
  set ac3(bool value) {
    _ac3 = value;
  }

  bool _ac4 = false;
  bool get ac4 => _ac4;
  set ac4(bool value) {
    _ac4 = value;
  }

  bool _ac5 = false;
  bool get ac5 => _ac5;
  set ac5(bool value) {
    _ac5 = value;
  }

  List<DocumentReference> _selected = [];
  List<DocumentReference> get selected => _selected;
  set selected(List<DocumentReference> value) {
    _selected = value;
  }

  void addToSelected(DocumentReference value) {
    _selected.add(value);
  }

  void removeFromSelected(DocumentReference value) {
    _selected.remove(value);
  }

  void removeAtIndexFromSelected(int index) {
    _selected.removeAt(index);
  }

  void updateSelectedAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _selected[index] = updateFn(_selected[index]);
  }

  void insertAtIndexInSelected(int index, DocumentReference value) {
    _selected.insert(index, value);
  }

  bool _selectMode = false;
  bool get selectMode => _selectMode;
  set selectMode(bool value) {
    _selectMode = value;
  }

  String _random = '';
  String get random => _random;
  set random(String value) {
    _random = value;
  }
}
