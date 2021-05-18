class Todo{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  int get id => _id;
  String get title => _title;
  String get description => _description;
  int get priority => _priority;
  String get date => _date;

  set title(String _newTitle){
    if(_newTitle.length <= 255){
        _title = _newTitle;
    }    
  }

  set description(String _newDescription){
    if(_newDescription.length <= 255){
        _title = _newDescription;
    }    
  }

  set priority (int _newPriority){
    if(_newPriority > 0 && _newPriority <=3){
      _priority = _newPriority;
    }
  }

  set date(String _newDate){
    _date = _newDate;
  }

  set id(int _newId){
    if(_newId != null){
      _id = _newId;
    }
  }

   Todo(this._title,this._priority,this._date,[this._description]);

  Todo.withId(this._id,this._title,this._priority,this._date,[this._description]);

  Map<String, dynamic> toMap(){
    var map = Map<String,dynamic>();
    map["title"] = _title;
    map["description"] = _description;
    map["priority"] = _priority;
    map["date"] = _date;

    if(_id != null){
      map["id"] = _id;
    }

    return map;

  }

  Todo.fromObject(dynamic object){
    _id = object["id"];
    _title = object["title"];
    _description = object["description"];
    _priority = object["priority"];
    _date = object["date"];
  }

  }


 
