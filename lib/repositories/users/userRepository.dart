import 'package:botiknews/models/user.dart';

abstract class UserRepository {
  Future<int> create(User user);
  Future<int> save(User user);
  Future<List<User>> getFirst({email, password});
}
