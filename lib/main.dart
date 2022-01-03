import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quotes_card.dart';


void main() {
  runApp(MaterialApp(
    home : QuotesList(),
  ),);
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quotes> quotes = [
    Quotes(text : 'Ashish is full of life', author : 'Ashish'),
    Quotes(text: 'Ashish is hot and cool at the same time', author : 'Ashish'),
    Quotes(text: 'He does not run behind love to get it, he let it come by itself', author : 'Ashish')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title : Text('Good Quotes'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: quotes.map((quote) => QuoteCard(
            quote : quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            },
          )).toList(),
        ),
      )
    );
  }
}


