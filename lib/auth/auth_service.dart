import 'dart:convert';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:pollpe_assignment/utils/constants.dart';

class AuthService extends GetxController {
   final _firebasemessaging = FirebaseMessaging.instance;
   final FirebaseAuth _auth = FirebaseAuth.instance;
   Future<String> socialLogin(String tokenID) async {
    String accessToken = '';
    final fcmToken = await _firebasemessaging.getToken();
    final apiUrl = '${Constants().baseUrl}/user/social-login';
    try {
      final response = await http.post(Uri.parse(apiUrl), body: {
        "access_token": tokenID,
        "fcm_token": fcmToken
      });
      final Map<String, dynamic> responseData = json.decode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        accessToken = responseData['access_token'];

      }
      else if (response.statusCode == 403){
        Get.snackbar('${responseData["response"]["message"]}', '',
            snackPosition: SnackPosition.BOTTOM);
      }

      else{
        Get.snackbar('Please Check Your Internet Connection', '',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      if (e is SocketException) {
        Get.snackbar('Please Check Your Internet Connection', '',
            snackPosition: SnackPosition.BOTTOM);
      }

    }
    return accessToken;
  }

  Future<UserCredential?> signInWithGoogle() async {

    

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      // print(googleAuth.accessToken);
      // print(googleAuth.idToken);
      //     print(googleAuth.idToken!.substring(0, 800));
      // print(googleAuth.idToken!.substring(800, googleAuth.idToken?.length));
      final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      final User? user = (await _auth.signInWithCredential(credential)).user;
      if (user != null) {
        var idToken = await user.getIdTokenResult();
        String accessToken = await socialLogin(idToken.token!);
        print(accessToken);
      }
      else {
        print('user is null');
        // localMemory.erase();
        // localMemory.write('showSplashScreen', false);
        Get.snackbar(
          'Network Problem',
          '',
          snackPosition: SnackPosition.BOTTOM,
        );
      }


      return await _auth.signInWithCredential(credential);
    }
    return null;
  }


}