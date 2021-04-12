import 'package:familiaquotes/features/quote/presentation/styleguide/theme_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({
    Key? key,
    required this.backgroundColor,
    required this.author,
    required this.quote,
  }) : super(key: key);
  final Color backgroundColor;
  final String quote;
  final String author;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height));
    return Container(
      width: ScreenUtil().screenWidth,
      color: backgroundColor,
      padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setHeight(48)),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/quote_img.png',
                alignment: Alignment.topLeft,
                color: Colors.white.withOpacity(0.4),
                width: ScreenUtil().setWidth(100),
                height: ScreenUtil().setWidth(100),
              )
            ],
          ),
          Expanded(
            child: Center(
              child: Text(
                quote,
                style: ThemeText.headline,
              ),
            ),
          ),
          Center(
            child: Text(
              author,
              style: ThemeText.subHead,
            ),
          )
        ],
      ),
    );
  }
}
