import 'dart:mirrors';

abstract class Factory{
  Service getServiceByName( String name );
}

class Service {
  void init(){}
}


class ServicesProvider extends Factory{

  List<Service> services;

  @override
  Service getServiceByName( String name ) {
    for(Service component in services){
      if(component.runtimeType.toString() == name){
        return component;
      }
    }
    Service service = _createService( name );
    services.add(service);
    service.init();
    return service;
  }

  Service _createService( String name ) {
    MirrorSystem mirrors = currentMirrorSystem();
    LibraryMirror lm = mirrors.libraries.values.firstWhere(
        (LibraryMirror lm) => lm.qualifiedName == new Symbol('services'));

    ClassMirror cm = lm.declarations[new Symbol(name)];

    InstanceMirror im = cm.newInstance(new Symbol(''), []);
    return im.reflectee;
  }

}