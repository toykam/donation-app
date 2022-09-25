
import 'package:donation/frontend/styles/colors..dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CampaignDetailScreen extends StatelessWidget {
  const CampaignDetailScreen({
    Key? key,
    this.tag = ""
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 52),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset("assets/svgs/back_icon.svg")
                ),
                const Spacer(),
                SvgPicture.asset('assets/svgs/detail_screen_heart_icon.svg'),
                // const SizedBox(width: 15,),
                SvgPicture.asset('assets/svgs/nore_icon.svg', height: 30, width: 30,),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10,),

                  Container(
                    constraints: const BoxConstraints(
                      maxHeight: 178
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Hero(
                      tag: "${tag}_image",
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset("assets/images/campaign_detail_image.png")
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.black54, Colors.transparent],
                                  begin: Alignment.topCenter, end: Alignment.bottomCenter
                                ),
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),

                          Positioned(
                            top: 0, left: 8,
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svgs/created_time_ago_icon.svg'),
                                const SizedBox(width: 9 ,),

                                const Material(
                                  color: Colors.transparent,
                                  child: Text('created 3days ago', style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400,
                                    color: Colors.white
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0, right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.primaryColor
                              ),
                              padding: const EdgeInsets.fromLTRB(6, 7, 6, 8),
                              child: Center(
                                child: Text("Medical", style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColor
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  _buildHeight(),

                  Container(
                    margin: const EdgeInsets.only(
                      left: 16
                    ),
                    child: Material(
                      child: Hero(
                        tag: "${tag}_title",
                        child: const Text("Help them for better education.", style: TextStyle(
                          color: Colors.black, fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ),

                  _buildHeight(),

                  Container(
                    margin: const EdgeInsets.only(
                      left: 16
                    ),
                    constraints: const BoxConstraints(
                      maxHeight: 30
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0, top: 0, bottom: 0,
                                child: Image.asset('assets/images/donator_1.png')
                              ),
                              Positioned(
                                left: 25-5, top: 0, bottom: 0,
                                child: Image.asset('assets/images/donator_1.png')
                              ),
                              Positioned(
                                left: 50-10, top: 0, bottom: 0,
                                child: Image.asset('assets/images/donator_1.png')
                              ),
                              Positioned(
                                left: 75-15, top: 0, bottom: 0,
                                child: Image.asset('assets/images/donator_1.png')
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 7 ,),
                        const Expanded(
                          flex: 3,
                          child: Text("120+ donated", style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400,
                            color: Color(0xFF696969)
                          ),),
                        )
                      ],
                    ),
                  ),

                  _buildHeight(),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: LinearProgressIndicator(
                        value: .4,
                        minHeight: 8,
                        valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
                        backgroundColor: AppColors.primaryColor.withOpacity(.3),
                      ),
                    ),
                  ),

                  _buildHeight(),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text("Goals: \$6000 ", style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                        Spacer(),
                        Text("Raised: \$6000 ", style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor
                        ),),
                        Text("(45%)", style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryColor
                        ),)
                      ],
                    ),
                  ),

                  _buildHeight(),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      color: Color(0xFFE9E9E9),
                      thickness: 1,
                      height: 1,
                    ),
                  ),

                  _buildHeight(),

                  Container(
                    margin: const EdgeInsets.only(
                        left: 16
                    ),
                    child: const Text("Organizer", style: TextStyle(
                        color: Colors.black, fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),

                  _buildHeight(16),

                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Image.asset('assets/images/organizer_image.png', height: 43, width: 43,),
                        _buildWidth(14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Monika Islam", style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400,
                              color: Color(0xFF263238)
                            ),),
                            _buildHeight(10),
                            Text("Dhaka Bangladesh", style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400,
                              color: Color(0xFF696969)
                            ),),
                          ],
                        )
                      ],
                    ),
                  ),

                  _buildHeight(20),

                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text("Description", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500,
                          color: AppColors.primaryColor
                        ),),
                        const Spacer(),
                        const Text("Comments(58)", style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500,
                          color: Color(0xFF696969)
                        ),),
                      ],
                    ),
                  ),

                  _buildHeight(19),

                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci nulla sagittis proin faucibus tincidunt. Eu ac feugiat turpis dolor pretium etiam id senectus arcu. Lacus, lorem lorem tristique facilisi tincidunt... ", style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400,
                            height: _calculateLineHeight(14, 25.2),
                            color: AppColors.greyColor
                          ),),
                          TextSpan(text: "Read more", style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400,
                            height: _calculateLineHeight(14, 25.2),
                            color: AppColors.primaryColor
                          ),),
                        ]
                      ),
                    ),
                  ),

                  _buildHeight(20),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
                          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12)),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ))
                      ),
                      child: Center(
                        child: Text("Donate Now", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                          height: _calculateLineHeight(18, 27)
                        ),),
                      ),
                    ),
                  ),


                  _buildHeight(32),

                ],
              )
            )
          )
        ],
      ),
    );
  }
}


Widget _buildHeight([num height = 20]) {
  return SizedBox(height: height.toDouble(),);
}

Widget _buildWidth([num widht = 20]) {
  return SizedBox(width: widht.toDouble(),);
}

double _calculateLineHeight(num fs, num ln) {
  return ln/fs;
}