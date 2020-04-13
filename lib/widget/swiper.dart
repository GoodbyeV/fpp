import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//滚动控件Baner
class SwiperDiy extends StatelessWidget {
  final List listImages;
  final double height;
  //{}可选的命名参数 [bool xxxx]可选的位置参数
  SwiperDiy(this.listImages, this.height, {bool width}):super();

  @override
  Widget build(BuildContext context) {
    //基于设计稿适配屏幕
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return Container(
      height: ScreenUtil().setHeight(height),
      child: Swiper(
        itemBuilder: (context, index) {
          return Image.network("${listImages[index]['image']}",
              fit: BoxFit.fill);
        },
        itemCount: listImages.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }


}
