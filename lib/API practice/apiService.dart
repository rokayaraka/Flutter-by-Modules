import 'dart:convert';
import 'dart:developer';

import 'package:course_flutter_codes/API%20practice/models/product.dart';
import 'package:course_flutter_codes/API%20practice/utils/urls.dart';

import 'package:http/http.dart' as http;

class Apiservice {
  static Future<dynamic> getData() async {
    final url = Urls.productUrl;
    try {
      final response = await http.get(Uri.parse(url));
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        // log(response.body);
        final jsonData = jsonDecode(response.body);
        final items = Product.getList(jsonData['data']);
        log(items.runtimeType.toString());
        return items;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static Future<bool> deleteData(int id) async {
    final url = '${Urls.deleteProductUrl}$id/';

    try {
      final response = await http.delete(Uri.parse(url));
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<void> addData(Product item) async {
    final url = Urls.addProductUrl;
    log(url);
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(item.toMap()),
        headers: {
      "Content-Type": "application/json",
    },
      );
      log(response.statusCode.toString());
      log(response.body);
    } catch (e) {}
  }
}
