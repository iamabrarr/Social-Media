import 'package:flutter/material.dart';
import 'package:scoialmedia/models/users.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    Key key,
  }) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Users> visibleFriends;
  bool result = false;
  @override
  void initState() {
    visibleFriends = details;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.06,
                width: size.width * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.purple[700],
                      width: 2,
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.black.withOpacity(0.10))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(fontWeight: FontWeight.w300),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                result = !result;
                              });
                            },
                            icon: Icon(
                              Icons.search,
                              color: Colors.purple[700],
                            ))),
                    onChanged: (String value) {
                      visibleFriends = details
                          .where((details) => details.name.contains(value))
                          .toList();
                      setState(() {});
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              result
                  ? Expanded(
                      child: ListView.builder(
                      itemCount: visibleFriends.length,
                      itemBuilder: (contex, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: ClipOval(
                                      child: Image.asset(
                                        visibleFriends[index].image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        visibleFriends[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            visibleFriends[index].city + ",",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            visibleFriends[index].country,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 50),
                                child: Container(
                                  height: 1,
                                  width: size.width * 0.90,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ))
                  : Center(
                      child: Column(
                      children: [
                        SizedBox(height: 30),
                        Text('"Search Results"'),
                      ],
                    )),
            ],
          ),
        ),
      ),
    );
  }
}
