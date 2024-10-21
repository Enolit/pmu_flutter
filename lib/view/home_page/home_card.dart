import 'package:flutter/material.dart';
import 'package:project/domain/card.dart';

part 'home_card_image.dart';
part 'home_card_text.dart';

class HomeCard extends StatelessWidget {
  final String text;
  final String descriptionText;
  final IconData icon;
  final String? imageUrl;

  const HomeCard(
    this.text, {
    this.icon = Icons.ac_unit_outlined,
    required this.descriptionText,
    this.imageUrl,
    super.key,
  });

  factory HomeCard.fromData(
    CardData data) =>
      HomeCard(
        data.text,
        descriptionText: data.descriptionText,
        icon: data.icon,
        imageUrl: data.imageUrl,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(top: 8, bottom: 8),
        constraints: const BoxConstraints(minHeight: 280),
        decoration: BoxDecoration(
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius: 4,
              offset: const Offset(0, 5),
              blurRadius: 8,
            ),
          ],
        ),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CardImage(imageUrl ?? ''),
              _CardText(
                text,
                descriptionText: descriptionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
