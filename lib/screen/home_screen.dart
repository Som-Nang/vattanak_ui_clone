import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vattanac_ui/data.dart';
import 'package:vattanac_ui/global.dart';
import 'package:typed_data/typed_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimary,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: kPrimary,
            expandedHeight: 80.0,
            flexibleSpace: FlexibleSpaceBar(
              background: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/banner.png"),
                        width: mq.width * 0.4,
                      ),
                      CircleAvatar(
                        radius: mq.width * 0.07,
                        backgroundColor: kDeepBlue.withValues(alpha: .2),
                        child: CircleAvatar(
                          radius: mq.width * 0.06,
                          backgroundImage: NetworkImage(
                            "https://cdn.i-scmp.com/sites/default/files/styles/1020x680/public/d8/images/canvas/2025/02/14/399a4243-c5ea-41f9-bdb0-47ca4a00132c_a775a7ba.jpg?itok=oTQYtIbb&v=1739524311",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: kDeepBlue,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "សួស្ដី 🙏 Somnang",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: mq.width * 0.04,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kPrimary.withValues(alpha: .1),
                                ),
                                child: Icon(
                                  CupertinoIcons.bell_solid,
                                  color: kPrimary,
                                  size: mq.width * 0.05,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: mq.height * 0.02),
                        Row(
                          children: [
                            Text(
                              "គណនី",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.withValues(alpha: .7),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              child: Container(
                                width: mq.width * 0.25,
                                height: mq.height * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: kYellow.withValues(alpha: .1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "-> បើកគណនី",
                                      style: TextStyle(
                                        color: kYellow,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: mq.height * 0.02),

                        Stack(
                          children: <Widget>[
                            Positioned(
                              child: Center(
                                child: Container(
                                  width: mq.width * .87,
                                  height: 145,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kDark,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kDeepBlue,
                                ),
                              ),
                            ),
                            Positioned(
                              child: Theme(
                                data: Theme.of(
                                  context,
                                ).copyWith(dividerColor: Colors.transparent),
                                child: ExpansionTile(
                                  showTrailingIcon: false,
                                  tilePadding: EdgeInsets.zero,
                                  title: Container(
                                    width: double.infinity,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(14),
                                      gradient: kLightBlueTOBlueLinearGradient,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    CupertinoIcons
                                                        .money_dollar_circle,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                  SizedBox(
                                                    width: mq.width * 0.01,
                                                  ),
                                                  Text(
                                                    "គណនីសន្សំទាំងអស់",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),

                                              Container(
                                                width: 24,
                                                height: 24,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: kPrimary.withValues(
                                                    alpha: .6,
                                                  ),
                                                ),
                                                child: Icon(
                                                  CupertinoIcons.eye_slash_fill,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "៛**,000 | \$**.58",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              Icon(
                                                CupertinoIcons.chevron_up,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  children: [],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: mq.height * 0.14,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        final option = options[index];

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: mq.width * 0.3,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: kPrimary.withValues(alpha: .1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: mq.height * 0.08,
                                    width: mq.width * 0.12,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: option["color"] as Color,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.string(
                                        option["icon"] as String,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    option["title"] as String,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "ពត៏មាន",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey.withValues(alpha: .7),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "មើលទាំងអស់",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: mq.height * .2,

                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: newsCard.length,
                      itemBuilder: (context, index) {
                        final data = newsCard[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: mq.width * .9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: kDark,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: mq.height * .1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(24),
                                      topLeft: Radius.circular(24),
                                    ),
                                    gradient: data["bgColor"] as Gradient,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data["title"] as String,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            InkWell(
                                              child: Container(
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: kDark.withValues(
                                                    alpha: .2,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                        left: 10,
                                                        right: 10,
                                                      ),
                                                  child: Center(
                                                    child: Text(
                                                      data["tag"] as String,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Row(
                                          children: [
                                            SvgPicture.string(
                                              data["icon"] as String,
                                              color: Colors.white,
                                              width: 50,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    bottom: 5,
                                    top: 10,
                                    right: 10,
                                  ),
                                  child: Center(
                                    child: Text(
                                      data['description'] as String,
                                      maxLines: 3,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "ប្រតិបត្តិការចុងក្រោយ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey.withValues(alpha: .7),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: mq.height * .5,
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blueGrey.withValues(
                                          alpha: .4,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: SvgPicture.asset(
                                          "assets/KHQR.svg",
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "បង់ប្រាក់ទៅ CHIN VIBOL",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                        Text(
                                          "Saving ****2915 | 11 មិនា 2025, 8:04 AM",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Colors.blueGrey.withValues(
                                              alpha: .7,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const Spacer(),

                                    InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          color: kRed.withValues(alpha: .2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                            left: 10,
                                            top: 4,
                                            bottom: 4,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "\$0.75",
                                              style: TextStyle(
                                                color: kRed,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kDark,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            backgroundColor: kDark,
            icon: SvgPicture.asset(
              "assets/logo.svg",
              height: mq.height * 0.04,
              width: mq.width * 0.04,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: kDark,
            icon: SvgPicture.string(
              '''<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16"><path fill="#fff" d="M10.28 1.72a.75.75 0 1 0-1.06 1.06L10.44 4H3.75a.75.75 0 0 0 0 1.5h6.69L9.22 6.72a.75.75 0 0 0 1.06 1.06l2.5-2.5a.75.75 0 0 0 0-1.06zm-3.5 7.56a.75.75 0 0 0-1.06-1.06l-2.5 2.5a.75.75 0 0 0 0 1.06l2.5 2.5a.75.75 0 0 0 1.06-1.06L5.56 12h6.69a.75.75 0 0 0 0-1.5H5.56z"/></svg>''',
              height: mq.height * 0.04,
              width: mq.width * 0.04,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: kDark,
            icon: CircleAvatar(
              radius: mq.width * 0.06,
              backgroundColor: kPrimary.withValues(alpha: .3),
              child: Container(
                height: mq.height * 0.05,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.string(
                    '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#fff" d="M5.25 4C4.56 4 4 4.56 4 5.25V8a1 1 0 0 1-2 0V5.25A3.25 3.25 0 0 1 5.25 2H8a1 1 0 0 1 0 2zm0 16C4.56 20 4 19.44 4 18.75V16a1 1 0 1 0-2 0v2.75A3.25 3.25 0 0 0 5.25 22H8a1 1 0 1 0 0-2zM20 5.25C20 4.56 19.44 4 18.75 4H16a1 1 0 1 1 0-2h2.75A3.25 3.25 0 0 1 22 5.25V8a1 1 0 1 1-2 0zM18.75 20c.69 0 1.25-.56 1.25-1.25V16a1 1 0 1 1 2 0v2.75A3.25 3.25 0 0 1 18.75 22H16a1 1 0 1 1 0-2zM7 12a1 1 0 0 1 1-1h8a1 1 0 1 1 0 2H8a1 1 0 0 1-1-1"/></svg>''',
                  ),
                ),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.string(
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#fff" fill-rule="evenodd" d="M4 4.25A2.75 2.75 0 0 0 1.25 7v10A2.75 2.75 0 0 0 4 19.75h16A2.75 2.75 0 0 0 22.75 17V9.75H6a.75.75 0 0 1 0-1.5h16.75V7A2.75 2.75 0 0 0 20 4.25z" clip-rule="evenodd"/></svg>''',
              height: mq.height * 0.04,
              width: mq.width * 0.04,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.string(
              '''<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="none" stroke="#fff" stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M2 18c0-1.54 0-2.31.347-2.876c.194-.317.46-.583.777-.777C3.689 14 4.46 14 6 14s2.31 0 2.876.347c.317.194.583.46.777.777C10 15.689 10 16.46 10 18s0 2.31-.347 2.877c-.194.316-.46.582-.777.776C8.311 22 7.54 22 6 22s-2.31 0-2.876-.347a2.35 2.35 0 0 1-.777-.776C2 20.31 2 19.54 2 18m12 0c0-1.54 0-2.31.347-2.876c.194-.317.46-.583.777-.777C15.689 14 16.46 14 18 14s2.31 0 2.877.347c.316.194.582.46.776.777C22 15.689 22 16.46 22 18s0 2.31-.347 2.877a2.36 2.36 0 0 1-.776.776C20.31 22 19.54 22 18 22s-2.31 0-2.876-.347a2.35 2.35 0 0 1-.777-.776C14 20.31 14 19.54 14 18M2 6c0-1.54 0-2.31.347-2.876c.194-.317.46-.583.777-.777C3.689 2 4.46 2 6 2s2.31 0 2.876.347c.317.194.583.46.777.777C10 3.689 10 4.46 10 6s0 2.31-.347 2.876c-.194.317-.46.583-.777.777C8.311 10 7.54 10 6 10s-2.31 0-2.876-.347a2.35 2.35 0 0 1-.777-.777C2 8.311 2 7.54 2 6m12 0c0-1.54 0-2.31.347-2.876c.194-.317.46-.583.777-.777C15.689 2 16.46 2 18 2s2.31 0 2.877.347c.316.194.582.46.776.777C22 3.689 22 4.46 22 6s0 2.31-.347 2.876c-.194.317-.46.583-.776.777C20.31 10 19.54 10 18 10s-2.31 0-2.876-.347a2.35 2.35 0 0 1-.777-.777C14 8.311 14 7.54 14 6" color="#fff"/></svg>''',
              height: mq.height * 0.035,
              width: mq.width * 0.035,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
