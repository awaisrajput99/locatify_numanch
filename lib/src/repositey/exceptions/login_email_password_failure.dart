class LoginWithEmailPasswordFailure {
  final String message;

  const LoginWithEmailPasswordFailure([this.message = "An unknown error occurred"]);

  factory LoginWithEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginWithEmailPasswordFailure(
          'The email address is not valid or badly formatted.',
        );
      case 'user-disabled':
        return const LoginWithEmailPasswordFailure(
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return const LoginWithEmailPasswordFailure(
          'No user found for that email. Please check the email and try again.',
        );
      case 'wrong-password':
        return const LoginWithEmailPasswordFailure(
          'Incorrect password. Please try again or reset your password.',
        );
      case 'too-many-requests':
        return const LoginWithEmailPasswordFailure(
          'Too many login attempts. Please try again later.',
        );
      case 'operation-not-allowed':
        return const LoginWithEmailPasswordFailure(
          'This operation is not allowed. Please contact support for assistance.',
        );
      default:
        return const LoginWithEmailPasswordFailure();
    }
  }
}
