import 'package:flutter/material.dart';

void main() {
  runApp(const NinjaPass());
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text('Ninja Pass'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://getwallpapers.com/wallpaper/full/9/2/6/967229-shinobi-wallpapers-1920x1080-screen.jpg'),
                radius: 60.0,
              ),
            ),
            const Divider(
              thickness: 2.0,
              height: 20.0,
            ),
            Text(
              'Name',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  color: Colors.blueGrey[100]),
            ),
            Text(
              'Wande Lee',
              style: TextStyle(fontSize: 30.0, color: Colors.amber[800]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  color: Colors.blueGrey[100]),
            ),
            Text(
              '8',
              style: TextStyle(fontSize: 30.0, color: Colors.amber[800]),
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blueGrey[300],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'wande.lee@ninja.com',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      color: Colors.blueGrey[300]),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class NinjaPass extends StatefulWidget {
  const NinjaPass({Key? key}) : super(key: key);

  @override
  _NinjaPassState createState() => _NinjaPassState();
}

class _NinjaPassState extends State<NinjaPass> {
  int _incrementCounter = 0;
  List<String> quotes = ['be yourself', 'bee good'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: const Text('Ninja Pass'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://getwallpapers.com/wallpaper/full/9/2/6/967229-shinobi-wallpapers-1920x1080-screen.jpg'),
                radius: 60.0,
              ),
            ),
            const Divider(
              thickness: 2.0,
              height: 20.0,
            ),
            Text(
              'Name',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  color: Colors.blueGrey[100]),
            ),
            Text(
              'Wande Lee',
              style: TextStyle(fontSize: 30.0, color: Colors.amber[800]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  color: Colors.blueGrey[100]),
            ),
            Text(
              '$_incrementCounter',
              style: TextStyle(fontSize: 30.0, color: Colors.amber[800]),
            ),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.blueGrey[300],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'wande.lee@ninja.com',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0,
                      color: Colors.blueGrey[300]),
                ),
              ],
            ),
            Row(
              children: [Text('data')],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: quotes.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(quotes[index]),
                    trailing: Text('data'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _incrementCounter++;
          });
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add,
        ),
      ),
    ));
  }
}
