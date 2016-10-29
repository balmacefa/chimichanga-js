import 'package:chimichanga_js/src/GameObject.dart';

class Component{
  bool enable = true;
  GameObject gameObject;
  //whe the scene is loaded
  void onStart(){}
  void onUpdate(){}

  void onPause(){}
  void onResume(){}

  //whe the object is destroid
  void onDestroy(){}
  ///register the gameObject
  void register( GameObject gameObject ){
    this.gameObject = gameObject;
  }
  ///call when the compoment is removed to the gameObject
  void onUnload() {}
  ///call when the compoment is added to the gameObject
  void onLoad() {}
}