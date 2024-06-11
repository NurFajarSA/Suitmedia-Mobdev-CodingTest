import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:km_test/app/data/models/user.dart';
import 'package:km_test/core/theme/colors.dart';
import 'package:km_test/core/theme/text_theme.dart';

class CardUser extends StatelessWidget {
  const CardUser({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: CachedNetworkImageProvider(user.avatar),
      ),
      title: Text("${user.firstName} ${user.lastName}",
          style: AppTextTheme.medium.copyWith(
            fontSize: 16,
            color: AppColors.dark,
          )),
      subtitle: Text(
        user.email,
        style: AppTextTheme.medium.copyWith(fontSize: 10),
      ),
    );
  }
}
