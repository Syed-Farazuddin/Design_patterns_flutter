class User {
  String? gender;
  Name? name;
  Location? location;
  Picture? picture;
  User({
    required this.gender,
    required this.name,
    required this.picture,
    required this.location,
  });

  @override
  String toString() {
    // TODO: implement toString
    return "User{$gender,$name,$location,$picture,$picture}";
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json['gender'],
      name: Name(
        title: json['name']['title'],
        first: json['name']['first'],
        last: json['name']['last'],
      ),
      picture: Picture(
        large: json['picture']['large'],
        medium: json['picture']['medium'],
        thumbnail: json['picture']['thumbnail'],
      ),
      location: Location(
        street: Street(
          name: json['location']['street']['name'],
          number: json['location']['street']['number'],
        ),
        city: json['location']['city'],
        state: json['location']['state'],
        country: json['location']['country'],
      ),
    );
  }
}

class Name {
  String? title;
  String? first;
  String? last;
  Name({
    required this.title,
    required this.first,
    required this.last,
  });
  @override
  String toString() {
    return "{Name Title: $title  Firstname: $first Lastname: $last}";
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  Location({
    required this.street,
    required this.city,
    required this.state,
    required this.country,
  });
}

class Street {
  int? number;
  String? name;
  Street({required this.number, required this.name});
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;
  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
}
