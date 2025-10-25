import 'package:flutter/material.dart';

class Welcomehomepage extends StatelessWidget {
  const Welcomehomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 14),
              Text(
                'Start by entering your phone number to continue',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Phone Number',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: '+234 800 000 0000',
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w600,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {print('Con button clicked')},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[600],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: 'By continuing you agree to our ',
                    style: TextStyle(color: Colors.grey[600]),
                    children: [
                      TextSpan(
                        text: 'Terms & Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          decorationColor: Colors.blue,
                        ),
                      ),
                    ],
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
