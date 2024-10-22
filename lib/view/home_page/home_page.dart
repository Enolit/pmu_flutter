import 'package:flutter/material.dart';
import 'package:project/domain/card.dart';
import 'package:project/view/details_page/details_page.dart';
import 'package:project/view/home_page/home_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Color _color = Colors.lightGreen.shade900;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text(widget.title),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final data = [
      CardData('Hello',
          descriptionText: 'Hello text',
          imageUrl:
              'https://unsplash.com/photos/YYo7MgkLK9I/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640'),
      CardData(
        'Hello 2',
        descriptionText: 'Hello 2 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/lsH8I32Asn8/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/X7UFvBn0vZc/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/GwXhULmCcmY/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/q4Qp5MrIX-E/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/cVgBoubRjME/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/Zjfb_sKPoiw/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/qGgqWwEMCsA/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/xo0KQrjYkuU/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/5xtRR1jbioU/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/YUtBJywgc4I/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 3',
        descriptionText: 'Hello 3 text',
        icon: Icons.add,
        imageUrl:
            'https://unsplash.com/photos/VJpJFnMhLZ0/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
    ];

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data
              .map((data) => HomeCard.fromData(
                    data,
                    onLike: (String title, bool isLiked) =>
                        _showSnackBar(context, title, isLiked),
                    onTap: () => _navigateToDetails(context, data),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

void _showSnackBar(BuildContext context, String title, bool isLiked) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        '$title is ${isLiked ? 'liked' : 'disliked'}!',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      backgroundColor: Colors.lightGreen.shade900,
      duration: const Duration(seconds: 1),
    ));
  });
}

void _navigateToDetails(BuildContext context, CardData data) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailsPage(data)),
  );
}
