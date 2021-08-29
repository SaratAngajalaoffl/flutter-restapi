import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoteEdit extends StatelessWidget {
  const NoteEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit a Note!'),
      ),
      body: Container(),
    );
  }
}
