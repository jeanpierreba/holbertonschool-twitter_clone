import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/users_search_results_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _searchController = _searchController;
    super.initState();
  }

  @override
  void dispose() {
    _searchController = _searchController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6),
          child: CircleAvatar(
            maxRadius: 10,
            backgroundImage: NetworkImage('https://mario.nintendo.com/static/fd723b2893d4d2b39ef71bfdb4e3329c/579b4/mario-background.png'),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          height: 38,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade500),
              hintText: "Search...",
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.lightBlue,
            ),
          ),
        ]
      ),
      body: SafeArea(child: ListView.builder(
        itemBuilder: (context, index) {
          return UsersSearchResultsWidget(
            name: 'Bowser',
            imgUrl: 'https://static.wikia.nocookie.net/mario/images/c/c8/NSMBUD_Bowser.png/revision/latest?cb=20220401141902&path-prefix=es',
            username: 'KingBowserKoopa',
            bio: "I'm the biggest, baddest brute around, and don't you forget it",
          );
        },
      )),
    );
  }
}