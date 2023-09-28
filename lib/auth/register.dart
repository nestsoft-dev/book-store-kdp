import 'package:flutter/material.dart';
import 'package:net_bookstore/pages/bottom_nav.dart';
import 'package:net_bookstore/widgets/my_button.dart';
import 'package:net_bookstore/widgets/text_input.dart';

import '../constants/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _UserName = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.asset(
              onBoardingList[3]['image'],
              height: 150,
              width: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width / 2.5,
                  height: 55,
                  // decoration: BoxDecoration(
                  //   ),
                  child: TextInput(
                    textEditingController: _firstName,
                    hintText: 'FirstName',
                    textCollor: Colors.black,
                    numbers: 10,
                    isPassword: false,
                    textInputType: TextInputType.name,
                  ),
                ),
                Container(
                  width: size.width / 2.5,
                  height: 55,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: TextInput(
                    textEditingController: _firstName,
                    hintText: 'LastName',
                    textCollor: Colors.black,
                    numbers: 10,
                    isPassword: false,
                    textInputType: TextInputType.name,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              height: 55,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: TextInput(
                textEditingController: _firstName,
                hintText: 'Enter UserName',
                textCollor: Colors.black,
                numbers: 15,
                isPassword: false,
                textInputType: TextInputType.name,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              height: 55,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: TextInput(
                textEditingController: _firstName,
                hintText: 'Enter Password',
                textCollor: Colors.black,
                numbers: 15,
                isPassword: false,
                textInputType: TextInputType.name,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width,
              height: 55,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: TextInput(
                textEditingController: _firstName,
                hintText: 'Enter Confirm Password',
                textCollor: Colors.black,
                numbers: 15,
                isPassword: false,
                icon: Icons.remove_red_eye_outlined,
                textInputType: TextInputType.name,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(value: true, onChanged: (value) {}),
            SizedBox(
              height: 20,
            ),
            MyButton(
               onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNav()),
                      (route) => false);
                },
                backgroundColor: MyColors.deepYellow,
                textColor: Colors.black,
                text: 'Register',
                isLoaded: false),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {}, child: Text('Already have an Account? Login'))
          ],
        ),
      ),
    );
  }
}
