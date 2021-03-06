import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quotes quote;
  final Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin : EdgeInsets.fromLTRB(16, 16, 16, 0),
      child : Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children : <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,

                ),
              ),
              SizedBox(height: 6.0),
              Text(
                '- ${quote.author}',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600],
                ),

              ),
              SizedBox(height: 8.0,),
              FlatButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
                  label: Text('delete this quote'),
              ),
            ]
        ),
      ),
    );
  }
}