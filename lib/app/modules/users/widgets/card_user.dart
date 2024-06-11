import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:km_test/app/data/models/user.dart';
import 'package:km_test/app/modules/users/users_controller.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';

class CardUser extends GetView<UsersController> {
  const CardUser({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.selectUser(user);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: CachedNetworkImageProvider(user.avatar),
          ),
          title: Text("${user.firstName} ${user.lastName}",
              style: AppTextTheme.medium.copyWith(
                fontSize: 18,
                color: AppColors.dark,
              )),
          subtitle: Text(
            user.email.toUpperCase(),
            style: AppTextTheme.medium
                .copyWith(fontSize: 12, color: AppColors.dark.withOpacity(0.5)),
          ),
        ),
      ),
    );
  }
}
