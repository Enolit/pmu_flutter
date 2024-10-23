import 'package:flutter/material.dart';

class CardData {
  final String text;
  final String descriptionText;
  final String? imageUrl;

  CardData(
      this.text, {
        required this.descriptionText,
        this.imageUrl,
      });
}