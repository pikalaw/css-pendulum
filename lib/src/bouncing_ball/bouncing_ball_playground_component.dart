import 'package:angular/angular.dart';

@Component(
  selector: 'bouncing-ball-playground',
  styleUrls: ['bouncing_ball_playground_component.css'],
  templateUrl: 'bouncing_ball_playground_component.html',
  directives: [coreDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class BouncingBallPlaygroundComponent {
}
