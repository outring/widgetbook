import 'package:widgetbook/models/organizers/folder.dart';
import 'package:widgetbook/models/organizers/organizer.dart';
import 'package:widgetbook/models/organizers/widget_element.dart';

class Category extends Organizer {
  Category({
    required String name,
    List<Folder>? folders,
    List<WidgetElement>? widgets,
  }) : super(
          name: name,
          folders: folders,
          widgets: widgets,
        ) {
    for (final Organizer organizer in this.folders) {
      organizer.parent = this;
    }
    for (final Organizer organizer in this.widgets) {
      organizer.parent = this;
    }
  }
}
