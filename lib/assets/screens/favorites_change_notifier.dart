// ignore_for_file: recursive_getters, unused_element, prefer_final_fields

import 'package:flutter/cupertino.dart';
import 'package:real_estate_app/consts/houseobj.dart';
import 'package:real_estate_app/consts/ownerobj.dart';

class FavoritesChangeNotifier extends ChangeNotifier {
  List<House> _favouriteList = [];

  List<House> get favouriteList => _favouriteList;

  void addItem(House house) {
    _favouriteList.add(house);
    notifyListeners();
  }

  void deleteItem(House house) {
    _favouriteList.remove(house);
    notifyListeners();
  }
}
