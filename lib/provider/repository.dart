// Repository (Dummy data handling for now)
import 'package:zybra_task/modal/user_modal.dart';

class UserRepository {
  final List<UserModel> _users = [];

  Future<List<UserModel>> getUsers() async {
    return _users;
  }

  Future<void> addUser(UserModel user) async {
    _users.add(user);
  }
}