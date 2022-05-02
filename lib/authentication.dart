part of entities;

class UserEmail {
  final String email;
  UserEmail({required this.email});
}

class NewUser extends UserEmail {
  final String userName;
  final String password;
  final String confirmPassword;

  NewUser(
      {required this.userName,
      required String email,
      required this.password,
      required this.confirmPassword})
      : super(email: email);
}

class User extends UserEmail {
  final String id;
  User({
    required String email,
    required this.id,
  }) : super(email: email);
}

class SignInUser extends UserEmail {
  final String password;

  SignInUser({required String email, required this.password})
      : super(email: email);
}
