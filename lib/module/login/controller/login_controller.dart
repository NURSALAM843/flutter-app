import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../view/login_view.dart';

class LoginController extends GetxController {
  LoginView? view;

  String email = "admin@admin.com";
  String password = "123456";
  doLogin() async {
    var response = await Dio().post(
      "http://capekngoding.com:8080/deny/api/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {"email": email, "password": password},
    );
    Map obj = response.data;
    bool isSuccess = obj["success"];
    if (!isSuccess) {
      Get.snackbar("Gagal Login", "Email dan Password Tidak Cocok");
    }
  }
}
