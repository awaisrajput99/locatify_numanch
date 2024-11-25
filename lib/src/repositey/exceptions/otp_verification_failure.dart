class OtpVerificationFailure {
  final String message;

  const OtpVerificationFailure([this.message = "An unknown error occurred"]);

  factory OtpVerificationFailure.code(String code) {
    switch (code) {
      case 'invalid-verification-code':
        return const OtpVerificationFailure(
          'The OTP entered is invalid. Please try again.',
        );
      case 'session-expired':
        return const OtpVerificationFailure(
          'The OTP session has expired. Please request a new OTP.',
        );
      case 'invalid-verification-id':
        return const OtpVerificationFailure(
          'The verification ID is invalid. Please try again or re-authenticate.',
        );
      case 'quota-exceeded':
        return const OtpVerificationFailure(
          'SMS quota for this project has been exceeded. Please try again later.',
        );
      case 'credential-already-in-use':
        return const OtpVerificationFailure(
          'This phone number is already associated with another account.',
        );
      case 'operation-not-allowed':
        return const OtpVerificationFailure(
          'Phone authentication is not enabled for this project. Please contact support.',
        );
      default:
        return const OtpVerificationFailure();
    }
  }
}
