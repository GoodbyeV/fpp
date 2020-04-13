import 'package:fpp/bean/home_page_below_entity.dart';

homePageBelowEntityFromJson(HomePageBelowEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toString();
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<HomePageBelowData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new HomePageBelowData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> homePageBelowEntityToJson(HomePageBelowEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

homePageBelowDataFromJson(HomePageBelowData data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['mallPrice'] != null) {
		data.mallPrice = json['mallPrice']?.toDouble();
	}
	if (json['goodsId'] != null) {
		data.goodsId = json['goodsId']?.toString();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toDouble();
	}
	return data;
}

Map<String, dynamic> homePageBelowDataToJson(HomePageBelowData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['mallPrice'] = entity.mallPrice;
	data['goodsId'] = entity.goodsId;
	data['price'] = entity.price;
	return data;
}