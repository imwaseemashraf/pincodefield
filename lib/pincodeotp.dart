import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeOtp extends StatelessWidget {
  const PinCodeOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pin Code Otp'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'PIN CODE VERIFICATION',
                style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                        color: Colors.orange,
                        blurRadius: 4,
                        offset: Offset(0.6, 0.8),
                      )
                    ]),
              ),
              SizedBox(height: 50),
              PinCodeTextField(
                appContext: context,
                length: 6,
                keyboardType: TextInputType.number,
                obscureText: true,
                obscuringCharacter: '*',
                // enableActiveFill: true,
                keyboardAppearance: Brightness.light,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(15),
                  fieldHeight: 50,
                  fieldWidth: 40,
                ),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
