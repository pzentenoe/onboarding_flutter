import 'package:meta/meta.dart';

abstract class UserRepository {
  Future<bool> login({@required String username, @required String password});
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<bool> login({String username, String password}) async{
    return Future.delayed(Duration(seconds: 5), () => true);
  }
}
