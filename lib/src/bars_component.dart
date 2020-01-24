import 'package:angular/angular.dart';

@Component(
  selector: 'bars',
  styleUrls: ['bars_component.animated.css'],
  templateUrl: 'bars_component.html',
  directives: [coreDirectives],
)
class BarsComponent implements AfterChanges {
  @Input()
  int numBars;

  // x starting position of the bars in percentages.
  List<num> barXStarts;
  // width of each bar.
  num barWidth;

  @override
  void ngAfterChanges() {
    _setXStartAndWidths();
  }

  void _setXStartAndWidths() {
    final barSpace = 100.0 / numBars;
    final xBegin = (barSpace * .2) / 2;
    barXStarts = [for(var x=xBegin; x<100; x+=barSpace) x];
    barWidth = barSpace * .8;
  }
}
