import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String name;
  final String username;
  final String postBody;
  final String ImgUrl;

  const PostWidget({
    super.key,
    required this.name,
    required this.username,
    required this.postBody,
    required this.ImgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(ImgUrl),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '@$username',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 11,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_drop_down),
                  )
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: Text(postBody),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.mode_comment_rounded,
                  ),
                  Icon(
                    Icons.repeat
                  ),
                  Icon(
                    Icons.thumb_up
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
