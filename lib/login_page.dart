//Krish Galicha.Version V1
import 'package:flutter/material.dart';
// import 'package:projectapp/Accounts_Center/accountsPage.dart';
// import 'package:projectapp/main.dart';

// ignore: must_be_immutable
class Statefu extends StatefulWidget {
  int? ind;
  Statefu({super.key, this.ind});
  @override
  MainHolder createState() => MainHolder();
}

class MainHolder extends State<Statefu> {
  bool _oblq = true;
  int reti = 0;
  final TextEditingController _Email = TextEditingController();
  final TextEditingController _Password = TextEditingController();
  @override
  void initState() {
    super.initState();
    reti = widget.ind ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Basic(ind: reti)),
            // );
          },
          icon: Icon(
            Icons.arrow_circle_left,
            size: 35,
            color: theme.appBarTheme.foregroundColor,
          ),
        ),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: theme.colorScheme.surface,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Log Into Studify",
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 380,
                child: TextField(
                  style: TextStyle(
                    color: theme.colorScheme.onSurface.withAlpha(230),
                  ),
                  controller: _Email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(color: theme.hintColor),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: theme.dividerColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 380,
                child: TextField(
                  obscureText: _oblq,
                  style: TextStyle(
                    color: theme.colorScheme.onSurface.withAlpha(230),
                  ),
                  controller: _Password,
                  cursorColor: theme.colorScheme.secondary,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _oblq = !_oblq;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: theme.hintColor),
                    labelStyle: TextStyle(color: theme.colorScheme.onSurface),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: theme.dividerColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(17),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(17),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(inde: widget.ind),
                          ),
                        );
                      },
                      child: Text(
                        "New To Studify?",
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: theme.colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Accountspage(reti: reti),
                    //   ),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text("Login", style: theme.textTheme.titleMedium),
                ),
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  SizedBox(width: 17),
                  Container(height: 1, color: theme.dividerColor, width: 160),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "OR",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  Container(height: 1, color: theme.dividerColor, width: 160),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
                    width: 20,
                    height: 20,
                  ),
                  label: Text(
                    " Login With Google",
                    style: theme.textTheme.titleMedium,
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface,
                    backgroundColor: theme.colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: theme.dividerColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.network(
                    'https://www.citypng.com/public/uploads/preview/silver-metal-apple-logo-icon-png-701751694967874lyn8agzibp.png',
                    width: 22,
                    height: 22,
                  ),
                  label: Text(
                    " Login With Apple",
                    style: theme.textTheme.titleMedium,
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface,
                    backgroundColor: theme.colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: theme.dividerColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Signup extends StatefulWidget {
  int? inde;
  Signup({super.key, this.inde});
  @override
  _Signupstate createState() => _Signupstate();
}

class _Signupstate extends State<Signup> {
  final TextEditingController _Email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Statefu(ind: widget.inde),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_circle_left,
            size: 35,
            color: theme.appBarTheme.foregroundColor,
          ),
        ),
        backgroundColor: theme.appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: theme.colorScheme.surface,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign-up For Studify",
                    style: theme.textTheme.headlineLarge?.copyWith(
                      color: theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 20.0,
                          color: Colors.transparent,
                          //offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
                    width: 20,
                    height: 20,
                  ),
                  label: Text(
                    " Continue With Google",
                    style: theme.textTheme.titleMedium,
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface,
                    backgroundColor: theme.colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: theme.dividerColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.network(
                    'https://www.citypng.com/public/uploads/preview/silver-metal-apple-logo-icon-png-701751694967874lyn8agzibp.png',
                    width: 22,
                    height: 22,
                  ),
                  label: Text(
                    " Continue With Apple",
                    style: theme.textTheme.titleMedium,
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSurface,
                    backgroundColor: theme.colorScheme.surface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: theme.dividerColor),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 1, color: theme.dividerColor, width: 160),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "OR",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  Container(height: 1, color: theme.dividerColor, width: 160),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 17),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email*",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 380,
                child: TextField(
                  style: TextStyle(
                    color: theme.colorScheme.onSurface.withAlpha(230),
                  ),
                  controller: _Email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(color: theme.hintColor),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: theme.dividerColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: theme.colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: theme.colorScheme.onSecondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Text(
                    "Continue Sign-Up",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have An Account?",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.dividerColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Statefu()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.tertiary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 210),
            ],
          ),
        ),
      ),
    );
  }
}