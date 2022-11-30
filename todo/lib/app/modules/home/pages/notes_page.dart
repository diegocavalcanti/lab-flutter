import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key, required this.title});
  final String title;

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anotações'),
      ),
    );
  }
}
