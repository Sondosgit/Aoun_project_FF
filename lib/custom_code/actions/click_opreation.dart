// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> clickOpreation(
  List<int> list,
  int index,
  int moves,
) async {
  const int _puzzleSize = 3;
  int emptyTilePosIndex = list.indexOf(0);
  int emptyTilePosRow = emptyTilePosIndex ~/ _puzzleSize;
  int emptyTilePosCol = emptyTilePosIndex % _puzzleSize;

  int currentTileRow = index ~/ _puzzleSize;
  int currentTileCol = index % _puzzleSize;

  if ((currentTileRow - 1 == emptyTilePosRow) &&
      (currentTileCol == emptyTilePosCol)) {
    list[emptyTilePosIndex] = list[index];
    list[index] = 0;
    moves++;
  } else if ((currentTileRow + 1 == emptyTilePosRow) &&
      (currentTileCol == emptyTilePosCol)) {
    list[emptyTilePosIndex] = list[index];
    list[index] = 0;
    moves++;
  } else if ((currentTileRow == emptyTilePosRow) &&
      (currentTileCol + 1 == emptyTilePosCol)) {
    list[emptyTilePosIndex] = list[index];
    list[index] = 0;
    moves++;
  } else if ((currentTileRow == emptyTilePosRow) &&
      (currentTileCol - 1 == emptyTilePosCol)) {
    list[emptyTilePosIndex] = list[index];
    list[index] = 0;
    moves++;
  } else {
    if (currentTileCol == emptyTilePosCol) {
      int low;
      int high;

      if (emptyTilePosRow < currentTileRow) {
        low = emptyTilePosRow;
        high = currentTileRow;

        int i = low;
        while (i < high) {
          list[(i * _puzzleSize) + emptyTilePosCol] =
              list[(((i + 1) * _puzzleSize) + emptyTilePosCol)];

          i += 1;
        }

        list[(high * _puzzleSize) + emptyTilePosCol] = 0;
        moves++;
      } else {
        low = emptyTilePosRow;
        high = currentTileRow;

        int i = low;
        while (i > high) {
          list[(i * _puzzleSize) + emptyTilePosCol] =
              list[(((i - 1) * _puzzleSize) + emptyTilePosCol)];

          i -= 1;
        }

        list[(high * _puzzleSize) + emptyTilePosCol] = 0;
        moves++;
      }
    }

    if (currentTileRow == emptyTilePosRow) {
      int low;
      int high;

      if (emptyTilePosCol < currentTileCol) {
        low = emptyTilePosCol;
        high = currentTileCol;

        int i = low;
        while (i < high) {
          list[(emptyTilePosRow * _puzzleSize) + i] =
              list[(emptyTilePosRow * _puzzleSize) + (i + 1)];

          i += 1;
        }

        list[high + (emptyTilePosRow * _puzzleSize)] = 0;
        moves++;
      } else {
        low = emptyTilePosCol;
        high = currentTileCol;

        int i = low;
        while (i > high) {
          list[(i + (emptyTilePosRow * _puzzleSize))] =
              list[(i - 1) + (emptyTilePosRow * _puzzleSize)];

          i -= 1;
        }

        list[high + (emptyTilePosRow * _puzzleSize)] = 0;
        moves++;
      }
    }
  }

  Map<String, dynamic> myPuzzle = {
    'list': list,
    'moves': moves,
  };
  return myPuzzle;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
