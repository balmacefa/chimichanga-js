import 'package:chimichanga_js/src/Component/Component.dart';
import 'dart:html';
import 'package:chimichanga_js/src/Core/Drawable.dart';
import 'package:chimichanga_js/src/Services/RenderManager.dart';
import 'package:chimichanga_js/src/utils/Vector2.dart';

class Sprite extends Component implements Drawable{
  RenderManager renderManager;
  ImageElement imageElement;

  @override
  void onUpdate() {
      renderManager.render(this);
  }

  @override
  void render( CanvasRenderingContext2D crx ) {
    crx.drawImage(imageElement, this.gameObject.position.x, this.gameObject.position.y);
  }
}