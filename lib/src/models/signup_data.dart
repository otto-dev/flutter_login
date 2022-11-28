import 'package:flutter_login/src/models/term_of_service.dart';
import 'package:quiver/core.dart';

class SignupData {
  final String? name;
  final String? password;
  final String? displayName;
  final List<TermOfServiceResult> termsOfService;
  final Map<String, String>? additionalSignupData;

  SignupData.fromSignupForm({
    required this.name,
    required this.password,
    required this.displayName,
    this.additionalSignupData,
    this.termsOfService = const [],
  });

  SignupData.fromProvider({
    required this.additionalSignupData,
    this.termsOfService = const [],
  })  : name = null,
        password = null,
        displayName = null;

  @override
  bool operator ==(Object other) {
    if (other is SignupData) {
      return name == other.name &&
          password == other.password &&
          displayName == other.displayName &&
          additionalSignupData == other.additionalSignupData;
    }
    return false;
  }

  @override
  int get hashCode => hash4(name, password, displayName, additionalSignupData);
}
