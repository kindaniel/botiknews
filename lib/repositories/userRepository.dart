import 'package:botiknews/database/app_database.dart';
import 'package:botiknews/models/user.dart';
import 'package:sqflite/sqflite.dart';

class UserRepository {
  static const _tableName = 'users';
  Future<int> create(name) async {
    final user = User(
      id: 0,
      name: name,
    );
    return await save(user);
  }

  Future<int> save(User user) async {
    final Database db = await getDatabase();
    final Map<String, dynamic> userMap = Map();
    userMap['name'] = user.name;
    return db.insert(_tableName, userMap);
  }
}
