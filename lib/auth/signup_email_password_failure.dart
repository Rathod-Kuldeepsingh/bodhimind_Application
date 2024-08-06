class SignupEmailPasswordFailure{
  final String message;
  SignupEmailPasswordFailure([this.message = "An Unknown Error Occured,"]);
factory SignupEmailPasswordFailure.code(String code){
  switch(code){
    
    case 'Weak password':
    return SignupEmailPasswordFailure("please enter a stronger password.");
    case 'invalid Email':
    return SignupEmailPasswordFailure("Email is not valid or badly formatted.");
    case 'email-already-in-use':
    return SignupEmailPasswordFailure("An account already exists for that email.");
    case 'operation-not-allowed':
    return SignupEmailPasswordFailure("operation is not allowed please contact support.");
    case 'user-disabled':
    return SignupEmailPasswordFailure("This user has been disabled. please contact support for help.");
    default:
    return SignupEmailPasswordFailure();
  }
}

}