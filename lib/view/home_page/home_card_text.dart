part of 'home_card.dart';

class _CardText extends StatelessWidget {
  final String text;
  final String descriptionText;

  const _CardText(
    this.text, {
    required this.descriptionText,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              descriptionText,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}