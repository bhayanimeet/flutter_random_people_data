class People {
  final String gender;
  final String title; //
  final String first; //
  final String last; //
  final String city; //
  final String state; //
  final String country; //
  final int age; //
  final String image; //
  final String email; //
  final String username; //
  final dynamic phone; //
  final dynamic cel;

  People({
    required this.gender,
    required this.title,
    required this.first,
    required this.last,
    required this.city,
    required this.state,
    required this.country,
    required this.age,
    required this.image,
    required this.phone,
    required this.cel,
    required this.email,
    required this.username,
  });

  factory People.fromMap({required Map data}){
    return People(
      gender: data['results'][0]['gender'],
      title: data['results'][0]['name']['title'],
      first: data['results'][0]['name']['first'],
      last: data['results'][0]['name']['last'],
      city: data['results'][0]['location']['city'],
      state: data['results'][0]['location']['state'],
      country: data['results'][0]['location']['country'],
      age: data['results'][0]['dob']['age'],
      image: data['results'][0]['picture']['large'],
      email: data['results'][0]['email'],
      username: data['results'][0]['login']['username'],
      cel: data['results'][0]['cel'],
      phone: data['results'][0]['phone'],
    );
  }
}