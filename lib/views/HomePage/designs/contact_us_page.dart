import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  void _submitForm(BuildContext context) {
    String name = _nameController.text;
    String email = _emailController.text;
    String message = _messageController.text;

    if (name.isNotEmpty && email.isNotEmpty && message.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'Thanks for your feedback',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )),
      );

      Navigator.of(context).pop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'Please provide your feedback ',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us', style: TextStyle(fontSize: 8.sp)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 25.h,
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      hintText: 'Name', hintStyle: TextStyle(fontSize: 8.sp)),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 25.h,
                child: TextFormField(
                  controller: _contactController,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(fontSize: 8.sp)),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 25.h,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Email', hintStyle: TextStyle(fontSize: 8.sp)),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                controller: _messageController,
                decoration: InputDecoration(
                    hintText: 'Message', hintStyle: TextStyle(fontSize: 8.sp)),
                maxLines: 5,
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 100.w,
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {
                    _submitForm(context);
                  },
                  child: Text('Submit', style: TextStyle(fontSize: 8.sp)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
