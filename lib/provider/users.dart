// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors

import 'dart:math';

import 'package:appcrediario/data/dummy_users.dart';
import 'package:appcrediario/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    if (user.id != null &&
        user.id.trim().isEmpty &&
        _items.containsKey(user.id)) {
      _items.update(user.id, (_) => user);
    } else {
      final id = user.id;
      _items.putIfAbsent(
        id,
        () => User(
            id: id,
            cpf: user.cpf,
            nome: user.nome,
            rg: user.rg,
            telefone: user.telefone,
            vendedor: user.vendedor),
      );
    }
    notifyListeners();
  }

  void remove(User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
