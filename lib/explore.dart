import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

Widget explore = Container(
  child: Padding(
    padding: const EdgeInsets.only(top: 56.0),
    child: Column(
      children: [
        CarouselSlider(
          items: [
            Image(
              image: AssetImage('assets/images/1.jpg'),
            ),
            Image(
              image: AssetImage('assets/images/2.jpg'),
            ),
            Image(
              image: AssetImage('assets/images/3.jpg'),
            ),
            Image(
              image: AssetImage('assets/images/4.jpg'),
            ),
            Image(
              image: AssetImage('assets/images/5.jpg'),
            )
          ],
          options: CarouselOptions(
              height: 250,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 2.0, left: 8, right: 8, bottom: 6),
          child: Container(
            width: double.infinity,
            height: 300,
            child: ListView(
              children: [
                Text(
                  'Halloween is a holiday celebrated each year on October 31, and Halloween 2020 will occur on Saturday, October 31. The tradition originated with the ancient Celtic festival of Samhain, when people would light bonfires and wear costumes to ward off ghosts. In the eighth century, Pope Gregory III designated November 1 as a time to honor all saints. Soon, All Saints Day incorporated some of the traditions of Samhain. The evening before was known as All Hallows Eve, and later Halloween. Over time, Halloween evolved into a day of activities like trick-or-treating, carving jack-o-lanterns, festive gatherings, donning costumes and eating treats.',
                  style: TextStyle(fontSize: 17, fontFamily: 'GrenzeGotisch'),
                )
              ],
            ),
          ),
        )
      ],
    ),
  ),
);

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              circleColors: [
                Color(0xff02017b),
                Colors.orange,
                Color(0xff6f4cf7),
                Color(0xffaf97f7)
              ],
              iconTheme: IconThemeData(color: Colors.white70),
              activeIconTheme: IconThemeData(color: Colors.white),
              backgroundColor: Color(0xff02017b),
              titleStyle: TextStyle(color: Colors.white70, fontSize: 12),
              activeTitleStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              actionButtonDetails: SCActionButtonDetails(
                  color: Colors.black,
                  icon: Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  ),
                  elevation: 2),
              elevation: 2.0,
              items: [
                SCBottomBarItem(
                    icon: Icons.festival,
                    title: 'Explore',
                    onPressed: () {
                      setState(() {
                        explore = Padding(
                          padding: const EdgeInsets.only(top: 56.0, left: 6),
                          child: Container(
                            child: ListView(
                              children: [
                                Text(
                                  'Halloween 2020',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'SyneMono',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                ExpansionCard(
                                  background: Image(
                                    image: AssetImage('assets/images/6.jpg'),
                                    width: double.infinity,
                                  ),
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Trick Or Treat',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        ),
                                      ],
                                    ),
                                  ),
                                  children: [
                                    Container(
                                        color: Colors.black,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        child: Text(
                                          'Borrowing from European traditions, Americans began to dress up in costumes and go house to house asking for food or money, a practice that eventually became today’s “trick-or-treat” tradition. Young women believed that on Halloween they could divine the name or appearance of their future husband by doing tricks with yarn, apple parings or mirrors.',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontFamily: 'GrenzeGotisch'),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ExpansionCard(
                                  background: Image(
                                    image:
                                        AssetImage('assets/images/pumpkin.jpg'),
                                    width: double.infinity,
                                  ),
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Black Cats and Ghosts',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        )
                                      ],
                                    ),
                                  ),
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: Text(
                                        'Halloween has always been a holiday filled with mystery, magic and superstition. It began as a Celtic end-of-summer festival during which people felt especially close to deceased relatives and friends. For these friendly spirits, they set places at the dinner table, left treats on doorsteps and along the side of the road and lit candles to help loved ones find their way back to the spirit world.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'GrenzeGotisch'),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ExpansionCard(
                                  background: Image(
                                    image: AssetImage('assets/images/cake.jpg'),
                                    width: double.infinity,
                                  ),
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'All Souls Day and Souls Cake',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        )
                                      ],
                                    ),
                                  ),
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: Text(
                                        'The American Halloween tradition of trick-or-treating probably dates back to the early All Souls’ Day parades in England. During the festivities, poor citizens would beg for food and families would give them pastries called “soul cakes” in return for their promise to pray for the family’s dead relatives.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'GrenzeGotish'),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ExpansionCard(
                                  background: Image(
                                    image: AssetImage('assets/images/kids.jpg'),
                                    width: double.infinity,
                                  ),
                                  title: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'All Saints\' Day',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 30),
                                        )
                                      ],
                                    ),
                                  ),
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 7),
                                      child: Text(
                                        'On May 13, 609 A.D., Pope Boniface IV dedicated the Pantheon in Rome in honor of all Christian martyrs, and the Catholic feast of All Martyrs Day was established in the Western church. Pope Gregory III later expanded the festival to include all saints as well as all martyrs, and moved the observance from May 13 to November 1.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontFamily: 'GrenzeGotisch'),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      });
                    }),
                SCBottomBarItem(
                    icon: Icons.card_giftcard,
                    title: 'Celebration',
                    onPressed: () {}),
              ],
              circleItems: [
                SCItem(
                    icon: Icon(
                      Icons.format_quote_sharp,
                    ),
                    onPressed: () {
                      setState(() {
                        explore = Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/7.jpg'),
                                  fit: BoxFit.fill)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.format_quote,
                                color: Colors.white,
                                size: 40,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              RotateAnimatedTextKit(
                                text: [
                                  'It Stop wearing black, If they make color!',
                                  'It\'s all just a bunch of hocus pocus!!',
                                  'If there is no imagination there is no horror!!'
                                ],
                                textStyle: TextStyle(
                                    fontFamily: 'GrenzeGotish',
                                    fontSize: 40.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Icon(
                                Icons.format_quote,
                                color: Colors.white,
                                size: 40,
                              )
                            ],
                          ),
                        );
                      });
                    }),
                SCItem(
                    icon: Icon(Icons.people),
                    onPressed: () {
                      setState(() {
                        explore = SafeArea(
                          child: Container(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/8.jpg'),
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 350,
                                  child: ListView(
                                    children: [
                                      Center(
                                        child: Text(
                                          'Halloween Characters',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30,
                                              fontFamily: 'GrenzeGotisch'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AvatarGlow(
                                        glowColor: Colors.yellowAccent,
                                        endRadius: 120.0,
                                        duration: Duration(milliseconds: 2000),
                                        repeat: true,
                                        showTwoGlows: true,
                                        repeatPauseDuration:
                                            Duration(milliseconds: 100),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/girl.jpg'),
                                            backgroundColor: Colors.grey[100],
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Center(
                                        child: Text(
                                          'IT',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AvatarGlow(
                                        glowColor: Colors.green,
                                        endRadius: 120.0,
                                        duration: Duration(milliseconds: 2000),
                                        repeat: true,
                                        showTwoGlows: true,
                                        repeatPauseDuration:
                                            Duration(milliseconds: 100),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/boy.jpg'),
                                            backgroundColor: Colors.grey[100],
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Center(
                                        child: Text(
                                          'SanTun Shweee',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AvatarGlow(
                                        glowColor: Colors.red,
                                        endRadius: 120.0,
                                        duration: Duration(milliseconds: 2000),
                                        repeat: true,
                                        repeatPauseDuration:
                                            Duration(milliseconds: 100),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/girl1.jpg'),
                                            backgroundColor: Colors.grey[100],
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Center(
                                        child: Text(
                                          'Khine Khinetu',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AvatarGlow(
                                        glowColor: Colors.orange,
                                        endRadius: 120.0,
                                        duration: Duration(
                                          milliseconds: 2000,
                                        ),
                                        repeat: true,
                                        showTwoGlows: true,
                                        repeatPauseDuration:
                                            Duration(milliseconds: 100),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/girl4.jpg'),
                                            backgroundColor: Colors.grey[100],
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Center(
                                        child: Text(
                                          'Hlamy',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AvatarGlow(
                                        glowColor: Colors.cyan,
                                        endRadius: 120.0,
                                        duration: Duration(
                                          milliseconds: 2000,
                                        ),
                                        repeat: true,
                                        showTwoGlows: true,
                                        repeatPauseDuration:
                                            Duration(milliseconds: 100),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/girl5.jpg'),
                                            backgroundColor: Colors.grey[100],
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Center(
                                        child: Text(
                                          'Myokokoo',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AvatarGlow(
                                        glowColor: Colors.indigo,
                                        endRadius: 120.0,
                                        duration: Duration(milliseconds: 2000),
                                        repeat: true,
                                        showTwoGlows: true,
                                        repeatPauseDuration:
                                            Duration(milliseconds: 100),
                                        child: Material(
                                          elevation: 8.0,
                                          shape: CircleBorder(),
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/girl6.jpg'),
                                            backgroundColor: Colors.grey[100],
                                            radius: 50.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Center(
                                        child: Text(
                                          'Khine',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                    }),
              ],
              bnbHeight: 80),
          child: explore),
    );
  }
}
