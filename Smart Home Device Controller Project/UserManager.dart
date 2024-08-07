import 'dart:io';

class UserManager{
  Map userDetails=
    {'Umer':'umer1234',
    'Hamza':'hamza1234',
    'Suleman':'suleman1234'};
  void addNewUser(){
    print('Enter your username');
    String ?username=stdin.readLineSync();
     print('Enter your password');
    String ?password=stdin.readLineSync();
    if(username==null||password==null){
      print("Username or password can't be null");
      return;
    }
    else if (userDetails.containsKey(username)){
      print('User already exists');
    }
    else{
      userDetails[username]=password;
      print('Successful user registration');
    }
  }
  void login(){
    print('Enter your username');
    String ?username=stdin.readLineSync();
     print('Enter your password');
    String ?password=stdin.readLineSync();
    if(username==null||password==null){
      print("Username or password can't be null");
      return;
    }
    else if(userDetails.containsKey(username)&&userDetails[username]==password){
      print('Login Successful');
    }
    else{
      print('Incorrect Username or password');
    }
  }
}