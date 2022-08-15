import 'package:flutter/material.dart';

class Card {
  int id;
  String? name;
  String? description;
  String? price;
  String? img; // list? //слайдер
  bool? isLabel;
  String? labelTitle;
  Color? labelColor;

  Card({
    required this.id,
    required this.name,
    this.description,
    required this.price,
    this.img,
    this.isLabel,
    this.labelTitle,
    this.labelColor,
  });

// сделать подгрузку из JSON

}