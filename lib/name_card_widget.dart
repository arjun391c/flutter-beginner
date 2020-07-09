import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/bg.jpg"),
          SizedBox(
            height: 20,
          ),
          Text(
            myText,
            style: TextStyle(letterSpacing: 4, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter here",
                  labelText: "Data"),
            ),
          )
        ],
      ),
    );
  }
}
