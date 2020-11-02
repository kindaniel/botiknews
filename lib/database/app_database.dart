import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'botik.db');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(
        'CREATE TABLE posts(id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, content_text TEXT, user_id INTEGER)');
        db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, password TEXT)');
  }, version: 1, onDowngrade: onDatabaseDowngradeDelete);
}
