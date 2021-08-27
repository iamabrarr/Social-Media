class MyProfile {
  String name,
      followers,
      email,
      following,
      uploads,
      posts,
      country,
      city,
      bio,
      image,
      num,
      post1,
      post2,
      post3,
      post4,
      post5;
  MyProfile({
    this.name,
    this.num,
    this.image,
    this.followers,
    this.following,
    this.country,
    this.city,
    this.bio,
    this.posts,
    this.uploads,
    this.email,
    this.post1,
    this.post2,
    this.post3,
    this.post4,
    this.post5,
  });
}

List<MyProfile> postsdetails = [
  post1,
  post2,
  post3,
  post4,
  post5,
];
MyProfile post1 = MyProfile(
  posts: 'assets/Images/Profile1/car.jpg',
);
MyProfile post2 = MyProfile(
  posts: 'assets/Images/Profile1/garden.jpg',
);
MyProfile post3 = MyProfile(
  posts: 'assets/Images/Profile1/house.jpg',
);
MyProfile post4 = MyProfile(
  posts: 'assets/Images/Profile1/party.jpg',
);
MyProfile post5 = MyProfile(
  posts: 'assets/Images/Profile1/red.jpg',
);
List<MyProfile> profiles = [profile1, profile2];
MyProfile profile1 = MyProfile(
    name: 'Abrar Ahmad',
    image: 'assets/Images/abrar.jpg',
    uploads: '54',
    followers: '156k',
    post1: 'assets/Images/Profile2/cricket.jpg',
    post2: 'assets/Images/Profile2/Dani.jpg',
    post3: 'assets/Images/Profile2/Sheesha.jpg',
    post4: 'assets/Images/Profile2/iphone.jpg',
    post5: 'assets/Images/Profile2/Sheesha.jpg',
    following: '43',
    country: 'Pakistan',
    city: 'RahimYarKhan',
    bio: '◼ You can never go wrong with a little me.',
    email: 'abrarahmad4293@gmail.com',
    num: '+923017663135');
MyProfile profile2 = MyProfile(
    name: 'Amad Zahid',
    image: 'assets/Images/amad.jpg',
    uploads: '43',
    followers: '65',
    following: '324',
    country: 'Bangladesh',
    city: 'Dhaka',
    bio: 'I am a Bad boy because everyone calls me a bad boy.',
    posts: '5',
    post1: 'assets/Images/Profile2/cricket.jpg',
    post2: 'assets/Images/Profile2/Dani.jpg',
    post3: 'assets/Images/Profile2/Sheesha.jpg',
    post4: 'assets/Images/Profile2/iphone.jpg',
    post5: 'assets/Images/Profile2/Sheesha.jpg',
    email: 'amadzahid4293@gmail.com',
    num: '+923013782342');
