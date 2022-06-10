import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

class User {
  late String email;
  late String name;
  late String password;
  late String uuid;

  User(String email, String name, String password, String uuid) {
    this.email = email;
    this.name = name;
    this.password = password;
    this.uuid = uuid;
  }
}