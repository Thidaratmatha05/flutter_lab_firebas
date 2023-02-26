import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class ItemService {
  Future<void> addItem2Firebase(String documentid, Map<String, String> data) {
    return FirebaseFirestore.instance
        .collection("items")
        .add(data)
        .then((value) {
      print("Item created");
    }).catchError((error) {
      print("Can't create item:" + error.toString());
    });
  }

  Future<void> editItem(BuildContext context, Map<String, String> data, String documentid) {
    return FirebaseFirestore.instance
        .collection("items")
        .doc(documentid)
        .update(data)
        .then((value) {
      print("Item update");
    }).catchError((error) {
      print("Can't update item:" + error.toString());
    });
  }

  Future<void> deleteItem(BuildContext context, String documentid) {
    return FirebaseFirestore.instance
        .collection("items")
        .doc(documentid)
        .delete()
        .then((value) {
      print("Item deleted");
    }).catchError((error) {
      print("Can't delete item:" + error.toString());
    });
  }
}

