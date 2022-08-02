import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              DrawerHeader(
                padding: const EdgeInsets.all(20),
                child: Align(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://external-preview.redd.it/h_bEzTX4zcSf5IWJtLMk5OQWRxZ2mhVCMdLfN7AcTLQ.jpg?auto=webp&s=41ec412012b9b51203c15025cc9ef49872bc9287'),
                            radius: 30.0,
                          ),
                          SizedBox(
                            width: 200,
                          )
                        ],
                      ),
                      Expanded(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          title: const Text(
                            "User Name",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: const Text("0 Followers"),
                          ),
                          Container(
                              padding: const EdgeInsets.all(5),
                              child: const Text("0 Following")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lists',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.flash_on),
            title: Text('Moments',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Settings and privacy',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Help Center',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Logout',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
