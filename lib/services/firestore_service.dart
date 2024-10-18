import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/inventory_item.dart';

class FirestoreService {
  final CollectionReference _itemsCollection =
      FirebaseFirestore.instance.collection('items');

  Stream<List<InventoryItem>> getItems() {
    return _itemsCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => InventoryItem.fromFirestore(doc))
          .toList();
    });
  }

  Future<void> addItem(InventoryItem item) {
    return _itemsCollection.add(item.toFirestore());
  }

  Future<void> updateItem(InventoryItem item) {
    return _itemsCollection.doc(item.id).update(item.toFirestore());
  }

  Future<void> deleteItem(String id) {
    return _itemsCollection.doc(id).delete();
  }
}
