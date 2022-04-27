import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Card(),
  ));
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Removes bottom shadow
        title: Text(
          'Id Card',
          style: TextStyle(
            color: Colors.green[100]
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      backgroundColor: Colors.green,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('NAME',
              style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),
            Text('My name',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Text('LEVEL',
              style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10, width: 10),
            Text('10',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Icon(
                    Icons.mail
                  ),
                ),
                Text('leonardo.ra14@icloud.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
