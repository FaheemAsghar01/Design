import 'package:flutter/material.dart';

class Interface extends StatelessWidget {
  const Interface({Key? key}) : super(key: key);

  Widget allListTiles(IconData lead, IconData trail, String text) {
    return ListTile(
      tileColor: const Color.fromARGB(92, 210, 198, 198),
      leading: Icon(lead),
      title: Text(
        text,
      ),
      trailing: Icon(trail),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(
            Icons.star_border,
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundColor: Color.fromARGB(255, 203, 205, 42),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 55,
                child: Icon(
                  Icons.person_outlined,
                  color: Color.fromARGB(255, 203, 205, 42),
                  size: 50,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              'John Doe',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text('John.doe@example.com'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(255, 203, 205, 42),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text('Upgrade to Pro'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: allListTiles(
                Icons.privacy_tip_outlined, Icons.forward_outlined, 'Privacy'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: allListTiles(Icons.history_outlined, Icons.forward_outlined,
                'Purcahse History'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: allListTiles(
                Icons.help_outline, Icons.forward_outlined, 'Help and Support'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: allListTiles(
                Icons.settings_outlined, Icons.forward_outlined, 'Settings'),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: allListTiles(Icons.person_add_outlined,
                Icons.forward_outlined, 'invite a Friend'),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 44, 44, 41),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
