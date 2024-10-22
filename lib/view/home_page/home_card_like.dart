part of 'home_card.dart';

class _CardLike extends StatefulWidget {
  final OnLikeCallback onLike;
  final String text;

  const _CardLike(this.onLike, {required this.text});

  @override
  State<_CardLike> createState() => _CardLikeState();
}

class _CardLikeState extends State<_CardLike> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8,
          right: 16,
          bottom: 16,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isLiked = !_isLiked;
            });
            widget.onLike?.call(widget.text, _isLiked);
          },
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: _isLiked
                ? const Icon(
                    Icons.pets,
                    color: Colors.orange,
                    key: ValueKey(0),
                  )
                : const Icon(
                    Icons.pets,
                    color: Colors.grey,
                    key: ValueKey(1),
                  ),
          ),
        ),
      ),
    );
  }
}
