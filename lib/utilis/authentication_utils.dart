// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';
//
// class AuthenticationUtils {
//   Future<User?> signInWithGoogle() async {
//     CustomDialogs.getInstance.showProgressDialog();
//     final FirebaseAuth auth = FirebaseAuth.instance;
//     User? user;
//
//     final GoogleSignIn googleSignIn = GoogleSignIn();
//
//     final GoogleSignInAccount? googleSignInAccount =
//         await googleSignIn.signIn();
//
//     if (googleSignInAccount != null) {
//       final GoogleSignInAuthentication googleSignInAuthentication =
//           await googleSignInAccount.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );
//
//       try {
//         final UserCredential userCredential =
//             await auth.signInWithCredential(credential);
//
//         user = userCredential.user;
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'account-exists-with-different-credential') {
//           // handle the error here
//         } else if (e.code == 'invalid-credential') {
//           // handle the error here
//         }
//       } catch (e) {
//         // handle the error here
//       }
//     }
//     CustomDialogs.getInstance.hideProgressDialog();
//
//     return user;
//   }
//
//   Future<User?> signInWithApple() async {
//     CustomDialogs.getInstance.showProgressDialog();
//     final AuthorizationCredentialAppleID appleCredential =
//         await SignInWithApple.getAppleIDCredential(
//       scopes: <AppleIDAuthorizationScopes>[
//         AppleIDAuthorizationScopes.email,
//         AppleIDAuthorizationScopes.fullName,
//       ],
//     );
//
//     final OAuthCredential oauthCredential =
//         OAuthProvider('apple.com').credential(
//       idToken: appleCredential.identityToken,
//       accessToken: appleCredential.authorizationCode,
//     );
//     final UserCredential userCredential =
//         await FirebaseAuth.instance.signInWithCredential(
//       oauthCredential,
//     );
//
//     CustomDialogs.getInstance.hideProgressDialog();
//
//     return userCredential.user;
//   }
//
//   Future<User?> signInWithFacebook() async {
//     CustomDialogs.getInstance.showProgressDialog();
//     try {
//       final LoginResult loginResult = await FacebookAuth.instance.login();
//
//       // Create a credential from the access token
//       final OAuthCredential facebookAuthCredential =
//           FacebookAuthProvider.credential(loginResult.accessToken!.token);
//       // Once signed in, return the UserCredential
//       final userCredential = await FirebaseAuth.instance
//           .signInWithCredential(facebookAuthCredential);
//       CustomDialogs.getInstance.hideProgressDialog();
//       return userCredential.user;
//     } catch (e) {
//       // TODO
//     }
//     CustomDialogs.getInstance.hideProgressDialog();
//
//     return null;
//   }
// }
