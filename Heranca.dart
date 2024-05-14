class Animal{
  String nome;
  double peso;

  Animal(this.nome, this.peso);

  void comer(){
    print("$nome comeu");
  }
  void fazersom(){
    print("$nome latiu");
  }
}

class Cachorro extends Animal{
  int fofura;

  Cachorro(String nome, double peso, this.fofura): super(nome,peso);

  void brincar(){
    fofura += 10;
    print("Fofura do $nome aumento para $fofura");
  }

}

class Gato extends Animal{
  Gato(String nome, double peso): super(nome, peso);

  bool estaAmigavel(){
    return true;
  }
}

void main(){
  Cachorro cachorro = Cachorro("Bob", 10.0, 100);
  cachorro.fazersom();
  cachorro.comer();
  cachorro.brincar();

  Gato gato = Gato("Bolota", 10.0);
  cachorro.fazersom();
  cachorro.comer();

  print("Está amigável? ${gato.estaAmigavel()}");
}