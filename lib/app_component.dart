import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'src/bars_component.dart';
import 'src/bouncing_ball_component.dart';
import 'src/ouch_component.dart';

// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [BarsComponent, BouncingBallComponent, OuchComponent,
      coreDirectives, formDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class AppComponent {
  static const defaultNumBars = 10;
  int userNumBars = defaultNumBars;
  int get numBars => userNumBars ?? 0;

  var barStyle = {
    '--bar-color': 'black',
  };
}
