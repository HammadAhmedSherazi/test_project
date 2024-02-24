import 'package:flutter/material.dart';
import 'package:test_project/utils/colors.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroundColor2,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon:const Icon(Icons.nightlight_outlined, color: AppColors.fontColor1,), )
        ],
      ),
      body: Container(
        height: double.infinity, 
        width: double.infinity, 
        decoration: const BoxDecoration(
          color: AppColors.kBackgroundColor2
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 65, 37, 27),
                  border: Border.all(
                    color: AppColors.kPrimaryColor,
                    width: 4


                  )
                  
                ),
                child: const Icon(Icons.person_outline_outlined, color: AppColors.kPrimaryColor, size: 40,),
               ),
                verticalSpace(10),
               const Text("John Deo", style: TextStyle(
                  fontSize: 17,
                  color: AppColors.fontColor1,
                  fontWeight: FontWeight.w700
                ),),
                 verticalSpace(10),

                const Text("john.deo@example.com", style: TextStyle(
                  fontSize: 12,
                  color: AppColors.fontColor1,
                  fontWeight: FontWeight.w300
                ),),
                                 verticalSpace(10),
        GestureDetector(
          onTap: (){},
          child: Container(
                    width: 200,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10
                    ),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right:Radius.circular(30),
                        left: Radius.circular(30)
                      ),
                      color: AppColors.kPrimaryColor
                    ),
                    child: const Text("Upgrade to Pro", style: TextStyle(
                      color: AppColors.fontColor1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                  ),
        ),

              verticalSpace(15),
              optionButton(
                Icons.privacy_tip,
                "Privacy",
                (){}
              ),
              optionButton(
                Icons.history,
                "Purchase History",
                (){}
              ),
              optionButton(
                Icons.help_outline_outlined,
                "Help & Support",
                (){}
              ),
              optionButton(
                Icons.settings,
                "Help & Support",
                (){}
              ),
              optionButton(
                Icons.person_add_alt,
                "Invite a Friend",
                (){}
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: double.infinity,
                  margin:const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15
                  ),
                  decoration:const BoxDecoration(
                    color: AppColors.fontColor1,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(23),
                      right: Radius.circular(23)
                    )
                  ),
                  child: const Text("Logout", 
                      textAlign: TextAlign.center,
                      style:  TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),),
                ),
              )
              ,verticalSpace(80)
             
            ],
          ),  
        )
      ),
    );
  }

 optionButton(IconData icon, String text, Function()? ontap) {
    return GestureDetector(
      onTap: ontap ?? (){},
      child: Container(
                width: double.infinity,
                margin:const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15
                ),
                decoration:const BoxDecoration(
                  color: Color.fromARGB(255, 194, 191, 191),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(23),
                    right: Radius.circular(23)
                  )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(icon, color: AppColors.fontColor1, ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(text, 
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.fontColor1,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),),
                    const Spacer(),
                    const Icon(Icons.chevron_right, color: AppColors.fontColor1,)
                  ],
                ),
              ),
    );
  }

  SizedBox verticalSpace(double ? size) {
    return  SizedBox(
                height: size ?? 10.0,
              );
  }
}