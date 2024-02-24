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
               const CircleAvatar(
                  radius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
               const Text("John Deo", style: TextStyle(
                  fontSize: 14,
                  color: AppColors.fontColor1,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(
                  height: 10,
                ),
                const Text("john.deo@example.com", style: TextStyle(
                  fontSize: 12,
                  color: AppColors.fontColor1,
                  fontWeight: FontWeight.w300
                ),),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   width: ,
                // )

            ],
          ),  
        )
      ),
    );
  }
}