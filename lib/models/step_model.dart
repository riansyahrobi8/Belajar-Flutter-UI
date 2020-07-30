import 'package:flutter/material.dart';

class StepModel {
  final int id;
  final String desc;

  StepModel({@required this.id, @required this.desc});

  static List<StepModel> getList = [
    StepModel(
        id: 1,
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
    StepModel(
        id: 2,
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
    StepModel(
        id: 3,
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.")
  ];
}
