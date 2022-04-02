import 'package:flutter_modular/flutter_modular.dart';
import 'package:shimmer_effect_pull_to_refresh/app/modules/home/presentation/home_page.dart';

class HomeModule extends Module {
   @override
  List<Bind<Object>> get binds => [];

    @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (ctx, args) => const HomePage()),
    
  ];
}