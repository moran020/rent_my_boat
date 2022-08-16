import 'dart:convert';
import 'package:flutter/services.dart';

Future<CardsList> getCardList() async {
  var jsonData = await rootBundle.loadString('assets/json/card.json');
  var data = json.decode(jsonData);
  return CardsList.fromJson(data);
}

class CardsList {
  List<CardItem>? cards;

  CardsList({this.cards});

  CardsList.fromJson(Map<String, dynamic> json) {
    if (json['cards'] != null) {
      cards = <CardItem>[];
      json['cards'].forEach((v) {
        cards!.add(CardItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cards != null) {
      data['cards'] = cards!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CardItem {
  int? id;
  String? name;
  String? description;
  String? price;
  List<String>? carouselImg;
  bool? isLabel;
  String? labelTitle;

  CardItem(
      {this.id,
        this.name,
        this.description,
        this.price,
        this.carouselImg,
        this.isLabel,
        this.labelTitle});

  CardItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    carouselImg = json['carouselImg'].cast<String>();
    isLabel = json['isLabel'];
    labelTitle = json['labelTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['carouselImg'] = carouselImg;
    data['isLabel'] = isLabel;
    data['labelTitle'] = labelTitle;
    return data;
  }
}