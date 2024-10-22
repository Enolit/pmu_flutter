import 'package:flutter/material.dart';
import 'package:project/domain/card.dart';

part 'home_card_image.dart';

part 'home_card_like.dart';

part 'home_card_text.dart';

typedef OnLikeCallback = void Function(String title, bool isLiked)?;

class HomeCard extends StatelessWidget {
  final String text;
  final String descriptionText;
  final IconData icon;
  final String? imageUrl;
  final OnLikeCallback onLike;
  final VoidCallback? onTap;

  const HomeCard(
    this.text, {
    this.icon = Icons.ac_unit_outlined,
    required this.descriptionText,
    this.imageUrl,
    this.onLike,
    this.onTap,
    super.key,
  });

  factory HomeCard.fromData(
    CardData data, {
    OnLikeCallback? onLike,
    VoidCallback? onTap,
  }) =>
      HomeCard(
        data.text,
        descriptionText: data.descriptionText,
        icon: data.icon,
        imageUrl: data.imageUrl,
        onLike: onLike,
        onTap: onTap,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              _CardLike(
                onLike,
                text: text,
              )
            ],
          ),
        ),
      ),
    );
  }
}
