class PhoneAuthenticationFailure {
  final String message;

  const PhoneAuthenticationFailure([this.message = "An unknown error occurred"]);

  factory PhoneAuthenticationFailure.code(String code) {
    switch (code) {
      case 'invalid-phone-number':
        return const PhoneAuthenticationFailure(
          'The phone number is invalid. Please enter a valid phone number.',
        );
      case 'quota-exceeded':
        return const PhoneAuthenticationFailure(
          'The SMS quota for this project has been exceeded. Please try again later.',
        );
      case 'too-many-requests':
        return const PhoneAuthenticationFailure(
          'We have blocked all requests from this device due to unusual activity. Please try again later.',
        );
      case 'operation-not-allowed':
        return const PhoneAuthenticationFailure(
          'Phone authentication is not enabled. Please contact support.',
        );
      case 'app-not-authorized':
        return const PhoneAuthenticationFailure(
          'This app is not authorized to use Firebase Authentication. Please verify your configuration.',
        );
      case 'missing-client-identifier':
        return const PhoneAuthenticationFailure(
          'Missing client identifier. Please verify your setup.',
        );
      case 'network-request-failed':
        return const PhoneAuthenticationFailure(
          'A network error occurred. Please check your connection and try again.',
        );
      case 'session-expired':
        return const PhoneAuthenticationFailure(
          'The SMS verification code has expired. Please request a new code.',
        );
      case 'invalid-verification-code':
        return const PhoneAuthenticationFailure(
          'The verification code is invalid. Please check the code and try again.',
        );
      case 'invalid-verification-id':
        return const PhoneAuthenticationFailure(
          'The verification ID is invalid. Please request a new code.',
        );
      default:
        return const PhoneAuthenticationFailure();
    }
  }
}
