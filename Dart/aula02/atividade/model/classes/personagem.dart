import 'classe.dart';
import 'item.dart';

class Personagem extends Classe {
  String? _nomePersonagem;
  List<Item> _equipamentos;
  int _nivel;
  bool _cooldownAtaqueEspecial;
  bool _estadoDefesa;
  int _defesasRealizadas;

  Personagem(
      {required String? nomeClasse,
      String? nomePersonagem = "N/a",
      List<Item>? equipamentos = null,
      int nivel = 1,
      bool cooldownAtaqueEspecial = false,
      bool estadoDefesa = false,
      int defesasRealizadas = 0})
      : _nomePersonagem = nomePersonagem,
        _equipamentos = equipamentos!,
        _nivel = nivel,
        _cooldownAtaqueEspecial = cooldownAtaqueEspecial,
        _estadoDefesa = estadoDefesa,
        _defesasRealizadas = defesasRealizadas,
        super(nomeClasse: nomeClasse);

  String? get getNome => this._nomePersonagem;
  List<Item> get getEquipamentos => this._equipamentos;
  int get getNivel => this._nivel;
  bool get getCooldownAtaqueEspecial => this._cooldownAtaqueEspecial;
  bool get getEstadoDefesa => this._estadoDefesa;
  int get getDefesasRealizadas => this._defesasRealizadas;

  void set setNome(String nomePersonagem) =>
      this._nomePersonagem = nomePersonagem;
  void set setEquipamentos(List<Item> equipamentos) =>
      this._equipamentos = equipamentos;
  void set setNivel(int nivel) => this._nivel = nivel;
  void set setCooldownAtaqueEspecial(bool cooldownAtaqueEspecial) =>
      this._cooldownAtaqueEspecial = cooldownAtaqueEspecial;
  void set setEstadoDefesa(bool estadoDefesa) =>
      this._estadoDefesa = estadoDefesa;
  void set setDefesasRealizadas(int defesasRealizadas) =>
      this._defesasRealizadas = defesasRealizadas;

  @override
  void ataqueLeve(Personagem? inimigo) {
    this.setEstadoDefesa = false;
    if (inimigo!.getEstadoDefesa == true) {
      int? danoNoInimigo = this.getAtaque -
          (inimigo.getDefesa + inimigo.getEquipamentos[1].getDefesa);
      int vidaRestanteDoInimigo = inimigo.getVida - danoNoInimigo;
      inimigo.setVida = vidaRestanteDoInimigo;
    } else {
      int danoNoInimigo = this.getAtaque - inimigo.getDefesa;
      int vidaRestanteDoInimigo = inimigo.getVida - danoNoInimigo;
      inimigo.setVida = vidaRestanteDoInimigo;
    }
  }

  @override
  void ataquePesado(Personagem inimigo) {
    this.setEstadoDefesa = false;
    if (inimigo.getEstadoDefesa == true) {
      int danoNoInimigo = this.getAtaque -
          (inimigo.getDefesa + inimigo.getEquipamentos[1].getDefesa);
      int danoAdicional = 5;
      int vidaRestanteDoInimigo =
          inimigo.getVida - (danoNoInimigo + danoAdicional);
      inimigo.setVida = vidaRestanteDoInimigo;
    } else {
      int danoNoInimigo = this.getAtaque - inimigo.getDefesa;
      int danoAdicional = 5;
      int vidaRestanteDoInimigo =
          inimigo.getVida - (danoNoInimigo + danoAdicional);
      inimigo.setVida = vidaRestanteDoInimigo;
    }
  }

  @override
  void ataqueEspecial(Personagem inimigo) {
    this.setEstadoDefesa = false;
    if (inimigo.getEstadoDefesa == true) {
      int danoNoInimigo = this.getAtaque -
          (inimigo.getDefesa + inimigo.getEquipamentos[1].getDefesa);
      int danoAdicional = 10;
      int vidaRestanteDoInimigo =
          inimigo.getVida - (danoNoInimigo + danoAdicional);
      inimigo.setVida = vidaRestanteDoInimigo;
      this.setCooldownAtaqueEspecial = true;
    } else {
      int danoNoInimigo = this.getAtaque - inimigo.getDefesa;
      int danoAdicional = 10;
      int vidaRestanteDoInimigo =
          inimigo.getVida - (danoNoInimigo + danoAdicional);
      inimigo.setVida = vidaRestanteDoInimigo;
      this.setCooldownAtaqueEspecial = true;
    }
  }

  @override
  void defender(Personagem inimigo) {
    this.setEstadoDefesa = true;
    this.setDefesasRealizadas = getDefesasRealizadas + 1;
    if (getDefesasRealizadas == 5) {
      this.setCooldownAtaqueEspecial = false;
    }
  }

  bool verificarVidaDoInimigo(Personagem inimigo) {
    if (inimigo.getVida <= 0) {
      return false;
    } else {
      return true;
    }
  }
}
