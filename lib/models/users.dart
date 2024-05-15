// import 'dart:convert'; 
 
// import 'package:http/http.dart' as http;
// import 'package:machine_test/models/models.dart';

 
// getData() async { 
//   const String apiUrl = 'https://rubidya.com/api/users/get-media'; 
//   const String token = 
//       'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjBiZmUxODE3ZmYzZjBkMmZjMmQwNGUiLCJpYXQiOjE3MTQ3MTkyMDMsImV4cCI6MTc4MzgzOTIwM30.HfsYDcVEzMsdi6pU24IzHzmGAxfDQ2NAJYIptOAu_9I'; 
 
//   try { 
//     var response = await http.get( 
//       Uri.parse(apiUrl), 
//       headers: {'Authorization': 'Bearer $token'}, 
//     ); 
   
//     if (response.statusCode == 200) { 
//       return UserModel.fromJson(jsonDecode(response.body)); 
//     } else { 
//       throw Exception('Failed to load media'); 
//     } 
//   } catch (e) { 
//     throw Exception('Error occurred: $e'); 
//   } 
// }


import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:machine_test/models/models.dart';

Future<UserDeatailsClass> getData() async {
  const String apiUrl = 'https://rubidya.com/api/users/get-media';
  const String apitoken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2NjBiZmUxODE3ZmYzZjBkMmZjMmQwNGUiLCJpYXQiOjE3MTQ3MTkyMDMsImV4cCI6MTc4MzgzOTIwM30.HfsYDcVEzMsdi6pU24IzHzmGAxfDQ2NAJYIptOAu_9I';

  try {
    var response = await http.get(
      Uri.parse(apiUrl),
      headers: {'Authorization': 'Bearer $apitoken'},
    );

    if (response.statusCode == 200) {
      return UserDeatailsClass.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load media: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception(e);
  }
}
