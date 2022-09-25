
import 'package:donation/frontend/styles/colors..dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      body: Column(
        children: [
          const SizedBox(height: 52),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                SvgPicture.asset("assets/svgs/menu_icon.svg"),
                const Spacer(),
                SvgPicture.asset('assets/svgs/notification_icon.svg'),
                const SizedBox(width: 15,),
                Image.asset('assets/images/profile_picture.png', height: 30, width: 30,),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    // child: RichText(
                    //   text: ,
                    // ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Hello Lisa 👋🏻",
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w500
                              )
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                              "What do you want to donate today?",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w400,
                                  fontSize: 12
                              )
                          ),
                        ]
                    ),
                  ),

                  const SizedBox(height: 19.59),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    constraints: const BoxConstraints(
                        maxHeight: 60
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xFFC4C4C4).withOpacity(.3)
                        )
                    ),
                    padding: const EdgeInsets.only(
                        left: 14.04,
                        // top: 18.69, bottom: 17.7,
                        right: 19.06
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/svgs/search_icon.svg'),
                        const SizedBox(width: 24.07,),
                        Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                // filled: true, fillColor: Colors.red,
                                border: InputBorder.none,
                                hintText: "Search here",
                                hintStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400,
                                    color: Color(0xFF696969)
                                ),
                                contentPadding: EdgeInsets.all(0),
                              ),
                              cursorColor: AppColors.primaryColor,
                              textAlignVertical: TextAlignVertical.top,
                            )
                        ),
                        SvgPicture.asset('assets/svgs/voice_search_icon.svg'),

                        const SizedBox(width: 5.01,),

                        Container(
                          width: 1, height: 32.95, color: const Color(0xFFE0E0E0).withOpacity(.50),
                        ),

                        const SizedBox(width: 14.04,),

                        SvgPicture.asset('assets/svgs/search_setting_icon.svg')
                      ],
                    ),
                  ),

                  const SizedBox(height: 21),

                  Container(
                    // constraints: BoxConstraints(
                    //   maxHeight: 167.21
                    // ),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/start_campaign.png'),
                          fit: BoxFit.cover
                      ),
                    ),
                    padding: const EdgeInsets.only(
                        left: 18, top: 34.35, bottom: 16.21
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),
                              children: [
                                const TextSpan(
                                    text: "Do you really have\na creative "
                                ),
                                TextSpan(
                                    text: "idea?",
                                    style: TextStyle(
                                        color: AppColors.primaryColor
                                    )
                                )
                              ]
                          ),
                        ),

                        const SizedBox(height: 17.93,),

                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Start Campaign"),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(const EdgeInsets.only(
                                  left: 12, right: 12, top: 19, bottom: 20
                              )),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )),
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 20.41),

                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: const Text("Categories", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SvgPicture.asset('assets/svgs/all_category_icon.svg'),
                              const SizedBox(height: 18,),
                              const Text("All", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400
                              ),)
                            ],
                          ),

                          const SizedBox(width: 16,),

                          Column(
                            children: [
                              SvgPicture.asset('assets/svgs/campaigns_category_icon.svg'),
                              const SizedBox(height: 18,),
                              const Text("Campaign", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400
                              ),)
                            ],
                          ),

                          const SizedBox(width: 16,),

                          Column(
                            children: [
                              SvgPicture.asset('assets/svgs/donate_goods_icon.svg'),
                              const SizedBox(height: 18,),
                              const Text("Donate Goods", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400
                              ),)
                            ],
                          ),

                          const SizedBox(width: 16,),

                          Column(
                            children: [
                              SvgPicture.asset('assets/svgs/charity_icon.svg'),
                              const SizedBox(height: 18,),
                              const Text("Charity", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400
                              ),)
                            ],
                          ),

                          const SizedBox(width: 16,),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20.38),

                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: const Text("My Campaigns", style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...List.generate(5, (index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      color: const Color(0xFFECF0F5),
                                      width: 1
                                  )
                              ),
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 21),
                              margin: const EdgeInsets.only(right: 16),
                              constraints: const BoxConstraints(
                                maxWidth: 275
                              ),
                              child: Column(
                                children: [

                                  Stack(
                                    children: [
                                      Image.asset('assets/images/campaign_image.png', width: 253,),
                                      Positioned(
                                        top: 10, right: 10,
                                        child: SvgPicture.asset('assets/svgs/love_icon.svg'),
                                      )
                                    ],
                                  ),

                                  const SizedBox(height: 11,),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text("Help sarah to defeat cancer haha", style: TextStyle(
                                            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black
                                        ), overflow: TextOverflow.ellipsis,),
                                      ),
                                      const SizedBox(width: 24,),

                                      OutlinedButton(
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                                            builder: (context) {
                                              return const DashboardScreen();
                                            },
                                          ));
                                        },

                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 4)),
                                            elevation: MaterialStateProperty.all(0),
                                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                side: BorderSide(
                                                    color: AppColors.whiteColor,
                                                    width: 1
                                                )
                                            )),
                                            side: MaterialStateProperty.all(BorderSide(
                                                color: AppColors.whiteColor,
                                                width: 1
                                            ))
                                        ),
                                        child: Center(
                                          child: Text("Login as Guest", style: TextStyle(
                                              fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.whiteColor
                                          ),),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 12,),

                                  const Text("Lorem ipsum dolor sit amet, adipisci consectetur adipisci ipsum dolor.....", style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w400,
                                      color: Color(0xFF696969),
                                      fontFamily: "Metropolis"
                                  ), maxLines: 2, overflow: TextOverflow.ellipsis,),
                                  const SizedBox(height: 14,),

                                  LinearProgressIndicator(
                                    value: .4,
                                    minHeight: 4,
                                    valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
                                    backgroundColor: AppColors.primaryColor.withOpacity(.3),
                                  ),

                                  const SizedBox(height: 10,),

                                  Row(
                                    children: [
                                      Text("Raised: \$6000", style: TextStyle(
                                          fontSize: 14, fontWeight: FontWeight.w400,
                                          color: AppColors.primaryColor
                                      ),),
                                      const Spacer(),
                                      Text("45%", style: TextStyle(
                                          fontSize: 12,
                                          color: AppColors.primaryColor
                                      ),)
                                    ],
                                  )

                                ],
                              ),
                            );
                          })
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
