import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteGrayColor,
      appBar: PreferredSize(
        preferredSize: Size(
          double.infinity,
          70,
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: kBlackColor,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Expanded(
                child: Container(
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
                            hintText: 'Search furniture',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.close,
                        color: kGrayColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Search Page',
        ),
      ),
    );
  }
}
