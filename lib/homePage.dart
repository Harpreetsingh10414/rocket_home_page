import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssestImage("images/bg.jpeg"), fit: BoxFit.cover),
      //   ),
      // ),
      backgroundColor: Colors.black45,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            expandedHeight: 170,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Image.asset("images/rocketForAppBar.jpg", fit: BoxFit.fill),
            ),
          ),

          // SizedBox(
          //   height: 20,
          // ),

          // sliver items

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    //onChanged: (value) => _runFilter(value),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 15.0),
                      hintText: "Search",
                      suffixIcon: const Icon(Icons.search),
                      //prefix: Icon(Icon.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: const BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),

          // SliverToBoxAdapter(
          //   child: GridView.builder(
          //       itemCount: 10,
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 5),
          //       itemBuilder: (context, index) {
          //         return Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 50,
          //             width: 50,
          //             color: Colors.blue,
          //           ),
          //         );
          //       }),
          // ),

          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(20.0),
          //       child: Container(
          //         height: 400,
          //         color: Colors.deepPurple[300],
          //       ),
          //     ),
          //   ),
          // ),

          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.all(20.0),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(20.0),
          //       child: Container(
          //         height: 400,
          //         color: Colors.deepPurple[300],
          //       ),
          //     ),
          //   ),
          // ),

          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 40,
              crossAxisSpacing: 50,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  //color: Colors.purple,
                  margin: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/planet.jpg"),
                    ),
                  ),
                  child: Text(
                    "Lorem ipsum",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),
          //),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(111, 66, 31, 82),
        child: Icon(
          Icons.add,
          size: 40.0,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Color.fromARGB(111, 66, 31, 82),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Home icon
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                  //live video icon
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.live_tv,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                ],
              ),

              //Right side icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //stories
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.amp_stories_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                  //down arrow icon
                  MaterialButton(
                    minWidth: 100,
                    onPressed: () {
                      // SetState(() {
                      //   currentScreen =
                      // });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_circle_down_rounded,
                          size: 35.0,
                          color: Colors.white,
                        ),
                        // Text('')
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
