
import 'package:donation/frontend/screens/dashboard_screen.dart';
import 'package:donation/frontend/styles/colors..dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: AppColors.primaryColor
            )
          ),
          Positioned(
            top: 0, right: 0, left: 0,
            child: SvgPicture.asset("assets/svgs/splash_screen_graphics.svg"),
          ),

          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 146,),
                Container(
                  margin: const EdgeInsets.only(
                    left: 18, right: 15
                  ),
                  child: SvgPicture.asset('assets/svgs/splash_screen_illustration.svg')
                ),
                const SizedBox(height: 18.77,),

                Container(
                  margin: const EdgeInsets.only(left: 17),
                  child: const Text("We Need To Change\nOur Scoiety", style: TextStyle(
                    fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700
                  ),),
                ),

                const SizedBox(height: 10,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor non vestibulum vitae.", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white
                  ),),
                ),

                const SizedBox(height: 25,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ))
                    ),
                    child: Center(
                      child: Text("Create Account", style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500, color: AppColors.primaryColor
                      ),),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return DashboardScreen();
                        },
                      ));
                    },

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 16)),
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
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
