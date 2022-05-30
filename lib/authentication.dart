part of entities;

class UserEmail {
  String email;
  UserEmail({required this.email});
}

class NewUser extends UserEmail {
  String userName;
  String password;
  String confirmPassword;

  NewUser(
      {required this.userName,
      required String email,
      required this.password,
      required this.confirmPassword})
      : super(email: email);
}

class User extends UserEmail {
  String id;
  User({
    required String email,
    required this.id,
  }) : super(email: email);
}

class SignInUser extends UserEmail {
  String password;

  SignInUser({required String email, required this.password})
      : super(email: email);
}
