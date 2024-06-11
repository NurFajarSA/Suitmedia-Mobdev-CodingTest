import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:km_test/app/data/models/user.dart';
import 'package:km_test/app/data/services/user_repository.dart';

class UsersController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _pagingController.addPageRequestListener(fetchPage);
  }

  @override
  void onClose() {
    _pagingController.dispose();
    super.onClose();
  }

  final UserRepository repository;
  UsersController(this.repository);

  static const _pageSize = 10;
  final PagingController<int, User> _pagingController =
      PagingController(firstPageKey: 1);

  get pagingController => _pagingController;

  Future<void> fetchPage(int pageKey) async {
    try {
      final userList = await repository.getUserList(pageKey, _pageSize);
      final isLastPage = userList.length < _pageSize;

      if (isLastPage) {
        _pagingController.appendLastPage(userList);
      } else {
        final nextPageKey = pageKey + userList.length;
        _pagingController.appendPage(userList, nextPageKey as int?);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }
}
