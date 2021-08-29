import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restapi/models/note_for_model.dart';
import 'package:restapi/views/note_modify.dart';

class NoteList extends StatelessWidget {
  NoteList({Key? key}) : super(key: key);

  final notesList = [
    NoteModel(title: 'Hola 1'),
    NoteModel(title: 'Hola 2'),
    NoteModel(title: 'Hola 3'),
    NoteModel(title: 'Hola 4'),
    NoteModel(title: 'Hola 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => NoteEdit(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(notesList[index].title),
          );
        },
        separatorBuilder: (_, __) => const Divider(
          height: 1,
        ),
        itemCount: 5,
      ),
    );
  }
}
