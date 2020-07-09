import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Arjun"),
            accountEmail: Text("arjun@mail"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Arjun"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("arjun@gmail.com"),
            subtitle: Text("demoapp@gmail"),
            trailing: Icon(Icons.mail),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Arjun"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
