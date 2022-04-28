import 'package:flutter/material.dart';

import 'Quote/Quote.dart';
import 'Quote/QuoteWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, // Removes bottom shadow
        title: Text(
          'Id Card',
          style: TextStyle(color: Colors.green[100]),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/pfp.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.green[100],
                thickness: 2,
              ),
              Text(
                'NAME',
                style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'My name',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Text(
                'LEVEL',
                style: TextStyle(
                    color: Colors.green[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10, width: 10),
              Text(
                '$level',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Icon(Icons.mail),
                  ),
                  Text(
                    'leonardo.ra14@icloud.com',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
              //SizedBox(height: 1000),
              //Text('ciao')
              QuoteList()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState( () {
            level++;
          });
        },
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'I never think of the future it comes soon enough', author: 'Einstein'),
    Quote(text: 'Money is the root of all evil', author: 'Jordan Belfort'),
    Quote(text: 'I walk slowly but never walk backward', author: 'Abraham Lincoln'),
    Quote(text: 'I never think of the future it comes soon enough', author: 'Einstein'),
    Quote(text: 'Money is the root of all evil', author: 'Jordan Belfort'),
    Quote(text: 'I walk slowly but never walk backward', author: 'Abraham Lincoln'),
    Quote(text: 'I never think of the future it comes soon enough', author: 'Einstein'),
    Quote(text: 'Money is the root of all evil', author: 'Jordan Belfort'),
    Quote(text: 'I walk slowly but never walk backward', author: 'Abraham Lincoln'),
    Quote(text: 'I never think of the future it comes soon enough', author: 'Einstein'),
    Quote(text: 'Money is the root of all evil', author: 'Jordan Belfort'),
    Quote(text: 'I walk slowly but never walk backward', author: 'Abraham Lincoln'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
    );
  }
}