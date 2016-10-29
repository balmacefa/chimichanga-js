import 'package:chimichanga_js/src/GameObject.dart';

class Scene{
  List<GameObject> actors;
  String name;

  void update(){
    for(GameObject actor in actors){
      actor.update();
    }
  }

  void addActor(GameObject actor){
    actor.setScene(this);
    actors.add(actor);
  }

  GameObject findByName(String name) {
    for(GameObject gameObject in actors){
      if(gameObject.name == name){
        return gameObject;
      }
    }
    return null;
  }

  GameObject findByType(Type type) {
    for(GameObject gameObject in actors){
      if(gameObject.runtimeType == type){
        return gameObject;
      }
    }
    return null;
  }

  void onStart() {
    for(GameObject gameObject in actors){
      gameObject.onStart();
    }
  }
}