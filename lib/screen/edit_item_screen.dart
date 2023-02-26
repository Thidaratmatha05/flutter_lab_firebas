import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/item_service.dart';
import 'package:flutter/widgets.dart';

class EditItemScreen extends StatefulWidget {
  EditItemScreen(this.documentid, this.itemName, this.itemDesc);
    String documentid;
    String itemName;
    String itemDesc;
  
  @override
  State<EditItemScreen> createState() => _EditItemScreenState();
}

class _EditItemScreenState extends State<EditItemScreen> {
  final ItemService itemService = ItemService();
  TextEditingController itemName = TextEditingController();
  TextEditingController itemDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    itemName.text = widget.itemName;
    itemDesc.text = widget.itemDesc;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: itemName,
              decoration: const InputDecoration(label: Text("Item name")),
            ),
            TextField(
              controller: itemDesc,
              decoration:
                  const InputDecoration(label: Text("Item Description")),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            ElevatedButton(onPressed:(){_deleteItem(context);}
            , child: const Text("Delete")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed:(){_editItem(context);}
            , child: const Text("Edit")),
          ],
        ),
      ),
    );
  }

  void _editItem(BuildContext context) {
  if(itemName.text == "" || itemDesc.text == ""){
} else{
  itemService
  .editItem(context, {"name": itemName.text,"desc": itemDesc.text},
   widget.documentid)
          .then((value) => Navigator.pop(context));
      itemName.text = "";
      itemDesc.text = "";
}
  }

  void _deleteItem(BuildContext context) {
    if(itemName.text == "" || itemDesc.text == ""){
} else{
  itemService
  .deleteItem(context, widget.documentid)
          .then((value) => Navigator.pop(context));
      itemName.text = "";
      itemDesc.text = "";
}
  }
}

