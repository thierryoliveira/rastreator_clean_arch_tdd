import 'package:flutter/material.dart';

class SearchTextfield extends StatelessWidget {
  final textController;
  final Function() onSearch;

  SearchTextfield({required this.textController, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: onSearch,
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          hintText: 'Pesquisar...',
        ));
  }
}
