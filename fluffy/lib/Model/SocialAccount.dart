import 'dart:io';

class User {
  String email;
  String firstName;
  String lastName;

  String phoneNumber;

  bool active;

  String userID;
  String profilePictureURL;
  String facebook_profilePictureURL;
  String twitter_profilePictureURL;
  String linkedin_profilePictureURL;

  String facebook_accesstoken;
  String facebook_refreshtoken;
  String twitter_accesstoken;
  String twitter_refreshtoken;
  String linkedin_accesstoken;
  String linkedin_refreshtoken;

  bool selected;

  String appIdentifier;

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
      this.profilePictureURL = ''})
      : this.appIdentifier = 'Flutter Login Screen ${Platform.operatingSystem}';

  String fullName() {
    return '$firstName $lastName';
  }

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return new User(
        email: parsedJson['email'] ?? '',
        firstName: parsedJson['firstName'] ?? '',
        lastName: parsedJson['lastName'] ?? '',
        active: parsedJson['active'] ?? false,
        facebook_accesstoken: parsedJson['facebook'] ?? '',
        twitter_accesstoken: parsedJson['twitter'] ?? '',
        linkedin_accesstoken: parsedJson['linkedin'] ?? '',
        phoneNumber: parsedJson['phoneNumber'] ?? '',
        userID: parsedJson['id'] ?? parsedJson['userID'] ?? '',
        profilePictureURL: parsedJson['profilePictureURL'] ?? '');
  }

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
      'active': this.active,
      'profilePictureURL': this.profilePictureURL,
      'appIdentifier': this.appIdentifier
    };
  }
}
