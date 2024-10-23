import 'package:flutter/material.dart';
import 'package:project/domain/card.dart';
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
      CardData('Card',
          descriptionText: 'Beauty',
          imageUrl:
              'https://unsplash.com/photos/YYo7MgkLK9I/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640'),
      CardData(
        'Card 2',
        descriptionText: 'Beauty two',
        imageUrl:
            'https://unsplash.com/photos/lsH8I32Asn8/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Card 3',
        descriptionText: 'Beauty three',
        imageUrl:
            'https://unsplash.com/photos/X7UFvBn0vZc/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Card 4',
        descriptionText: 'Beauty four',
        imageUrl:
            'https://unsplash.com/photos/GwXhULmCcmY/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Card 5',
        descriptionText: 'Beauty five',
        imageUrl:
            'https://unsplash.com/photos/q4Qp5MrIX-E/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 6',
        descriptionText: 'Beauty six',
        imageUrl:
            'https://unsplash.com/photos/cVgBoubRjME/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 7',
        descriptionText: 'Beauty seven',
        imageUrl:
            'https://unsplash.com/photos/Zjfb_sKPoiw/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 8',
        descriptionText: 'Beauty eight',
        imageUrl:
        'https://unsplash.com/photos/qGgqWwEMCsA/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 9',
        descriptionText: 'Beaty nine',
        imageUrl:
        'https://unsplash.com/photos/xo0KQrjYkuU/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 10',
        descriptionText: 'Beaty ten',
        imageUrl:
        'https://unsplash.com/photos/5xtRR1jbioU/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 11',
        descriptionText: 'Beauty eleven',
        imageUrl:
        'https://unsplash.com/photos/YUtBJywgc4I/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8MTF8fHJhY2Nvb258ZW58MHx8fHwxNzI3OTExMTU5fDA&force=true&w=640',
      ),
      CardData(
        'Hello 12',
        descriptionText: 'Beauty twelve',
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
                  ))
              .toList(),
        ),
      ),
    );
  }
}
