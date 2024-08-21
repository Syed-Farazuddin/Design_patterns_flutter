import 'package:chopper/chopper.dart';
import 'package:learning/network/url.dart';

part 'service.chopper.dart';

@ChopperApi(baseUrl: Url.getPosts)
abstract class Service extends ChopperService {
  @Get(path: '/posts')
  Future<Response> getPosts();

  @Get(path: "/{id}")
  Future<Response> getPostById(@Path('id') int id);

  static Service create() {
    final client = ChopperClient(
      baseUrl: Uri.parse(Url.getPosts),
      services: [
        _$Service(),
      ],
      converter: const JsonConverter(),
    );
    return _$Service(client);
  }
}
