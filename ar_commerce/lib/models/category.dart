class Category {
  final String id;
  final String name;
  final bool isMain;
  final List<Setup>? setup;
  final List<String>? childs;

  Category({
    required this.id,
    required this.name,
    required this.isMain,
    required this.setup,
    required this.childs,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['_id'],
      name: json['name'],
      isMain: json['isMain'] ?? false,
      setup: (json['setup'] as List)
          .map((setupJson) => Setup.fromJson(setupJson))
          .toList(),
      childs: (json['childs'] as List<dynamic>?)?.cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'isMain': isMain,
      'setup': setup?.map((setup) => setup.toJson()).toList(),
      'childs': childs,
    };
  }
}

class Setup {
  final String key;
  final dynamic value;
  final String id;

  Setup({
    required this.key,
    required this.value,
    required this.id,
  });

  factory Setup.fromJson(Map<String, dynamic> json) {
    return Setup(
      key: json['key'],
      value: json['value'],
      id: json['_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
      '_id': id,
    };
  }
}

class ParentCategory {
  final String id;
  final String name;
  final List<Setup>? setup;

  ParentCategory({
    required this.id,
    required this.name,
    required this.setup,
  });

  factory ParentCategory.fromJson(Map<String, dynamic> json) {
    return ParentCategory(
      id: json['_id'],
      name: json['name'],
      setup: (json['setup'] as List)
          .map((setupJson) => Setup.fromJson(setupJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'name': name,
      'setup': setup?.map((setup) => setup.toJson()).toList(),
    };
  }
}
