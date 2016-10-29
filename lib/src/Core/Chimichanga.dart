import 'dart:html';
import 'package:chimichanga_js/src/Core/Scene.dart';
import 'package:chimichanga_js/src/Services/RenderManager.dart';
import 'package:chimichanga_js/src/Services/ServicesProvider.dart';

class Chimichanga{
  CanvasElement canvasElement;

  ServicesProvider servicesProvider;

  Scene _scene;

  ServicesProvider getServicesProvider(){
    return servicesProvider;
  }

  Chimichanga(this.canvasElement){
    servicesProvider = new ServicesProvider();
    RenderManager renderManager = servicesProvider.getServiceByName("RenderManager");
    renderManager.canvasElement = this.canvasElement;
  }

  void setScene( Scene scene ){
    _scene = scene;
    scene.onStart();
  }

  void init(){

  }
}