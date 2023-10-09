import 'package:assetmanagment/UI/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginFrom extends StatefulWidget {
  const LoginFrom({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginFrom> createState() => _LoginState();
}

class _LoginState extends State<LoginFrom> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Directionality (
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          // backgroundColor: Color.fromARGB(a, r, g, b),
          body: SingleChildScrollView(
            child: SizedBox(
              height: height,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 78.9,
                      ),
                      Center(
                        child: SvgPicture.asset('assets/icone/logo.svg',
                            width: 66.4, height: 51.2),
                      ),
                      const SizedBox(
                        height: 42.9,
                      ),
                      Text("الدخول",
                          style: Theme.of(context).textTheme.displayLarge),
                      const SizedBox(height: 13),
                      Text("سعداء برجوعك الينا مجددا",
                          style: Theme.of(context).textTheme.displaySmall),
                      const SizedBox(height: 37),
                      TextFormField(
                        controller: _controllerUsername,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          labelText: "Username",
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                        onEditingComplete: () =>
                            _focusNodePassword.requestFocus(),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter username.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _controllerPassword,
                        focusNode: _focusNodePassword,
                        obscureText: _obscurePassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: const Icon(Icons.password_outlined),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                              icon: _obscurePassword
                                  ? const Icon(Icons.visibility_outlined)
                                  : const Icon(Icons.visibility_off_outlined)),
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter password.";
                          }
    
                          return null;
                        },
                      ),
                      const Spacer(),
                      Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            fixedSize: const Size(327, 65),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const HomePage();
                                  },
                                ),
                              );
                            }
                          },
                          child: Text("Login",
                              style: Theme.of(context).textTheme.displaySmall),
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNodePassword.dispose();
    _controllerUsername.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }
}
