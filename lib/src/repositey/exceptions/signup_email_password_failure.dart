class SignupWithEmailPasswordFailure{
  final String message;
  const SignupWithEmailPasswordFailure([this.message = "An unknown error occurred"]);

  factory SignupWithEmailPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return const SignupWithEmailPasswordFailure('Please create a strong password');
      case 'invalid-email':
        return const SignupWithEmailPasswordFailure('Email is not valid or badly formatted');
      case 'email-already-in-use':
        return const SignupWithEmailPasswordFailure('An account already exists for that email');
        case 'operation-not-allowed':
          return const SignupWithEmailPasswordFailure('Operation not allowed. please contact support for help');
      case 'user-disabled':
        return const SignupWithEmailPasswordFailure("This user has been disabled please contact support for help");

      default:
        return const SignupWithEmailPasswordFailure();
    }
  }
}