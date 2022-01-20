import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    this.hasLeadingButton = true,
    required this.hasDrawer,
    required this.header,
    Key? key,
  }) : super(key: key);

  final bool hasLeadingButton;
  final bool hasDrawer;
  final Widget header;

  @override
  Widget build(BuildContext context) {
    Widget? leadingButton = hasLeadingButton
        ? IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        : SizedBox();
    Widget? drawerButton = hasDrawer
        ? IconButton(
            icon: Icon(
              Icons.view_headline,
              color: Colors.black45,
            ),
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
          )
        : SizedBox();

    return Container(
      decoration: hasDrawer
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade800),
              ),
            )
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          leadingButton,
          header,
          drawerButton,
        ],
      ),
    );
  }
}
