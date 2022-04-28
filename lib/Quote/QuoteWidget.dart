import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;

  const QuoteCard({
    Key? key,
    required this.quote
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[300],
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(quote.text,
                  style: const TextStyle(
                      fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text( '~' + quote.author,
                  style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ],
            ),
          ],
        ),
        margin: EdgeInsets.all(5),
      ),
    );
  }
}
