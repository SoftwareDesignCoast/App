import 'package:flutter/material.dart';
//import 'package:tides/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WaveWatcher"),
        centerTitle: true,
        backgroundColor: Colors.cyan[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
            color: Colors.teal[100],
            child: const Center(
              child: Image(
                image: AssetImage('assets/ireland.png'),
                height: 250.0,
              ),
            ),
          ),
          const SearchCol(
            title: 'Page one',
          ),
        ],
      ),
    );
  }
}

//will have to be statefull in future
class SearchCol extends StatelessWidget {
  const SearchCol({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[400],
      child: Column(
        children: [
          Container(
              child: ElevatedButton(
            onPressed: () => {print("Button 1 was pressed")},
            child: const Text("Location 1"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FirstPage(title: 'Tides');
              }));
            },
            child: const Text("Skerries"),
          ),
          ElevatedButton(
            onPressed: () => {print("Button 3 was pressed")},
            child: const Text("Location 3"),
          ),
          ElevatedButton(
            onPressed: () => {print("Button 4 was pressed")},
            child: const Text("Location 4"),
          ),
          ElevatedButton(
            onPressed: () => {print("Button 5 was pressed")},
            child: const Text("Location 5"),
          ),
          ElevatedButton(
            onPressed: () => {print("Button 5 was pressed")},
            child: const Text("Location 6"),
          ),
        ],
      ),
    );
  }
}

//skerries page
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 103, 150, 189),
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 199, 215, 228),
          height: 600,
          width: 380,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: const Color.fromARGB(255, 103, 150, 189),
                  child: Image.asset('assets/skerries_map.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 103, 150, 189),
                  child: const Text(
                    'Description: Skerries is a small fishing town in North Dublin. It is a popular place for swimming, kayaking and fishing',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 103, 150, 189),
                  child: Align(
                    alignment: const Alignment(-1.0, -0.2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 97, 162, 194),
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SecondScreen(title: 'Tides');
                        }));
                      },
                      child: const Text('Tides'),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 103, 150, 189),
                  child: Align(
                    alignment: const Alignment(-1.0, -0.2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 97, 162, 194),
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Weather(title: 'Weather');
                        }));
                      },
                      child: const Text('Weather'),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 103, 150, 189),
                  child: Align(
                    alignment: const Alignment(-1.0, -0.2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 97, 162, 194),
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Lifegaurds(title: 'Lifegaurd Info');
                        }));
                      },
                      child: const Text('Lifegaurd Info'),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 103, 150, 189),
                  child: Align(
                    alignment: const Alignment(-1.0, -0.3),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 97, 162, 194),
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Activities(title: 'Activities');
                        }));
                      },
                      child: const Text('Activities'),
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SearchCol(title: 'Skerries');
            }));
          },
          child: const Text('Go Back'),
        ),
                )
              ]),
        ),
      ),
    );
  }
}

//tides pages
class Tides extends StatelessWidget {
  const Tides({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FirstPage(title: 'Skerries');
            }));
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

//weather page
class Weather extends StatelessWidget {
  const Weather({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FirstPage(title: 'Skerries');
            }));
          },
          child: const Text('Skerries'),
        ),
      ),
    );
  }
}

//lifegaurd info
class Lifegaurds extends StatelessWidget {
  const Lifegaurds({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifegaurding Info'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text( 'Lifegaurd on Duty: \n ' ),
            const Text('July:   11am - 7pm \n'),
            const Text ('June:   Saturday and Sunday 11am - 7pm \n'),
            const Text('August:   11am - 7pm \n,'),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FirstPage(title: 'Skerries');
                }));
              },
              child: const Text('Skerries'),
            ),
          ],
        ),
      ),
    );
  }
}

//activities
class Activities extends StatelessWidget {
  const Activities({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FirstPage(title: 'Skerries');
            }));
          },
          child: const Text('Skerries'),
        ),
      ),
    );
  }
}


 
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tide Forecast: Skerries"),
        ),    
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Padding(padding: EdgeInsets.only(top:30)),
            Image.asset('assets/tides_skerries.png'),
            const Text("\n \n Predicted Tides: \n -> First High Tide at 09:50am.  \n -> First Low Tide at 03:05am. \n -> Second High Tide at 10:29pm. \n -> Second Low Tide at 03:38pm."),

            Container(
              child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FirstPage(title: 'Skerries');
            }));
          },
          child: const Text('Go Back'),
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}