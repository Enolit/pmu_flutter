import 'package:flutter/material.dart';
import 'package:project/domain/card.dart';

class DetailsPage extends StatelessWidget {
  final CardData data;

  final Color _color = Colors.brown;

  const DetailsPage(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: _color,
          title: Text(data.text),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(data.imageUrl ?? ''),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  data.text,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Text(
                data.descriptionText,
                style: Theme.of(context).textTheme.headlineSmall,
              )
            ],
          ),
        ));
  }
}