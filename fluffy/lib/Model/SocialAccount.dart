import 'dart:io';

// Local User Data
class User {
  String email;
  String firstName;
  String lastName;

  String phoneNumber;

  bool active;

  String userID;

  //Profil Image
  String profilePictureURL;
  String facebook_profilePictureURL;
  String twitter_profilePictureURL;
  String linkedin_profilePictureURL;

  //Social Network Access & Refresh Token (if exist and user connect to the corresponding social network)
  String facebook_accesstoken;
  String facebook_refreshtoken;

  String twitter_accesstoken;
  String twitter_refreshtoken;

  String linkedin_accesstoken;
  String linkedin_refreshtoken;

  bool selected;

  String appIdentifier;

  // Init User Data (avoid null Reference Exception)
  User(
      {this.email = '',
      this.firstName = '',
      this.phoneNumber = '',
      this.lastName = '',
      this.active = false,
      this.selected = false,
      lastOnlineTimestamp,
      this.userID = '',
      this.facebook_accesstoken = '',
      this.facebook_refreshtoken = '',
      this.twitter_accesstoken = '',
      this.twitter_refreshtoken = '',
      this.linkedin_accesstoken = '',
      this.linkedin_refreshtoken = '',
      this.facebook_profilePictureURL = '',
      this.twitter_profilePictureURL = '',
      this.profilePictureURL = ''})
      : this.appIdentifier = 'Flutter Login Screen ${Platform.operatingSystem}';

  // Get Combinaison of First Name & Last name of the user
  String fullName() {
    return '$firstName $lastName';
  }

  // get User object from json encoding
  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return new User(
        email: parsedJson['email'] ?? '',
        firstName: parsedJson['firstName'] ?? '',
        lastName: parsedJson['lastName'] ?? '',
        active: parsedJson['active'] ?? false,
        facebook_accesstoken: parsedJson['facebook_accesstoken'] ?? '',
        twitter_accesstoken: parsedJson['twitter_accesstoken'] ?? '',
        linkedin_accesstoken: parsedJson['linkedin_accesstoken'] ?? '',
        facebook_profilePictureURL:
            parsedJson['facebook_profilePictureURL'] ?? '',
        twitter_profilePictureURL:
            parsedJson['twitter_profilePictureURL'] ?? '',
        phoneNumber: parsedJson['phoneNumber'] ?? '',
        userID: parsedJson['id'] ?? parsedJson['userID'] ?? '',
        profilePictureURL: parsedJson['profilePictureURL'] ?? '');
  }

  // Create an json encode version of the User Class (for Data saving)
  Map<String, dynamic> toJson() {
    return {
      'email': this.email,
      'firstName': this.firstName,
      'lastName': this.lastName,
      'phoneNumber': this.phoneNumber,
      'id': this.userID,
      'facebook_accesstoken': this.facebook_accesstoken,
      'twitter_accesstoken': this.twitter_accesstoken,
      'linkedin_accesstoken': this.linkedin_accesstoken,
      'facebook_profilePictureURL': this.facebook_profilePictureURL,
      'twitter_profilePictureURL': this.twitter_profilePictureURL,
      'active': this.active,
      'profilePictureURL': this.profilePictureURL,
      'appIdentifier': this.appIdentifier
    };
  }
}
