import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shubham_test/auth/signup_email_password_failure.dart';
import 'package:shubham_test/main.dart';

class AuthenticationRep extends GetxController{
  static AuthenticationRep get instance => Get.find();

  //varibales
 final _auth = FirebaseAuth.instance;  
 late Rx<User?> firebaseUser ;

 @override
  
  void onReady(){
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }
     _setInitialScreen(User? user){
      user == null ? Get.offAll(() => const home_screen()) : Get.offAll(() => const home_screen());
     }

     Future<void> createUserWithEmailAndPAssword(String email,String password) async{
      try{
        await _auth.createUserWithEmailAndPassword(email: email, password: password);
         firebaseUser.value != null ? Get.offAll(() => const home_screen()) : Get.offAll(() => const home_screen());
      }
        on FirebaseAuthException catch(e){
        final  ex = SignupEmailPasswordFailure.code(e.code);
        print('FIREBASE AUTH EXCEPTION -${ex.message}');
        throw ex;
        } catch(_){
          final  ex = SignupEmailPasswordFailure();
        print('FIREBASE AUTH EXCEPTION -${ex.message}');
        throw ex;
        }
     }
   Future<void> LoginUserWithEmailAndPAssword(String email,String password) async{
      try{
        await _auth.signInWithEmailAndPassword(email: email, password: password);
      }
catch(_){}
 
        
     }
  Future<void> logout() async => await _auth.signOut();

}