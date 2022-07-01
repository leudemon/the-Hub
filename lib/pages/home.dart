import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final Color _color = Colors.white;
  final Color? _bgcolor = Colors.grey[900];
  final Image titleImage = Image.asset('assets/images/the hub.png');
  final Image titleImage2 = Image.asset('assets/images/mia2.jpg');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgcolor,

      //Appbar

      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white70,
          ),
        ),
        title: titleImage,
        elevation: 1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 128, 154, 167),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            onPressed: (() {
              print('pressed');
            }),
            tooltip: 'menu',
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white70,
            ),
          ),
        ],
      ),

      //Bottom nav bar

      bottomNavigationBar: menu(),
      //body

      body: TabBarView(
        //controller: TabController(length: 3, vsync: this, initialIndex: 0),
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                      elevation: 10,
                      color: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: SizedBox(
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: const <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: CircleAvatar(
                                      radius: 42,
                                      backgroundImage:
                                          AssetImage('assets/images/mia.jpg'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: ListTile(
                                        title: Text(
                                          'Live cams',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Icon(
                                      Icons.video_camera_front_outlined,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Scaffold(
                backgroundColor: _bgcolor,
                floatingActionButton: FloatingActionButton.extended(
                  elevation: 10,
                  splashColor: Colors.amber,
                  backgroundColor: _bgcolor,
                  foregroundColor: Colors.white60,
                  onPressed: () {
                    Navigator.pushNamed(context, '/gallery');
                  },
                  label: const Text('Gallery'),
                ),
                body: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      leading: const Icon(Icons.search),
                      automaticallyImplyLeading: true,
                      pinned: true,
                      floating: false,
                      flexibleSpace: Image.asset('assets/images/mia2.jpg',
                          fit: BoxFit.fitWidth),
                      expandedHeight: 200,
                    ),
                    SliverList(
                      // Use a delegate to build items as they're scrolled on screen.
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => ListTile(
                          trailing: const Icon(Icons.open_in_new),
                          iconColor: Colors.white70,
                          title: Text(
                            'Link $index',
                            style: const TextStyle(color: Colors.orangeAccent),
                          ),
                          subtitle: const Text('Click hEre!'),
                        ),
                        // Builds 1000 ListTiles
                        childCount: 1000,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/day.jpg'),
              fit: BoxFit.fill,
            )),
          ),
        ],
      ),
    );
  }
}

Widget menu() {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Color.fromARGB(255, 33, 33, 33),
          blurRadius: 2,
        ),
      ],
      color: Colors.black87,
    ),
    // color: Colors.amberAccent,
    child: const TabBar(
      automaticIndicatorColorAdjustment: true,
      padding: EdgeInsetsDirectional.all(2),
      labelColor: Colors.orangeAccent,
      indicatorColor: Colors.orange,
      indicatorWeight: 3,
      unselectedLabelColor: Colors.white54,
      tabs: [
        Tab(
          icon: Icon(Icons.home),
          text: 'Home',
          height: 55,
          iconMargin: EdgeInsets.only(bottom: 2),
        ),
        Tab(
          icon: Icon(Icons.card_giftcard_outlined),
          text: 'gifts',
          height: 55,
          iconMargin: EdgeInsets.only(bottom: 2),
        ),
        Tab(
          icon: Icon(Icons.message_outlined),
          text: 'Chats',
          height: 55,
          iconMargin: EdgeInsets.only(bottom: 2),
        )
      ],
      isScrollable: false,
    ),
  );
}
