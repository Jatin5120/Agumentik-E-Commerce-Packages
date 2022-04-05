const String kLogoPath = "assets/logo/";
const String kImagesPath = "assets/images/";
const String kIllustrationPath = "assets/illustrations/";
const String kIconsPath = "assets/icons/";

final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

class StorageKeys {
  const StorageKeys._();

  static const String isNewUser = 'isNewUser';
  static const String isLoggedIn = 'isLoggedIn';
}

class Strings {
  const Strings._();

  static const String name = 'Name';
  static const String firstName = 'First Name';
  static const String middleName = "Middle Name";
  static const String lastName = "Last Name";
  static const String email = "Email";
  static const String password = "Password";
  static const String confirmPassword = "Confirm Password";
  static const String phone = "Phone";
  static const String phoneNumber = "Phone Number";
  static const String dateOfBirth = "Date of Birth";
  static const String dob = "DOB";
  static const String dobFormat = "dd/MM/yyyy";
  static const String gender = "Gender";
  static const String enterDOB = 'Enter Date of Birth';

  static const String submit = "Submit";
  static const String save = "Save";
  static const String continues = "Continue";
  static const String login = "Login";
  static const String signUp = "Sign Up";
  static const String contactUs = "Contact Us";
  static const String forgotPassword = "Forgot Password";
  static const String resetPassword = "Reset Password";
  static const String back = "Back";
  static const String cancel = "Cancel";
  static const String next = "Next";
  static const String done = "Done";
  static const String logout = "Logout";
  static const String edit = "Edit";
  static const String delete = "Delete";
  static const String yes = "Yes";
  static const String no = "No";
  static const String choose = "Choose";
  static const String add = "Add";
  static const String remove = "Remove";
}

class FirebaseErrors {
  const FirebaseErrors._();

  static const String accountExistDiffCreds = "account-exists-with-different-credential";
  static const String invalidEmail = "invalid-email";
  static const String userDisabled = "user-disabled";
  static const String userNotFound = "user-not-found";
  static const String wrongPassword = "wrong-password";
}

class SignInMethod {
  const SignInMethod._();

  static const String password = "password";
  static const String google = "google.com";
  static const String facebook = "facebook.com";
}
