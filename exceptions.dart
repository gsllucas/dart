void main() {
  try {
    validateLogin(username: 'myUserName@123', password: 123);
  } on UserLoginException catch (error) {
    error.message != null ? print(error.message) : print(error);
  } catch (error) {
    print(error);
  } finally {
    print('It ends here');
  }
}

validateLogin({required String username, required dynamic password}) {
  Map<String, dynamic> fakeDataBase = {
    'username': 'myUserName@123',
    'password': '123456'
  };

  if (username == fakeDataBase['username'] &&
      password == fakeDataBase['password']) {
    print('Login realizado com sucesso!');
  } else {
    throw UserLoginException();
  }
}

class UserLoginException implements Exception {
  final String? message;

  UserLoginException({String? this.message});

  @override
  String toString() =>
      'Erro ao realizar o seu login, por favor verifique suas credenciais.';
}
