class Pessoa {
  final String id;
  final String nome;
  final int classe;

  Pessoa(this.id, this.nome, this.classe);

  Pessoa.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nome = json['nome'],
        classe = json['classe'];

  Map<String, dynamic> toJson() => {'id': id, 'nome': nome, 'classe': classe};

  @override
  String toString() {
    return 'Pessoa{id: $id, nome: $nome, classe: $classe}';
  }
}
