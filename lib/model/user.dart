class User {
  String email;
  String nickName;
  String firstName;
  String lastName;
  String picture;
  String sex;
  String birthday;
  String timezone;
  String activity;
  int height;
  double weight;

  User(
      {this.email,
      this.nickName,
      this.firstName,
      this.lastName,
      this.picture,
      this.sex,
      this.birthday,
      this.timezone,
      this.height,
      this.weight,
      this.activity});

  factory User.fromJson(Map<String, dynamic> json) => User(
      email: json['userAccountData']['email'],
      nickName: json['userAccountData']['nickName'],
      firstName: json['userAccountData']['firstName'],
      lastName: json['userAccountData']['lastName'],
      picture: json['userAccountData']['picture'],
      sex: json['userAccountData']['sex'],
      birthday: json['userAccountData']['birthday'],
      timezone: json['userAccountData']['timezone'],
      weight: json['weight'],
      height: json['height'],
      activity: json['activity']);
}
