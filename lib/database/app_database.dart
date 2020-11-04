import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'botik.db');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(
        'CREATE TABLE posts(id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, content_text TEXT, user_id INTEGER)');
    db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, password TEXT)');
    db.rawInsert('INSERT INTO users(id, name, email, password) VALUES(99,"Bob", "bob@info.com", "123123")');
    db.rawInsert('INSERT INTO users(id, name, email, password) VALUES(100,"Alice", "bob@info.com", "123123")');
    db.rawInsert('INSERT INTO posts(id, date, content_text, user_id) VALUES(99,"2020-11-02T16:10:33Z", "Olha Alice, acho que seria uma boa contratar o Daniel né?!", 99)');
    db.rawInsert('INSERT INTO posts(id, date, content_text, user_id) VALUES(100,"2020-11-03T16:10:33Z", "Concordo Bob. Vai ser uma contratação excepcional! ", 100)');
  }, version: 1, onDowngrade: onDatabaseDowngradeDelete);
}
