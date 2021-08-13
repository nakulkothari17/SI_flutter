class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'assets/images/DP9.jpg',
  isOnline: true,
);

// USERS
final User raju = User(
  id: 1,
  name: 'Raju',
  imageUrl: 'assets/images/DP1.jpg',
  isOnline: true,
);
final User shyam = User(
  id: 2,
  name: 'Shyam',
  imageUrl: 'assets/images/DP2.jpg',
  isOnline: true,
);
final User baburav = User(
  id: 3,
  name: 'Baburav',
  imageUrl: 'assets/images/DP3.jpg',
  isOnline: false,
);
final User munna = User(
  id: 4,
  name: 'Munnabhai',
  imageUrl: 'assets/images/DP4.jpg',
  isOnline: false,
);
final User pappu = User(
  id: 5,
  name: 'Pappu',
  imageUrl: 'assets/images/DP5.jpg',
  isOnline: true,
);
final User totla = User(
  id: 6,
  name: 'Totla',
  imageUrl: 'assets/images/DP6.jpg',
  isOnline: false,
);
final User kachra = User(
  id: 7,
  name: 'KachraSheth',
  imageUrl: 'assets/images/DP7.jpg',
  isOnline: false,
);
final User gorilla = User(
  id: 8,
  name: 'Gorilla',
  imageUrl: 'assets/images/DP8.jpg',
  isOnline: false,
);
