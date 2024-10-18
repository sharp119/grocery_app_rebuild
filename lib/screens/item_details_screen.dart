import 'package:flutter/material.dart';
import '../models/inventory_item.dart';

class ItemDetailsScreen extends StatelessWidget {
  final InventoryItem item;

  const ItemDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${item.name}'),
            Text('Quantity: ${item.quantity}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}
