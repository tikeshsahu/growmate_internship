import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  List names = [
    'Shivam',
    'Agni',
    'David',
  ];

  var relatedContent = [
    'British Pound will fall \n after  elections?',
    'Education is the most \n powerful weapon',
    'Advanced cooking for \n healthy cooking ',
    'Will china be able \n to invade Taiwan',
  ];

  var pics = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        activeColor: Colors.white,
        tabMargin: const EdgeInsets.all(10),

        onTabChange: (index) {},
        tabBorderRadius: 30,
        iconSize: 28,
        color: const Color.fromARGB(255, 143, 141, 141),
        curve: Curves.easeInCubic,
        //selectedIndex: currentIndex,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: const Color.fromARGB(255, 213, 78, 237),
        tabs: const [
          GButton(icon: Icons.home),
          GButton(icon: Icons.apps),
          GButton(icon: Icons.work_outline),
          GButton(icon: Icons.person),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: MediaQuery.of(context).size.height / 2.7,
            width: MediaQuery.of(context).size.width,
            child: Stack(fit: StackFit.expand, children: [
              ClipRRect(
                child: Image.network(
                  'https://images.thequint.com/thequint%2F2022-08%2F4b615dc0-39aa-4f35-befd-55749e9ccb2f%2FFZT1LotaQAEQFw4.jpg?auto=format%2Ccompress&fmt=webp&width=720',
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.6,
                        1,
                      ],
                      colors: [
                        Colors.transparent,
                        Color.fromARGB(215, 000, 000, 000),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                    )),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings_system_daydream,
                      color: Colors.white,
                    )),
              ),
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      // 'Will China invade Taiwan before end September?',
                      'India-China ties going \n through a bad patch',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 9,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 196, 193, 193),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://img.freepik.com/free-photo/yellow-watercolor-paper_95678-446.jpg?w=1060&t=st=1663412659~exp=1663413259~hmac=8293d6d109a23a3278a66841cc71f08828e66a584383314aae8324eebc1ff60a',
                  fit: BoxFit.fitWidth,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'CHANCE',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '11%',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_double_arrow_up_sharp),
                        color: const Color.fromARGB(255, 42, 236, 49),
                        iconSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '24H',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "+25495\$",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            '\$09',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: const Center(
                              child: Text(
                            'Yes',
                            style: TextStyle(
                                //color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                          height: MediaQuery.of(context).size.height / 28,
                          width: MediaQuery.of(context).size.width / 5.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xFF21FFAA),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 5.0,
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            '\$89',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 28,
                          width: MediaQuery.of(context).size.width / 5.5,
                          child: const Center(
                              child: Text(
                            'No',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xFFE432C1),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 5.0,
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: TabBar(
              indicatorColor: const Color(0xFFE432C1),
              indicatorWeight: 2.0,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              controller: _controller,
              isScrollable: true,
              labelColor: const Color(0xFFE432C1),
              labelStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: 'Research & News',
                ),
                Tab(
                  text: 'Reactions',
                ),
                Tab(
                  text: 'Related',
                ),
              ],
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: _controller,
            children: [
              Container(
                child: TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 18, top: 12),
                          child: Text(
                            '215 Expert Opinion',
                            style: TextStyle(
                                color: Color.fromARGB(255, 133, 131, 131),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 47,
                                backgroundColor: Color(0xFFF7E8F7),
                                child: CircleAvatar(
                                  radius: 38,
                                  backgroundColor: Color(0xFFF3D6F3),
                                  child: Text(
                                    '12%',
                                    style: TextStyle(
                                        color: Color(0xFFE432C1),
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  LinearPercentIndicator(
                                    curve: Curves.easeIn,
                                    width:
                                        MediaQuery.of(context).size.width /
                                            2.2,
                                    animation: true,
                                    lineHeight: 8.0,
                                    animationDuration: 2500,
                                    percent: 0.12,
                                    progressColor: const Color(0xFFE432C1),
                                    trailing: new Text(
                                      "12% Buy Yes",
                                      style: const TextStyle(
                                          color: Color(0xFFE432C1)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 19,
                                  ),
                                  LinearPercentIndicator(
                                    curve: Curves.easeIn,
                                    width:
                                        MediaQuery.of(context).size.width /
                                            2.2,
                                    animation: true,
                                    lineHeight: 8.0,
                                    animationDuration: 2500,
                                    percent: 0.88,
                                    linearStrokeCap: LinearStrokeCap.round,
                                    progressColor: const Color.fromARGB(
                                        255, 117, 114, 114),
                                    trailing: new Text(
                                      "88% Buy No",
                                      style: const TextStyle(
                                          color: Colors.grey),
                                    ),
                                  ),
                                  const SizedBox(height: 19),
                                  LinearPercentIndicator(
                                    curve: Curves.easeIn,
                                    width:
                                        MediaQuery.of(context).size.width /
                                            2.2,
                                    animation: true,
                                    lineHeight: 8.0,
                                    animationDuration: 2500,
                                    percent: 0.1,
                                    linearStrokeCap: LinearStrokeCap.round,
                                    progressColor: Colors.grey,
                                    trailing: new Text(
                                      "1% No Resolve",
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 134, 131, 131)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.80, 0.50),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.03,
                            height:
                                MediaQuery.of(context).size.height / 7.4,
                            //color: Colors.black26,
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 250,
                                  childAspectRatio: 1 / 2,
                                  //crossAxisSpacing: 10,
                                ),
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Card(
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6),
                                    ),
                                    child: Container(
                                        margin: const EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                  10.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '${names[index]}',
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const Text(
                                                    '1 Sept',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Text(
                                                'Last week, the dire warnings that appeared in the Wall street Journal, The Economist and Foreign Affairs about Chinas imminent war with or the scientific',
                                                maxLines: 4,
                                                overflow:
                                                    TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        )),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(width: 14),
                                      const Text(
                                        'Reactions',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.95,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: const Icon(
                                            Icons.cancel,
                                            size: 32,
                                          ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 21),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                31.2,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6.3,
                                        child: const Center(
                                            child: Text(
                                          'Top',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 11,
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                30.7,
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4.6,
                                        child: const Center(
                                            child: Text(
                                          'Newest',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 14),
                                const Divider(
                                  color: Color.fromARGB(255, 214, 213, 213),
                                  height: 1,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  width: MediaQuery.of(context).size.width,
                                  color: const Color.fromARGB(31, 83, 80, 80),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text.rich(
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  'Remember to keep comments respectful and to follow our ',
                                              style: TextStyle(fontSize: 14)),
                                          TextSpan(
                                            text: " Community Guidelines",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 14),
                                          )
                                        ])),
                                  ),
                                ),

                              ],
                            );
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    TextButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.person,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      label: const Text(
                                        '215',
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.grey),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    TextButton.icon(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.comment_rounded,
                                        color: Colors.grey,
                                        size: 30,
                                      ),
                                      label: const Text(
                                        '95K',
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_drop_down_circle,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                          ListTile(
                            leading: const CircleAvatar(
                              radius: 24,
                              backgroundColor:
                                  Color.fromARGB(255, 195, 14, 198),
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                  ),
                                  radius: 22,
                                ),
                              ),
                            ),
                            title: Container(
                              child: const Text.rich(
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  TextSpan(children: [
                                    TextSpan(
                                        text: 'Smriti',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    TextSpan(
                                      text:
                                          " India and China the two world giant's relationship is in a very critical phase and the January is the likely time since the heat in on between these countries",
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 15),
                                    )
                                  ])),
                            ),
                          ),
                          const ListTile(
                            leading: CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey,
                              child: CircleAvatar(
                                radius: 23,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80',
                                  ),
                                  radius: 22,
                                ),
                              ),
                            ),
                            title: Text.rich(
                                maxLines: 2,
                                TextSpan(children: [
                                  TextSpan(
                                      text: 'Shekhar',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  TextSpan(
                                    text:
                                        " India and China the two world giant's relationship is in a very critical phase and the January is the likely time since the heat in on between these countries",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 15),
                                  )
                                ])),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 65, top: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Add comment...',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Row(
                                    children: const [
                                      Text('😍'),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('😭'),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Icon(
                                        Icons.add_circle_outline,
                                        size: 17,
                                        color: Colors.grey,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Related(context),
                  ],
                ),
              ),
            ],
          ))
        ],
      )),
    );
  }

  GestureDetector Related(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 14),
                        const Text(
                          'Related',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.75,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.cancel,
                              size: 32,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 31.2,
                          width: MediaQuery.of(context).size.width / 6.3,
                          child: const Center(
                              child: Text(
                            'Top',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 30.7,
                          width: MediaQuery.of(context).size.width / 4.6,
                          child: const Center(
                              child: Text(
                            'Newest',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(
                    color: Color.fromARGB(255, 214, 213, 213),
                    height: 1,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 11,
                            ),
                            Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              elevation: 1,
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.1,
                                  height:
                                      MediaQuery.of(context).size.height / 10.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      color: Colors.white),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                4.2,
                                        decoration: const BoxDecoration(
                                            color: Colors.black12,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(24),
                                                topLeft: Radius.circular(24))),
                                        child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Image.network(
                                                'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                                                fit: BoxFit.cover,
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${relatedContent[index]}',
                                          style: const TextStyle(fontSize: 23),
                                          maxLines: 2,
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                elevation: 1,
                child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 9.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  topLeft: Radius.circular(24))),
                          child: Stack(fit: StackFit.expand, children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              fit: BoxFit.cover,
                            ),
                          ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Will India be able to get \n rid of Inflation?',
                            style: TextStyle(fontSize: 23),
                            maxLines: 2,
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                elevation: 1,
                child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 9.6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4.2,
                          decoration: const BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  topLeft: Radius.circular(24))),
                          child: Stack(fit: StackFit.expand, children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1489939078242-0a1dc4a08f06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              fit: BoxFit.cover,
                            ),
                          ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Will India be able to get \n rid of Inflation?',
                            style: TextStyle(fontSize: 23),
                            maxLines: 2,
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'more...',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
