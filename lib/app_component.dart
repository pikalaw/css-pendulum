import 'package:angular/angular.dart';

import 'src/bars/bars_playground_component.dart';
import 'src/ouch/ouch_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: [
    'package:angular_components/app_layout/layout.scss.css',
    'app_component.css',
  ],
  directives: [BarsPlaygroundComponent, OuchComponent, coreDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class AppComponent {
}
