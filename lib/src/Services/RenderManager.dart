import 'dart:html';
import 'package:chimichanga_js/src/Core/Drawable.dart';
import 'package:chimichanga_js/src/Services/ServicesProvider.dart';

class RenderManager implements Service{
  CanvasElement canvasElement;
  CanvasRenderingContext2D canvasRenderingContext2D;

  void render(Drawable drawable ){
    drawable.render( canvasRenderingContext2D );
  }
  @override
  void init() {
    // TODO: get the canvas
  }
}