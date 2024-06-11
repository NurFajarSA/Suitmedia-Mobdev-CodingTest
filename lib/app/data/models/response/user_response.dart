import 'package:km_test/app/data/models/user.dart';

class UserResponse {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<User> data;

  UserResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });
}
