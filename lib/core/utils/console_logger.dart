import 'package:flutter/material.dart';

void printWarning(Object? text) {
  debugPrint('\x1B[33m$text\x1B[0m');
}

void printError(Object? text) {
  debugPrint('\x1B[31m$text\x1B[0m');
}

void printInfo(Object? text) {
  debugPrint('\x1B[34m$text\x1B[0m');
}

void printSuccess(Object? text) {
  debugPrint('\x1B[32m$text\x1B[0m');
}
