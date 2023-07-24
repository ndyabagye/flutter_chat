import 'package:flutter/material.dart';
import 'package:flutter_chat/core/config/app_strings.dart';
import 'package:flutter_chat/core/styles/app_colors.dart';
import 'package:flutter_chat/presentation/widgets/app_text_field.dart';
import 'package:flutter_chat/presentation/widgets/tool_bar.dart';
import 'package:flutter_chat/presentation/widgets/user_avatar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.editProfile),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: UserAvatar(
                    size: 120,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.black,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            AppTextField(hint: AppStrings.firstName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.location),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.birthday),
          ],
        ),
      ),
    );
  }
}
