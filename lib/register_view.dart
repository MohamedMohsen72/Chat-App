
import 'package:chat_app/colors.dart';
import 'package:chat_app/login_view.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _LoginViewState();
}

class _LoginViewState extends State<RegisterView> {
  bool isNotVisable=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/chat (3).png', height: 100),
              SizedBox(
                height: 10,
              ),
              Text('Creat an Account',
                  style: TextStyle(fontSize: 25, color: AppColor.primariKay)),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person, color: AppColor.primariKay),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primariKay),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primariKay),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onTap: () {},
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email, color: AppColor.primariKay),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primariKay),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primariKay),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: isNotVisable,
                onTap: () {},
                decoration: InputDecoration(
                  hintText: "Enter Passowrd",
                  labelText: "Passowrd",
                  prefixIcon: Icon(Icons.lock,color: AppColor.primariKay),
                  suffixIcon: IconButton(onPressed: (
                      ){
                    setState(() {isNotVisable=!isNotVisable;
          
                    });
                  },icon: Icon((isNotVisable)?Icons.remove_red_eye:Icons.visibility_off),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primariKay),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primariKay),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primariKay,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      foregroundColor: Colors.white),
          
                  onPressed: () {},
                  child: Text('Register'),
                ),
              ),
              SizedBox(height: 10,),
              Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('If you have account!'),
                  TextButton(onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginView(),));
                  }, child:Text('Login now'))
                ],))
            ],
          ),
        ),
      ),
    );
  }
}
