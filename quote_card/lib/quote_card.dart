import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quote_card/Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.quote,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(color: Colors.grey[800], fontSize: 14.0),
            ),
            const SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: () => {delete(), log(quote.author)},
              icon: const Icon(Icons.delete),
              label: const Text("delete quote"),
            ),
          ],
        ),
      ),
    );
  }
}
