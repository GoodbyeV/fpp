import 'package:fpp/generated/json/base/json_convert_content.dart';

class HomePageBelowEntity with JsonConvert<HomePageBelowEntity> {
	String code;
	String message;
	List<HomePageBelowData> data;
}

class HomePageBelowData with JsonConvert<HomePageBelowData> {
	String name;
	String image;
	double mallPrice;
	String goodsId;
	double price;
}
