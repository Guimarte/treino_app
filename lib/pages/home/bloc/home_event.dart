abstract class HomeEvent {}

class HomeLoadListEvent extends HomeEvent {}

class HomeOpenVideoEvent extends HomeEvent {
  String url;
  HomeOpenVideoEvent({required this.url});
}
