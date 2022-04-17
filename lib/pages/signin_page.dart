import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          emailInput(),
          passwordInput(),
          rememberCheckbox(),
          loginButton(),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: 24,
              ),
              child: Text(
                'OR',
                style: grayTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
          loginWithGoogleButton(),
          registerButton(),
        ],
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: 84,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your\naccount',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 87,
                height: 4,
                margin: EdgeInsets.only(
                  right: 4,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackColor,
                ),
              ),
              Container(
                width: 8,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: kBlackColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 48,
      ),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhiteGrayColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        decoration: InputDecoration.collapsed(
          hintText: 'Email',
          hintStyle: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(
        top: 32,
      ),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kWhiteGrayColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: 'Password',
                hintStyle: grayTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              obscureText: true,
            ),
          ),
          Icon(
            Icons.visibility_outlined,
            color: kGrayColor,
          ),
        ],
      ),
    );
  }

  Widget rememberCheckbox() {
    return Container(
      margin: EdgeInsets.only(top: 32),
      child: Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Remember Me',
            style: blackTextStyle.copyWith(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  Widget loginButton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(top: 32),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: kBlackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          'Login',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget loginWithGoogleButton() {
    return Container(
      height: 56,
      width: double.infinity,
      margin: EdgeInsets.only(top: 21),
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Login with Google',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(
        top: 48,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: grayTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Register',
              style: blueTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
