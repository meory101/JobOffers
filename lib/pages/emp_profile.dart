import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:kml/components/drawer.dart';
import 'package:kml/components/circular_button.dart';
import 'package:kml/components/label.dart';
import 'package:kml/components/profile_tag.dart';
import 'package:kml/components/rectangular_button.dart';
import 'package:kml/pages/create_experience.dart';
import 'package:kml/pages/create_job_opportunity.dart';
import 'package:kml/pages/edit_experience.dart';
import 'package:kml/pages/edit_Uprofile_info.dart';
import 'package:kml/pages/show_experience.dart';
import 'package:kml/theme/borders.dart';
import 'package:kml/theme/colors.dart';
import 'package:kml/theme/fonts.dart';

class EmpProfile extends StatefulWidget {
  const EmpProfile({super.key});

  @override
  State<EmpProfile> createState() => _EmpProfileState();
}

class _EmpProfileState extends State<EmpProfile> {
  GlobalKey<ScaffoldState> skey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: skey,
      drawer: Drawer(
        width: MediaQuery.of(context).size.width / 1.6,
        child: Drawerwidget(
          [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: maincolor),
                accountName: Text(
                  "Cristina Lemadol",
                  style: titlew,
                ),
                accountEmail: Text("user account", style: subwfont),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/wn.jpg"),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return ProfileInfo();
                  },
                ));
              },
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.person,
                  color: maincolor,
                  size: 20,
                ),
                title: Text(
                  "Edit profile Info",
                  style: subbfont,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.bookmark,
                color: maincolor,
                size: 20,
              ),
              title: Text(
                "My resume",
                style: subbfont,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: maincolor,
                size: 20,
              ),
              title: Text(
                "Logout",
                style: subbfont,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  print('bac image');
                },
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/t.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: MediaQuery.of(context).size.width / 3.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        print('profile image');
                      },
                      child: ProfileTag(
                        image: AssetImage("assets/images/wn.jpg"),
                        radius: 50,
                        name: Text(
                          '',
                          style: titleb,
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Text(
                          'Cristina Lemadol',
                          style: titlew,
                        ))
                  ],
                ),
              ),
              Positioned(
                top: 10,
                left: 0,
                child: IconButton(
                  onPressed: () {
                    skey.currentState!.openDrawer();
                  },
                  icon: Image.asset(
                    'assets/images/bars-sort.png',
                    width: 15,
                    height: 20,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 200,
                margin: EdgeInsets.only(
                  top: 200,
                  bottom: 14,
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(mainborder),
                    topRight: Radius.circular(mainborder),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 14),
                      alignment: Alignment.topLeft,
                      child: Label(
                        title: Text(
                          'Graduated From ',
                          style: subbfont,
                        ),
                        content: Text(
                          'Damascus university',
                          style: greyfont,
                        ),
                        icon: Icon(
                          Icons.school_outlined,
                          color: maincolor,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 14),
                      alignment: Alignment.topLeft,
                      child: Label(
                        icon: Icon(
                          Icons.work_outline,
                          color: maincolor,
                          size: 20,
                        ),
                        title: Text(
                          'worked At ',
                          style: subbfont,
                        ),
                        content: Text(
                          'Mlas comapny',
                          style: greyfont,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 14),
                      alignment: Alignment.topLeft,
                      child: Label(
                        icon: Icon(
                          Icons.science_outlined,
                          color: maincolor,
                          size: 20,
                        ),
                        title: Text(
                          'Expert In ',
                          style: subbfont,
                        ),
                        content: Text(
                          'Experiences ',
                          style: greyfont,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: MediaQuery.of(context).size.height / 3,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return FocusedMenuHolder(
                              onPressed: () {},
                              menuItems: <FocusedMenuItem>[
                                FocusedMenuItem(
                                    title: Text("show"),
                                    trailingIcon: Icon(
                                      Icons.play_circle_fill_rounded,
                                      color: maincolor,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => ShowExp(),
                                        ),
                                      );
                                    }),
                                FocusedMenuItem(
                                    title: Text("create new"),
                                    trailingIcon: Icon(
                                      Icons.create_new_folder,
                                      color: maincolor,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => NewExp(),
                                        ),
                                      );
                                    }),
                                FocusedMenuItem(
                                    title: Text("Edit"),
                                    trailingIcon: Icon(
                                      Icons.edit,
                                      color: maincolor,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => EditExp(),
                                        ),
                                      );
                                    }),
                                FocusedMenuItem(
                                    title: Text("Delete"),
                                    trailingIcon: Icon(
                                      Icons.delete,
                                      color: maincolor,
                                    ),
                                    onPressed: () {})
                              ],
                              child: Container(
                                  padding: EdgeInsets.only(bottom: 10),
                                  margin: EdgeInsets.only(right: 10),
                                  height:
                                      MediaQuery.of(context).size.height / 4,
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: bordercolor),
                                    borderRadius:
                                        BorderRadius.circular(mainborder),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                    3 -
                                                40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                mainborder),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                'assets/images/ff.jpg',
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Text(
                                        'flutter development',
                                        style: subbfont,
                                      )
                                    ],
                                  )));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
