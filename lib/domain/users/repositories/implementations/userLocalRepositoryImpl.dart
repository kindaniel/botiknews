import 'package:botiknews/database/app_database.dart';
import 'package:botiknews/domain/users/models/user.dart';
import 'package:botiknews/domain/users/repositories/userRepository.dart';
import 'package:botiknews/settings.dart';
import 'package:sqflite/sqflite.dart';

class UserLocalRepositoryImpl implements UserRepository {
  static const _tableName = 'users';
  Future<int> create(User user) async {
    return await save(user);
  }

  Future<int> save(User user) async {
    final Database db = await getDatabase();
    final Map<String, dynamic> userMap = Map();
    userMap['email'] = user.email.toUpperCase();
    userMap['name'] = user.name;
    userMap['password'] = user.password;
    final userId = await db.insert(_tableName, userMap);
    return userId;
  }

  Future<List<User>> getFirst({email, password}) async {
    final Database db = await getDatabase();
    final List<User> users = List();
    final List<Map<String, dynamic>> result = await db.query(_tableName,
        where: "email = ? AND password = ?",
        whereArgs: [email.toUpperCase(), password],
        limit: 1);
    for (Map<String, dynamic> row in result) {
      Settings.userId = row['id'];
      final User user = User(
          id: row['id'],
          email: row['email'],
          name: row['name'],
          password: row['password']);
      users.add(user);
    }
    return users;
  }
}
