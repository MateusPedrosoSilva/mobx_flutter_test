class Todo {
  int id;
  String title;
  bool done;

  Todo({this.id, this.title, this.done});

  // ignore: empty_constructor_bodies
  Todo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    done = json['done'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['id'] = this.id;
    data['title'] = this.title;
    data['done'] = this.done;

    return data;
  }
}
