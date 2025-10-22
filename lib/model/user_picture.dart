class UserPicture {
  final String large;
  final String medium;
  final String thumbnail;

  UserPicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  factory UserPicture.fromMap(Map<String, dynamic> map) {
    return UserPicture(
      large: map['large'],
      medium: map['medium'],
      thumbnail: map['thumbnail'],
    );
  }
}