import 'package:http/http.dart' as http;
import 'dart:convert';


class NetWorkHelper{

  NetWorkHelper(this.url);

  final String url;

  Future getData(Map<String,String> headers) async{

    http.Response response = await http.post(url,headers: headers);
    if(response.statusCode==200){
      String data = response.body;
      return jsonDecode(data);
    }else{
      print(response.statusCode);
    }

  }


}