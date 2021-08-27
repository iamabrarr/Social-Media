class Users {
  String name, country, city, image, story, post, storytime, posttime;
  int id;
  Users({
    this.name,
    this.country,
    this.image,
    this.post,
    this.story,
    this.posttime,
    this.storytime,
    this.city,
    this.id,
  });
}

List<Users> details = [
  user1,
  user2,
  user3,
  user4,
];
Users user1 = Users(
  id: 1,
  name: 'Abrar',
  country: 'America',
  city: 'Rahim Yar Khan',
  image: 'assets/Images/abrar.jpg',
  post: 'assets/Images/post1.jpg',
  story: 'assets/Images/story5.jpg',
  storytime: '15m',
  posttime: '3m',
);
Users user2 = Users(
    id: 2,
    name: 'Amad',
    country: 'Bangladesh',
    city: 'Dhaka',
    image: 'assets/Images/amad.jpg',
    post: 'assets/Images/post2.jpg',
    story: 'assets/Images/Profile2/iphone.jpg',
    storytime: '7h',
    posttime: '1h');
Users user3 = Users(
    id: 3,
    name: 'Hamza',
    country: 'India',
    city: 'Delhi',
    image: 'assets/Images/hamza.jpg',
    post: 'assets/Images/post3.jpg',
    story: 'assets/Images/story4.jpg',
    storytime: '4h',
    posttime: '20h');
Users user4 = Users(
    id: 4,
    name: 'Rayyan',
    country: 'Pakistan',
    city: 'Rahim Yar Khan',
    image: 'assets/Images/rayyan.jpg',
    post: 'assets/Images/post4.jpg',
    story: 'assets/Images/story5.jpg',
    storytime: '43m',
    posttime: '2m');
