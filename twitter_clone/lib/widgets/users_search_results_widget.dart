import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget {
  late final String name;
  late final String username;
  late final String imgUrl;
  late final String bio;

  UsersSearchResultsWidget(
    {Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
    required this.bio,})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      subtitle: Text(
        '$bio\n@$username',
        style: TextStyle(
          fontSize: 11,
        )
      ),
    );
  }
}