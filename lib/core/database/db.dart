// import 'dart:convert';
import 'dart:io';
// import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
// import 'package:tanipedia_mobile/repository/r_auth/model/user_model/user_model.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT, role TEXT, createdAt TEXT, updatedAt TEXT, token TEXT)");
    await db.execute("CREATE TABLE Language(id INTEGER PRIMARY KEY, name TEXT)");
  }

  // Future? storeUser(UserModel user) async {
  //   var dbClient = await db;
  //   await dbClient.insert("User", user.toJson());
  // }

  // Future<UserModel?> getUser() async {
  //   var dbClient = await db;
  //   final res = await dbClient.query("User");
  //   if (res.isNotEmpty) {
  //     Map<String, dynamic> user = res.first;
  //     return UserModel.fromJson(user);
  //   }

  //   return null;
  // }

  Future<void> deleteData() async {
    var dbClient = await db;
    await dbClient.delete('User');
  }
}
