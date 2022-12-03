import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bandeiras Full",
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Bandeiras Aleatórias",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.black,
          //centerTitle: true,
        ),
        body: CorpoBandeiras(),
        backgroundColor: Colors.black ,
      ),
    );
  }
}

class CorpoBandeiras extends StatefulWidget {
  const CorpoBandeiras({Key? key}) : super(key: key);

  @override
  State<CorpoBandeiras> createState() => _CorpoBandeirasState();
}

class _CorpoBandeirasState extends State<CorpoBandeiras> {
  final bandeirasPaises = {
    'ad': 'Andorra',
    'ae': 'Emirados Árabes Unidos',
    'af': 'Afeganistão',
    'ag': 'Antígua e Barbuda',
    'ai': 'Anguilla',
    'al': 'Albânia',
    'am': 'Armênia',
    'ao': 'Angola',
    'aq': '	Antartica',
    'ar': 'Argentina',
    'at': 'Áustria',
    'au': 'Austrália',
    'aw': 'Aruba',
    'ax': 'Ilhas Aland',
    'az': 'Azerbaijão',
    'ba': 'Bósnia e Herzegovina',
    'bb': 'Barbados',
    'bd': 'Bangladesh',
    'be': 'Bélgica',
    'bf': 'Burkina Faso',
    'bg': 'Bulgária',
    'bh': 'Barein',
    'bi': 'Burundi',
    'bj': 'Benin',
    'bl': 'Bolívia',
    'bm': 'Bermudas',
    'bn': 'Brunei',
    'bo': 'Bolívia (Estado Plurinacional da)',
    'bq': 'Caribe Holandês',
    'br': 'Brasil',
    'bs': 'Bahamas',
    'bt': 'Butão',
    'bv': 'Ilha Bouvet',
    'bw': 'Botsuana',
    'by': 'Belarus',
    'bz': 'Belize',
    'ca': 'Canadá',
    'cc': 'Ilhas Cocos',
    'cd': 'República Democrática do Congo',
    'cf': 'República Centro-Africana',
    'cg': 'Congo',
    'ch': 'Suíça',
    'ci': 'Costa do Marfim',
    'ck': 'Ilhas Cook',
    'cl': 'Chile',
    'cm': 'Camarões',
    'cn': 'China',
    'co': 'Colômbia',
    'cr': 'Costa Rica',
    'cu': 'Cuba',
    'cv': 'Cabo Verde',
    'cx': 'Ilha Natal',
    'cy': 'Chipre',
    'cz': 'República Tcheca',
    'de': 'Alemanha',
    'dj': 'Djibouti',
    'dk': 'Dinamarca',
    'dm': 'Dominica',
    'do': 'República Dominicana',
    'dz': 'Argélia',
    'ec': 'Equador',
    'ee': 'Estônia',
    'eg': 'Egito',
    'er': 'Eritreia',
    'es': 'Espanha',
    'et': 'Etiópia',
    'fi': 'Finlândia',
    'fj': 'Fiji',
    'fk': 'Ilhas Malvinas',
    'fm': 'Micronésia',
    'fr': 'França',
    'ga': 'Gabão',
    'gb': 'Reino Unido da Grã-Bretanha e Irlanda do Norte',
    'gd': 'Granada',
    'ge': 'Geórgia',
    'gg': 'Ilhas do Canal',
    'gh': 'Gana',
    'gi': 'Gibraltar',
    'gl': 'Groelândia',
    'gm': 'Gâmbia',
    'gn': 'Guiné',
    'gp': 'Guadalupe',
    'gq': 'Guiné Equatorial',
    'gr': 'Grécia',
    'gs': 'Geórgia do Sul',
    'gt': 'Guatemala',
    'gu': 'Guam',
    'gw': 'Guiné-Bissau',
    'gy': 'Guiana',
    'hk': 'Hong-Kong',
    'hm': 'Ilhas Heard e McDonald',
    'hn': 'Honduras',
    'hr': 'Croácia',
    'ht': 'Haiti',
    'hu': 'Hungria',
    'id': 'Indonésia',
    'ie': 'Irlanda',
    'il': 'Israel',
    'im': 'Ilha do Homem',
    'in': 'Índia',
    'iq': 'Iraque',
    'ir': 'Irã (República Islâmica do)',
    'is': 'Islândia',
    'it': 'Itália',
    'je': 'Jersey',
    'jm': 'Jamaica',
    'jo': 'Jordânia',
    'jp': 'Japão',
    'ke': 'Quênia',
    'kg': 'Quirguistão',
    'kh': 'Camboja',
    'ki': 'Kiribati',
    'km': 'Comores',
    'kn': 'São Cristóvão e Nevis',
    'kp': 'República Popular Democrática da Coreia',
    'kr': 'República da Coreia',
    'kw': 'Kuwait',
    'ky': 'Ilhas Cayman',
    'lb': 'Líbano',
    'lc': 'Santa Lúcia',
    'li': 'Liechtenstein',
    'lk': 'Sri Lanka',
    'lr': 'Libéria',
    'ls': 'Lesoto',
    'lt': 'Lituânia',
    'lu': 'Luxemburgo',
    'lv': 'Letônia',
    'ly': 'Líbia',
    'ma': 'Marrocos',
    'mc': 'Mônaco',
    'md': 'Moldávia (República da)',
    'me': 'Montenegro',
    'mf': 'São Martinho',
    'mg': 'Madagascar',
    'mh': 'Ilhas Marshall',
    'mk': 'Macedônia do Norte',
    'ml': 'Mali',
    'mm': 'Mianmar',
    'mn': 'Mongólia',
    'mo': 'Macau',
    'mp': 'Ilhas Marianas do Norte',
    'mq': 'Martinica',
    'mr': 'Mauritânia',
    'ms': 'Montserrat',
    'mt': 'Malta',
    'mu': 'Maurício',
    'mv': 'Maldivas',
    'mw': 'Malauí',
    'mx': 'México',
    'my': 'Malásia',
    'mz': 'Moçambique',
    'na': 'Namíbia',
    'nc': 'Nova Caledônia',
    'ne': 'Niger',
    'nf': 'Ilhas Norfolk',
    'ng': 'Nigéria',
    'ni': 'Nicarágua',
    'nl': 'Holanda',
    'no': 'Noruega',
    'np': 'Nepal',
    'nr': 'Nauru',
    'nz': 'Nova Zelândia',
    'om': 'Omã',
    'pa': 'Panamá',
    'pe': 'Peru',
    'pg': 'Papua Nova Guiné',
    'ph': 'Filipinas',
    'pk': 'Paquistão',
    'pl': 'Polônia',
    'pt': 'Portugal',
    'pw': 'Palau',
    'py': 'Paraguai',
    'qa': 'Catar',
    'ro': 'Romênia',
    'rs': 'Sérvia',
    'ru': 'Federação da Rússia',
    'rw': 'Ruanda',
    'sa': 'Arábia Saudita',
    'sb': 'Ilhas Salomão',
    'sc': 'Seichelles',
    'sd': 'Sudão',
    'se': 'Suécia',
    'sg': 'Singapura',
    'si': 'Eslovênia',
    'sk': 'Eslováquia',
    'sl': 'Serra Leoa',
    'sm': 'San Marino',
    'sn': 'Senegal',
    'so': 'Somália',
    'sr': 'Suriname',
    'ss': 'Sudão do Sul',
    'st': 'São Tomé e Príncipe',
    'sv': 'El Salvador',
    'sy': 'Síria',
    'sz': 'Eswatini',
    'td': 'Chade',
    'tg': 'Togo',
    'th': 'Tailândia',
    'tj': 'Tadjiquistão',
    'tl': 'Timor-Leste',
    'tm': 'Turcomenistão',
    'tn': 'Tunísia',
    'to': 'Tonga',
    'tr': 'Turquia',
    'tt': 'Trinidad e Tobago',
    'tv': 'Tuvalu',
    'tz': 'Tanzânia, República Unida da',
    'ua': 'Ucrânia',
    'ug': 'Uganda',
    'us': 'Estados Unidos da América',
    'uy': 'Uruguai',
    'uz': 'Uzbequistão',
    'vc': 'São Vicente e Granadinas',
    've': 'Venezuela (República Bolivariana da)',
    'vn': 'Vietnã',
    'vu': 'Vanuatu',
    'ws': 'Samoa',
    'ye': 'Iêmen',
    'za': 'África do Sul',
    'zm': 'Zâmbia',
    'zw': 'Zimbábue'
  };
  List<String> ListaDePaises = [
  'ad',
  'ae',
  'af',
  'ag',
  'ai',
  'al',
  'am',
  'ao',
  'aq',
  'ar',
  'at',
  'au',
  'aw',
  'ax',
  'az',
  'ba',
  'bb',
  'bd',
  'be',
  'bf',
  'bg',
  'bh',
  'bi',
  'bj',
  'bl',
  'bm',
  'bn',
  'bo',
  'bq',
  'br',
  'bs',
  'bt',
  'bv',
  'bw',
  'by',
  'bz',
  'ca',
  'cc',
  'cd',
  'cf',
  'cg',
  'ch',
  'ci',
  'ck',
  'cl',
  'cm',
  'cn',
  'co',
  'cr',
  'cu',
  'cv',
  'cx',
  'cy',
  'cz',
  'de',
  'dj',
  'dk',
  'dm',
  'do',
  'dz',
  'ec',
  'ee',
  'eg',
  'er',
  'es',
  'et',
  'fi',
  'fj',
  'fk',
  'fm',
  'fr',
  'ga',
  'gb',
  'gd',
  'ge',
  'gg',
  'gh',
  'gi',
  'gl',
  'gm',
  'gn',
  'gp',
  'gq',
  'gr',
  'gs',
  'gt',
  'gu',
  'gw',
  'gy',
  'hk',
  'hm',
  'hn',
  'hr',
  'ht',
  'hu',
  'id',
  'ie',
  'il',
  'im',
  'in',
  'iq',
  'ir',
  'is',
  'it',
  'je',
  'jm',
  'jo',
  'jp',
  'ke',
  'kg',
  'kh',
  'ki',
  'km',
  'kn',
  'kp',
  'kr',
  'kw',
  'ky',
  'lb',
  'lc',
  'li',
  'lk',
  'lr',
  'ls',
  'lt',
  'lu',
  'lv',
  'ly',
  'ma',
  'mc',
  'md',
  'me',
  'mf',
  'mg',
  'mh',
  'mk',
  'ml',
  'mm',
  'mn',
  'mo',
  'mp',
  'mq',
  'mr',
  'ms',
  'mt',
  'mu',
  'mv',
  'mw',
  'mx',
  'my',
  'mz',
  'na',
  'nc',
  'ne',
  'nf',
  'ng',
  'ni',
  'nl',
  'no',
  'np',
  'nr',
  'nz',
  'om',
  'pa',
  'pe',
  'pg',
  'ph',
  'pk',
  'pl',
  'pt',
  'pw',
  'py',
  'qa',
  'ro',
  'rs',
  'ru',
  'rw',
  'sa',
  'sb',
  'sc',
  'sd',
  'se',
  'sg',
  'si',
  'sk',
  'sl',
  'sm',
  'sn',
  'so',
  'sr',
  'ss',
  'st',
  'sv',
  'sy',
  'sz',
  'td',
  'tg',
  'th',
  'tj',
  'tl',
  'tm',
  'tn',
  'to',
  'tr',
  'tt',
  'tv',
  'tz',
  'ua',
  'ug',
  'us',
  'uy',
  'uz',
  'vc',
  've',
  'vn',
  'vu',
  'ws',
  'ye',
  'za',
  'zm',
  'zw',
  ];
  String stringBandeira = "ar";
  int siglaRadon = Random().nextInt(221);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Image.asset(
            "assets/images/bandeiras/$stringBandeira.png",
          height:250 ,
          ),
        ),
        Text(
          "${bandeirasPaises[stringBandeira]} - ${stringBandeira.toUpperCase()}",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
           backgroundColor: Colors.black,
          ),
        ),
        SizedBox(height:20,),
        OutlinedButton(onPressed: (){setState(() {
          siglaRadon = Random().nextInt(221);
          stringBandeira = ListaDePaises[siglaRadon];
        });}, child: Text("TROCAR"),),

      ],
    );
  }
}
