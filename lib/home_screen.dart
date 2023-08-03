import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: (AppBar(
            title: Text("WhatsApp"),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 20),
              PopupMenuButton(
                  icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(value: "1", child: Text("New Group")),
                        PopupMenuItem(value: "2", child: Text("Settings")),
                        PopupMenuItem(value: "3", child: Text("Logout")),
                      ]),
              SizedBox(
                width: 20,
              )
            ],
          )),
          body: TabBarView(children: [
            Text("Camera"),
            ListView.builder(
                // For Chats
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/Moon.jpeg"),
                      ),
                      title: Text("Amin Ahsan"),
                      subtitle: Text("How Are you!"),
                      trailing: Text("5:08 pm"));
                }),
            ListView.builder(

                // For Status
                itemCount: 44,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("images/Moon.jpeg"),
                    ),
                    title: Text("Muhammad Husnain"),
                    subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Text("6 minutes ago")),
                  );
                }),
            ListView.builder(
                // For Calls
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/Moon.jpeg"),
                      ),
                      title: Text("Amin Ahsan"),
                      subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.call, color: Colors.lightGreen),
                      ),
                      trailing: Text(
                        "Today, 10:36 AM",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ));
                }),
          ]),
        ));
  }
}
