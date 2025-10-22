import 'package:app1/model/user_dob.dart';
import 'package:app1/model/user_location.dart';
import 'package:app1/model/user_name.dart';
import 'package:app1/model/user_picture.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName(
      title: e['name']['title'],
      first: e["name"]['first'],
      last: e['name']['last'],
    );
    final date = (e['dob']['date']);
    final dob = UserDob(date: DateTime.parse(date), age: e['dob']['date']);
    final coordinates = LocationCoordinates(
      latitude: e['location']['coordinates']['latitude'],
      longitude: e['location']['coordinates']['longitude'],
    );
    final street = LocationStreet(
      number: e['location']['street']['number'],
      name: e['location']['street']['name'],
    );
    final timezone = LocationTimezone(
      offset: e['location']['timezone']['offset'],
      description: e['location']['timezone']['description'],
    );

    final location = UserLocation(
      street: street,
      city: e['location']['city'],
      state: e['location']['state'],
      country: e['location']['country'],
      postcode: e['location']['postcode'].toString(),
      coordinates: coordinates,
      timezone: timezone,
    );

    final picture = UserPicture.fromMap(e['picture']);

    return User(
      cell: e['cell'],
      email: e['email'],
      gender: e['gender'],
      nat: e['nat'],
      phone: e['phone'],
      name: name,
      dob: dob,
      location: location,
      picture: picture,
    );
  }

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
