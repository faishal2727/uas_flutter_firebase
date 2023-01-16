import 'package:get/get.dart';

import '../modules/add_data/bindings/add_data_binding.dart';
import '../modules/add_data/views/add_data_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/update_data/bindings/update_data_binding.dart';
import '../modules/update_data/views/update_data_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.ADD_DATA,
      page: () => const AddDataView(),
      binding: AddDataBinding(),
    ),
    GetPage(
      name: _Paths.UPDATE_DATA,
      page: () => const UpdateDataView(id : null),
      binding: UpdateDataBinding(),
    ),
  ];
}
