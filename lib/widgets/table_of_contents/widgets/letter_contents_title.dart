import 'package:flutter/material.dart';

class LetterContentsTile extends StatelessWidget {
  const LetterContentsTile({Key? key, this.entryContent}) : super(key: key);
  final dynamic entryContent;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFD3D3D3).withOpacity(.84),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              entryContent['envelope'],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(entryContent['title']),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(entryContent['date']),
          ),
        ],
      ),
    );
  }
}
