validateEmailField(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  RegExp regex = new RegExp(pattern);
  if (value!.isEmpty || value.length < 3) {
    return "Email can not be empty";
  } else if (regex.hasMatch(value) == false) {
    return "Please enter a vaild email address";
  }
  return null;
}

var pass;
validatePasswordField(String? value) {
  pass = value;
  if (value!.isEmpty || value.length < 3) {
    return "Password must be at least 6 characters long";
  }
  return null;
}

validateUsername(String? value) {
  pass = value;
  if (value!.isEmpty || value.length < 3) {
    return "Username must be at least 3 characters long";
  }
  return null;
}

validateConfirmPasswordField(String? value) {
  if (value!.isEmpty || value.length < 3) {
    return "Confirm password must be at least 6 characters long";
  }
  if (value != pass) {
    return "Password doesn't match";
  }
  return null;
}
