import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'botik.db');
  return openDatabase(path, onCreate: (db, version) {
    db.execute(
        'CREATE TABLE posts(id INTEGER PRIMARY KEY AUTOINCREMENT, date TEXT, content_text TEXT, user_id INTEGER)');
    db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, password TEXT)');
    db.rawInsert(
        'INSERT INTO users(id, name, email, password) VALUES(99,"Bob", "bob@info.com", "123123")');
    db.rawInsert(
        'INSERT INTO users(id, name, email, password) VALUES(100,"Alice", "bob@info.com", "123123")');
    db.rawInsert(
        'INSERT INTO posts(id, date, content_text, user_id) VALUES(99,"2021-03-23T16:10:33Z", "Pessoal!! Tem um candidato aí que é excelente!! Prestem atenção. Com ele, podemos entregar coisas ainda melhores!", 99)');
    db.rawInsert(
        'INSERT INTO posts(id, date, content_text, user_id) VALUES(100,"2021-11-23T16:20:33Z", "Concordo Bob. Sei de quem você está falando, é sobre o Daniel Kin! É realmente um ótimo profissional. Vai somar bastante no time de mobile. ", 100)');
  }, version: 1, onDowngrade: onDatabaseDowngradeDelete);
}
