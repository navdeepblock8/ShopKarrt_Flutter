import 'package:flutter/material.dart';
import 'items.dart';
import 'dart:collection';

class Itemdata extends ChangeNotifier{

List<items> _item = [
  items(name: 'Eggs 2 Dozen'),
];

UnmodifiableListView<items> get item {
    return UnmodifiableListView(_item);
  }
int get itemCount{
    return _item.length;
}
void addItems(String itemName){
  final newitem = items(name: itemName);
  _item.add(newitem);
  notifyListeners();
}
void updateItem(items item){
  item.toggleDone();
  notifyListeners();
}

}