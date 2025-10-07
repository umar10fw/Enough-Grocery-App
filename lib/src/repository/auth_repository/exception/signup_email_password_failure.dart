class SignupEmailPasswordFailure{

  final String message;
  SignupEmailPasswordFailure([this.message ="As Unknown error occurred"]);

  factory SignupEmailPasswordFailure.code(String code){
    switch(code){
      case 'weak-password' :
        return SignupEmailPasswordFailure.code("Please Enter a Strong Password");
      case 'invalid-email' :
        return SignupEmailPasswordFailure.code("Please Enter a Valid Email");
      case 'email-already-in-use' :
        return SignupEmailPasswordFailure.code("An Account Already exists for that email");
      case 'operation-not-allowed' :
        return SignupEmailPasswordFailure.code("Operation Not Allowed Please Contact Support");
      case 'user-disable' :
        return SignupEmailPasswordFailure.code("This User hase been Disable");
      default :
        return SignupEmailPasswordFailure();
    }
  }
}