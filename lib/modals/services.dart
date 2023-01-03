import 'package:youtube_cloned/modals/data.dart';
import 'package:http/http.dart' as http;

class Remoteservice {
  Future<List<Music>?> getmusic() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/albums");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return musicFromJson(json);
    }
  }
}
