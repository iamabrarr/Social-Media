import 'package:scoialmedia/models/users.dart';

class Message {
  final bool sender;
  final String time, text, name, image;
  final bool story;
  final bool unread;
  final int id;
  final bool online;
  Message({
    this.online,
    this.sender,
    this.time,
    this.text,
    this.unread,
    this.story,
    this.name,
    this.id,
    this.image,
  });
}
List<Message> chats = [
  Message(
    id: 1,
    name: 'Rashid mirani',
    image: 'assets/Images/rashid.jpg',
    time: '5:30 PM',
    text: 'Hey dude! Even dead I\'m the hero. Love you 3000 guys.',
    unread: true,
    story: false,
    online:true,
  ),
  Message(
    id: 2,
    name: 'Amad zahid',
    image: 'assets/Images/amad.jpg',
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    unread: true,
    story: true,
    online:false,
  ),
  Message(
    id: 3,
    name: 'Hamza Shehroz',
    image: 'assets/Images/hamza.jpg',
    time: '3:30 PM',
    text: 'WOW! this soul world is amazing, but miss you guys.',
    unread: false,
    story: true,
    online:false,
  ),
  Message(
      id: 5,
      name: 'Uzair mushtaq',
      image: 'assets/Images/uzair.jpg',
      time: '4:54PM',
      text: 'Yes Abrar Ahmad!',
      story : false,
      unread: false,
      online: true,
      ),
  Message(
      id: 6,
      name: 'Lana Rhodes',
      image: 'assets/Images/profile.jpg',
      text: 'May I help you?',
      time: '2:05Am',
      story: false,
      unread: false,
      online: false,
      ),
  Message(
    id: 4,
    name: 'Rayyan Maqsood',
    image: 'assets/Images/rayyan.jpg',
    time: '2:30 PM',
    text: 'I\'m exposed now. Please help me to hide my identity.',
    unread: true,
    story: true,
    online: true,
  ),
];
List<Message> messages(){
  return [
    Message(
    sender: true,
    time: '5:30 PM',
    text: 'Hey dude! Event dead I\'m the hero. Love you 3000 guys.',
    unread: true,
  ),
  Message(
    sender: false,
    time: '4:30 PM',
    text: 'We could surely handle this mess much easily if you were here.',
    unread: true,
  ),
  Message(
    sender: true,
    time: '3:45 PM',
    text: 'Take care of peter. Give him all the protection & his aunt.',
    unread: true,
  ),
  Message(
    sender: true,
    time: '3:15 PM',
    text: 'I\'m always proud of her and blessed to have both of them.',
    unread: true,
  ),
  Message(
    sender: true,
    time: '2:30 PM',
    text:
        'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    unread: true,
  ),
  Message(
    sender: false,
    time: '2:30 PM',
    text:
        'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    unread: true,
  ),
  Message(
    sender: true,
    time: '2:30 PM',
    text: 'Yes Tony!',
    unread: true,
  ),
  Message(
    sender:false,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    unread: true,
  ),
  Message(
    sender: true,
    time: '2:02PM',
    text: 'See you soon',
    unread: false,
  )

  ];
} 
  
