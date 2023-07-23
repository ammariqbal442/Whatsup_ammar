import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../buttons/custom_buttons.dart';
import '../colors.dart';


class LoginWhatsup extends StatefulWidget {
  static const routeName = '/login-ui';

  const LoginWhatsup({Key? key}) : super(key: key);

  @override
  State<LoginWhatsup> createState() => _LoginWhatsupState();
}

class _LoginWhatsupState extends State<LoginWhatsup> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
  }

  void pickCountry(){
    showCountryPicker(context: context, onSelect: (Country _country)
    {
      setState(() {
        country =_country;
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("Enter Your Phone Number"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height / 15),
              Center(
                child: Text(
                  "Whatsup Will Need To Verify Your Phone Number.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: pickCountry,
                child: Text("Pick Country"),
              ),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  if (country!=null)
                  Text('+${country!.phoneCode}'),
                  SizedBox(height: 10, width: 8),
                  SizedBox(
                    width: size.width * 0.7,
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(hintText: 'Phone Number'),
                    ),
                  ),
                ],
              ),
              Expanded( // Wrap the Column with Expanded
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: size.width * 0.30,
                    height: size.height / 18,
                    child: CustomButton(
                      text: "Next",
                      onPressed: () {
                        // Add the functionality you want for the button here
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
