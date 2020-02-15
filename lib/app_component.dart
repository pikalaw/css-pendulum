import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/bars/bars_playground_component.dart';
import 'src/bouncing_ball/bouncing_ball_component.dart';
import 'src/ouch/ouch_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [BarsPlaygroundComponent, BouncingBallComponent, OuchComponent,
      coreDirectives, formDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class AppComponent {
}
