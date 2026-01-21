import 'package:flutter/material.dart';

class Module14Class3 extends StatefulWidget {
  const Module14Class3({super.key});

  @override
  State<Module14Class3> createState() => _Module14Class3State();
}

class _Module14Class3State extends State<Module14Class3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(
              color: Colors.white,
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(125),
                ),
                // indicatorPadding: EdgeInsets.all(2),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.deepPurple,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.favorite), text: "Favourite"),
                  Tab(icon: Icon(Icons.settings), text: "Settings"),
                ],
              ),
            ),
          ),
        ),

        body: TabBarView(
          children: [
            Container(
              height: 50,
              width: 50,

              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGmWWVkak3lST3VXtqqTMXB3KmnuE7ZJdtJw&s",
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.yellow),
              child: Text("Favourite"),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(color: Colors.red),
              child: Text("Settings"),
            ),
          ],
        ),

        drawer: Drawer(
          shadowColor: Colors.red,
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        "https://img.freepik.com/premium-vector/avatar-profile-icon-flat-style-female-user-profile-vector-illustration-isolated-background-women-profile-sign-business-concept_157943-38866.jpg?semt=ais_hybrid&w=740&q=80",
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rokaya Raka",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "rokayaraka251@gmail.com",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),

              ListTile(title: Text("Profile"), onTap: () {}),
              Divider(),
              ListTile(title: Text("Address"), onTap: () {}),
              Divider(),
              ListTile(title: Text("Academic Certificates "), onTap: () {}),
              Divider(),
              ListTile(title: Text("Semester"), onTap: () {}),
              Divider(),
            ],
          ),
        ),

        endDrawer: Drawer(backgroundColor: Colors.amber),
      ),
    );
  }
}
