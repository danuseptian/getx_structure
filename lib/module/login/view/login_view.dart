import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_structure/module/login/controller/login_controller.dart';
import 'package:getx_structure/module/main_navigation/view/main_navigation_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void dispose() {
    Get.delete<LoginController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        const Text(
                          "LOGIN",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Expanded(
                          flex: 8,
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: controller.emailC,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  cursorColor: const Color(0xFF6F35A5),
                                  onSaved: (email) {},
                                  decoration: const InputDecoration(
                                    hintText: "Your email",
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: TextFormField(
                                    controller: controller.passwordC,
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor: const Color(0xFF6F35A5),
                                    decoration: const InputDecoration(
                                      hintText: "Your password",
                                      prefixIcon: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                Hero(
                                  tag: "login_btn",
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Get.offAll(() => MainNavigationView());
                                    },
                                    child: Text(
                                      "Login".toUpperCase(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Text(
                                      "Don’t have an Account ? ",
                                      style:
                                          TextStyle(color: Color(0xFF6F35A5)),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                          color: Color(0xFF6F35A5),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
