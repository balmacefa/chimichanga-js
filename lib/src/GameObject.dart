import 'package:chimichanga_js/src/Component/Component.dart';
import 'package:chimichanga_js/src/utils/Vector2.dart';
import 'package:chimichanga_js/src/Core/Scene.dart';

class GameObject{
  Vector2 position;
  Vector2 scale;
  String name;
  Scene scene;
  String layer;
  List<Component> components;

  GameObject(){
    components = new List();
  }

  GameObject findByName(String name)=> scene.findByName(name);
  GameObject findByType(Type type)=> scene.findByType(type);

  Component getComponentByName(String name){
    for(Component component in components){
      if(component.runtimeType.toString() == name){
        return component;
      }
    }
    return null;
  }

  Component getComponentByType(Type type){
    for(Component component in components){
      if(component.runtimeType == type){
        return component;
      }
    }
    return null;
  }

  void addComponent( Component component ){
    component.register(this);
    component.onLoad();
    components.add(component);
  }

  void removeComponent( Component component ){
    component.onUnload();
    components.remove(component);
  }

  void setScene(Scene scene){
    this.scene = scene;
  }

  void update() {
    for(Component component in components){
      if(component.enable){
        component.onUpdate();
      }
    }
  }
  void destroy(){
    for(Component component in components){
      if(component.enable){
        component.onDestroy();
      }
    }
  }

  void onStart() {
    for(Component component in components){
      if(component.enable){
        component.onStart();
      }
    }
  }
}