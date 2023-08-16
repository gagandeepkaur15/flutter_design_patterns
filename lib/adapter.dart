import 'dart:convert';

class PostAPI1 {
  String getYouTubePosts() {
    return '''
    [
      {
        "title": "Automatic Code Generation with Flutter",
        "description": "Generate automatically"
      },
      {
        "title": "Bloc Pattern in Flutter",
        "description": "Bloc pattern with example"
      }
    ]
  ''';
  }
}

//The fields in this class in the string are different that's why we need to use adapter
//else adapter was not required
class PostAPI2 {
  String getMediumPosts() {
    return '''
    [
      {
        "header": "Automatic Code Generation with Flutter",
        "bio": "Generate automatically"
      },
      {
        "header": "Bloc Pattern in Flutter",
        "bio": "Bloc pattern with example"
      }
    ]
  ''';
  }
}

//Interface so that the next classes created for adapter follow this interface

abstract class IPostAPI {
  List<Post> getPosts();
}

class Post {
  final String title;
  final String bio;

  Post({required this.title, required this.bio});
}

//ADAPTER

class PostAPI1Adapter implements IPostAPI {
  final api = PostAPI1();
  @override
  List<Post> getPosts() {
    final data = jsonDecode(api.getYouTubePosts()) as List;
    return data
        .map(
          (e) => Post(
            title: e['title'],
            bio: e['description'],
          ),
        )
        .toList();
  }
}

class PostAPI2Adapter implements IPostAPI {
  final api = PostAPI2();
  @override
  List<Post> getPosts() {
    final data = jsonDecode(api.getMediumPosts()) as List;
    return data
        .map(
          (e) => Post(
            title: e['header'],
            bio: e['bio'],
          ),
        )
        .toList();
  }
}

class PostAPI implements IPostAPI {
  final api1 = PostAPI1Adapter();
  final api2 = PostAPI2Adapter();

  @override
  List<Post> getPosts() {
    return api1.getPosts() + api2.getPosts();
  }
}
