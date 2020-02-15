import 'dart:html';
import 'package:angular/angular.dart';

@Component(
  selector: 'bouncing-ball',
  styleUrls: ['bouncing_ball_component.css'],
  templateUrl: 'bouncing_ball_component.html',
  directives: [coreDirectives],
  changeDetection: ChangeDetectionStrategy.OnPush,
)
class BouncingBallComponent {
  HtmlElement element;
  BouncingBallComponent(this.element);
}
