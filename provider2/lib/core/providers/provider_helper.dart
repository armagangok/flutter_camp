import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'data_provider.dart';

List<SingleChildWidget> multiProvider() {
  return [
    ChangeNotifierProvider(create: (_) => Data()), // If data is chagned the time, then we use ChangeNotifierProvider. Points out state is changed by time.
    // Provider(create: (_)=> T()),  => If there data is not changed, then we use Porvider class()
  ];
}
