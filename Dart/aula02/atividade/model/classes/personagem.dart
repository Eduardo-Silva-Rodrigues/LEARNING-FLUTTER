import 'classe.dart';
import 'item.dart';

class Personagem extends Classe {
  String _nomePersonagem;
  List<Item>? _equipamentos;
  double _experiencia;
  bool _cooldownAtaqueEspecial;

  Personagem(String nomeClasse,
      {String nomePersonagem = "N/a",
      List<Item>? equipamentos = null,
      double experiencia = 0.0,
      bool cooldownAtaqueEspecial = false})
      : _nomePersonagem = nomePersonagem,
        _equipamentos = equipamentos!,
        _experiencia = experiencia,
        _cooldownAtaqueEspecial = cooldownAtaqueEspecial,
        super(nomeClasse: nomeClasse);

  String get getNome => this._nomePersonagem;
  List<Item>? get getEquipamentos => this._equipamentos!;
  double get getExperiencia => this._experiencia;
  bool get getCooldownAtaqueEspecial => this._cooldownAtaqueEspecial;

  void set setNome(String nomePersonagem) =>
      this._nomePersonagem = nomePersonagem;
  void set setEquipamentos(List<Item>? equipamentos) =>
      this._equipamentos = equipamentos;
  void set setExperiencia(double experiencia) =>
      this._experiencia = experiencia;

  void set setCooldownAtaqueEspecial(bool cooldownAtaqueEspecial) =>
      this._cooldownAtaqueEspecial = cooldownAtaqueEspecial;

  @override
  void ataqueLeve(Personagem inimigo) {
    int danoNoInimigo = this.getAtaque() - inimigo.getDefesa();
    int vidaRestanteDoInimigo = inimigo.getVida() - danoNoInimigo;
    inimigo.setVida(vidaRestanteDoInimigo);
  }

  @override
  void ataquePesado(Personagem inimigo) {
    int danoNoInimigo = this.getAtaque() - inimigo.getDefesa();
    int danoAdicional = 5;
    int vidaRestanteDoInimigo =
        inimigo.getVida() - (danoNoInimigo + danoAdicional);
    inimigo.setVida(vidaRestanteDoInimigo);
  }

  @override
  void ataqueEspecial(Personagem inimigo) {
    int danoNoInimigo = this.getAtaque() - inimigo.getDefesa();
    int danoAdicional = 10;
    int vidaRestanteDoInimigo =
        inimigo.getVida() - (danoNoInimigo + danoAdicional);
    inimigo.setVida(vidaRestanteDoInimigo);
    this.setCooldownAtaqueEspecial = true;
  }

  @override
  void esquiva(Personagem inimigo) {
    int danoNoInimigo = this.getAtaque() - inimigo.getDefesa();
    int danoAdicional = 10;
    int vidaRestanteDoInimigo =
        inimigo.getVida() - (danoNoInimigo + danoAdicional);
    inimigo.setVida(vidaRestanteDoInimigo);
  }
}

void main() {
  Personagem pp = Personagem('Guerreiro');

  print(pp._equipamentos);
}
