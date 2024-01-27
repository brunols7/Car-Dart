void main(){
  
  double taxa = 0.04;
  
  Carro carroDoBruno = Carro('Civic Touring', 'Preto', 'Honda', 2020, 145900);
  Carro carroDoZe = Carro('Lancer', 'Prata', 'Mitsubishi', 2017, 61990);

  print(carroDoBruno.toString());
  print('Valor do IPVA: R\$ ${carroDoBruno.valorIPVA(taxa)}');

  print(carroDoZe.toString());
  print('Valor do IPVA: R\$ ${carroDoZe.valorIPVA(taxa)}');
  
}

class Carro {

  final String modelo;
  final String cor;
  final String marca;
  final int ano;
  final double preco;

  Carro(this.modelo, this.cor, this.marca, this.ano, this.preco);

  String toString(){
    return 'Modelo: $modelo, Marca: $marca, Cor: $cor, Ano: $ano, Preço: $preco';
  }

  double valorIPVA(double taxa){
    return taxa * preco;
  }
  
}
