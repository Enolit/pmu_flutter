part of 'home_card.dart';

class _CardImage extends StatelessWidget {
  final String imageUrl;

  const _CardImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SizedBox(
        height: 180,
        width: 360,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => const Placeholder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
