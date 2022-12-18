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
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.purple,
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: Colors.purple[700],
          title: Text('Günün Falı'),
        ),
        body: AnaEkran(),
      ),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key}) : super(key: key);

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Türkiyenin ekonomisi yok gerizekalı hayırda yani ekonomik tavsiye almak için uygulama kullanıyosun yani bir zahmet yardım etmemi bekleme ama dur Amerikada yaşıyosan yemek seçme uygulamamızda 999999999999999 dolar harcaya bilirsin.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  int yanit = 0;
  yanitGosterAsk() {
    setState(() {
      yanit = Random().nextInt(5) + 1;
    });
  }

  yanitGosterPara() {
    setState(() {
      yanit = Random().nextInt(5) + 6;
    });
  }

  yanitGosterTavsiye() {
    setState(() {
      yanit = Random().nextInt(5) + 11;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              flex: 7,
              child: Container(
                height: 200,
                child: Image.asset('assets/falci.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListTile(
                  onTap: yanitGosterAsk,
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'AŞK DURUMU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListTile(
                  onTap: yanitGosterPara,
                  leading: Icon(
                    Icons.money_off,
                    color: Colors.greenAccent,
                  ),
                  title: Text(
                    'PARA DURUMU',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListTile(
                  onTap: yanitGosterTavsiye,
                  leading: Icon(
                    Icons.local_offer_rounded,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'GÜNLÜK TAVSİYE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 11,
              child: Container(
                margin: EdgeInsets.all(12.0),
                child: Text(
                  yanitlar[yanit],
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
