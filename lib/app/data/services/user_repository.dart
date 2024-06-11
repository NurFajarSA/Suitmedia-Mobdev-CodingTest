import 'package:km_test/app/data/providers/remote_api.dart';

class UserRepository {
  final RemoteApi api;

  UserRepository(this.api);

  getUserList(int page, int perPage) => api.getUserList(page, perPage);
}
