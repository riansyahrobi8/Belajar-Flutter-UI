import 'package:flutter/material.dart';

class StepModel {
  final int id;
  final String title;
  final String desc;

  StepModel({@required this.id, @required this.title, @required this.desc});

  static List<StepModel> getList = [
    StepModel(
        id: 1,
        title: "Daftar",
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
    StepModel(
        id: 2,
        title: "Makan",
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
    StepModel(
        id: 3,
        title: "Bayar",
        desc:
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.")
  ];
}
