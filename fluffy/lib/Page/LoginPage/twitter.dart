import 'package:flutter_twitter_login/flutter_twitter_login.dart';

//File Page Includ
import '../../Model/SocialAccount.dart' as localuser;
import '../../Tools/LocalTools.dart';

// Create User with Twitter login or Sync Existing User With Twitter Data
class FluffyTwitterlogin {
  FluffyTwitterlogin() {}

  // Create a new User with Twitter credidentials & User Info
  static Future<localuser.User> createUserTwitter(
      TwitterLoginResult result, String userID) async {
    final token = result.session.token;
    localuser.User user = localuser.User(
        firstName: result.session.username,
        lastName: "",
        email: "",
        twitter_accesstoken: token,
        twitter_refreshtoken: result.session.secret,
        active: true,
        userID: userID);
    return await Localtools().setCurrentUser(user);
  }

  // Sync existing User with Twitter credidentials & User Info
  static Future<localuser.User> syncUserWithTwitter(
      TwitterLoginResult result, localuser.User user) async {
    user.twitter_accesstoken = result.session.token;
    user.twitter_refreshtoken = result.session.secret;
    user.active = true;

    return await Localtools().setCurrentUser(user);
  }
}
