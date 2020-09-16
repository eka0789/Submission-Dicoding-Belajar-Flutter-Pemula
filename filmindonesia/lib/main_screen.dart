import 'package:flutter/material.dart';
import 'package:filmindonesia/detail_screen.dart';
import 'package:filmindonesia/model/film_title.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Film Indonesia Terlaris'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: filmTitleList.map((title) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  title: title,
                );
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      title.imageAsset,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            title.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(title.production),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

var filmTitleList = [
  FilmTitle(
    name: 'Warkop DKI Reborn: Jangkrik Boss! Part 1',
    production: 'Falcon Pictures',
    description:
        'Dono (Abimana Aryasatya), Kasino (Vino Bastian), dan Indro (Tora Sudiro) adalah tiga orang sahabat yang bekerja sebagai petugas keamanaan di organisasi CHIIPS (Cara Hebat Ikut Ikutan Pelayanan Sosial) dimana tugas mereka adalah membantu menertibkan dan menjaga keamanan masyarakat. Namun, tingkah mereka yang konyol dan bermasalah selalu membuat jengkel dan marah atasan mereka, Pak Boss (Ence Bagus), walaupun mereka berhasil lolos dari ancaman pemecatan.Dikarenakan mereka bertiga merupakan anggota CHIIPS yang memiliki rekor paling buruk, Boss memasukkan anggota CHIIPS dari Paris bernama Sophie (Hannah Al Rashid) untuk membantu mereka. Patroli pertama mereka berakhir buruk setelah mereka gagal mengejar seorang Copet (Arie Kriting), merusak warung warga, dan menyebabkan kebakaran pada sebuah pameran lukisan. Mereka ditangkap dan dibawa ke pengadilan di mana mereka bertiga dituntut untuk mengganti rugi dengan membayar denda sebesar 8 miliar rupiah atau mereka akan dipenjara.Dono, Kasino, dan Indro yang kebingungan mencari uang, mengunjungi paman Dono yaitu Pak Selamet (Tarzan) untuk meminjam uang. Rencana mereka gagal setelah mereka menyadari bahwa koper pemberian Pak Selamet berisi uang mainan dan hampir diamuk warga karena dikira mengedarkan uang palsu. Stress, Indro marah-marah dengan Indro dari masa depan (Indro (Warkop)) yang hanya ada di kepalanya. Sophie yang merasa kasihan mengajak mereka bertiga ke pesta. Namun di perjalanan, mereka tidak sengaja melihat seorang pria (Bene Dion) ditabrak oleh mobil misterius. Mereka kemudian membawa pria itu ke rumah sakit, saat sekarat, pria itu menyerahkan sebuah buku berisi peta harta karun pada mereka bertiga. Dono, Kasino, dan Indro pun akhirnya menerima peta tersebut dan berniat untuk mencari harta tersebut agar bisa membayar denda 8 miliar.',
    dateRelease: '08/09/2016',
    Sutradara: 'Anggy Umbara',
    Producer: 'Hb Naveen',
    imageAsset: 'assets/dkireborn.jpg',
    imageUrls: [
      'https://4.bp.blogspot.com/-zWXQ_tZ0AGs/V-K_xCJ-wfI/AAAAAAAADR0/xss6TayP2a0bg0SA3FaPRFmcUFhoD_XlwCLcB/s1600/IMG_20160922_001257.jpg',
      'https://2.bp.blogspot.com/-U0_sMM3E2R8/V9ItBDr_w4I/AAAAAAAAD-w/X2E-fx_SUWovYMZrVPfB9eXGflLxm5F0wCLcB/s640/warkop%2Bdki%2Breborn.jpg',
      'https://2.bp.blogspot.com/-U0_sMM3E2R8/V9ItBDr_w4I/AAAAAAAAD-w/X2E-fx_SUWovYMZrVPfB9eXGflLxm5F0wCLcB/s640/warkop%2Bdki%2Breborn.jpg'
    ],
  ),
  FilmTitle(
    name: 'Dilan 1990',
    production: 'Max Pictures',
    description:
        'Pada September 1990, Milea dan keluarganya pindah dari Jakarta ke Bandung. Saat hendak masuk di sebuah SMA, Milea bertemu dengan Dilan sang panglima geng motor. Dilan tak memperkenalkan dirinya, namun dengan sangat percaya diri segera meramal kalau Milea akan naik motor bersamanya dan menjadi pacarnya. Dilan, entah bagaimana caranya, mengetahui segala tentang Milea, bahkan alamat rumah dan nomor teleponnya. Singkat cerita, Dilan merayu-rayu Milea dengan memberikan berbagai hadiah yang bermakna, misalnya buku teka-teki silang yang sudah diisi supaya "tidak perlu pusing karena harus mengisinya." Pada titik ini, Milea masih memiliki seorang pacar bernama Benni, yang ia tinggalkan secara fisik di Jakarta. Milea sendiri merasa tidak nyaman karena Benni adalah lelaki yang pencemburu dan kasar. Kepercayaan diri Dilan yang berlebih sempat membuat Nandan, sang sahabat yang juga menyukai Milea, tidak nyaman. Meski begitu, Milea mulai menyukai Dilan',
    dateRelease: '25/01/2018',
    Sutradara: 'Fajar Bustomi',
    Producer: 'Ody Mulya Hidayat',
    imageAsset: 'assets/dilan1990.jpg',
    imageUrls: [   'https://miro.medium.com/max/800/0*NrXrnRFjXLl_6Fru.png',  'https://awsimages.detik.net.id/community/media/visual/2018/02/06/0eb2c117-3032-4a0a-92af-46fd56cffcbc_169.png?w=700&q=90',  'https://img.beritasatu.com/cache/jakartaglobe/960x620-4/2018/10/Screen-Shot-2018-10-18-at-11.25.58-AM.png',
    ],
  ),
  FilmTitle(
    name: 'Dilan 1991',
    production: 'Max Pictures',
    description:
        '22 Desember 1990, Dilan (Iqbaal Ramadhan) dan Milea (Vanesha Prescilla) resmi berpacaran. Ditengah kebahagiaan mereka Dilan terancam dikeluarkan dari sekolah akibat perkelahian dengan Anhar (Giulio Parengkuan). Dilan juga semakin sering berkelahi dan mendapatkan musuh. Milea khawatir dengan masa depan Dilan. Milea merasa berhak melarang Dilan terlibat dalam geng motor. Suatu ketika, Dilan dikeroyok oleh orang tak dikenal. Saat mengetahui siapa yang berbuat, Dilan merencanakan balas dendam. Milea akhirnya meminta Dilan berhenti dari geng motor atau hubungan mereka berakhir. Dilan, seorang panglima tempur dan ketua geng motor akan selalu terlibat masalah. Di tengah semua masalah itu, hadir Yugo (Jerome Kurnia), anak dari sepupu jauh ayah Milea yang baru pulang dari Belgia. Mereka sering menghabiskan waktu bersama. Yugo menyukai Milea, dan Milea hanya mencintai Dilan.',
    dateRelease: '24/02/2019',
    Sutradara: 'Fajar Bustomi',
    Producer: 'Ody Mulya Hidayat',
    imageAsset: 'assets/dilan1991.jpeg',
    imageUrls: [
   'https://akcdn.detik.net.id/visual/2019/02/15/a599f889-1b4d-4016-ad21-89048a95f4ac_169.jpeg?w=650',    'https://mmc.tirto.id/image/otf/1024x535/2019/02/28/dilan-1991_ratio-16x9.jpg',
      'https://media.beritagar.id/2019-01/8e3cd0118afc5256bce426a3bfd5eca0b8c8d3b6.jpg','https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2019/02/kSinBPOVU6kCQyRLjMqKvAijiHWOij2TcpmKQioj.jpeg'
    ],
  ),
  FilmTitle(
    name: 'Laskar Pelangi',
    production: 'Miles Films',
    description:
        'Laskar Pelangi (2008) adalah sebuah film garapan sutradara Riri Riza yang dirilis pada 26 September 2008. Film Laskar Pelangi merupakan karya adaptasi dari buku Laskar Pelangi yang ditulis oleh Andrea Hirata. Skenarionya ditulis oleh Salman Aristo yang juga menulis naskah film Ayat-Ayat Cinta dibantu oleh Riri Riza dan Mira Lesmana. Hingga Maret 2009, Laskar Pelangi telah ditonton oleh 4,6 juta orang[1], menjadikannya film terbanyak ditonton di Indonesia keempat, setelah Jelangkung dengan 5,7 Juta, Pocong 2 dengan 5,1 Juta, dan Ada Apa Dengan Cinta dengan 4,9 Juta.',
    dateRelease: '26/09/2008',
    Sutradara: 'Riri Riza',
    Producer: 'Mira Lesmana',
    imageAsset: 'assets/laskarpelangi.jpg',
    imageUrls: [
      'https://cdn1-production-images-kly.akamaized.net/_eTTbCZ1rtSOm2dSalfA3o9gzj4=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3106874/original/042070300_1587365360-HL.jpg',
'https://cdns.klimg.com/merdeka.com/i/w/news/2020/04/21/1169295/540x270/lebih-dari-satu-dekade-potret-terbaru-8-pemeran-laskar-pelangi-bikin-pangling.jpg',
'https://thumb.intipseleb.com/media/frontend/thumbs3/2019/09/29/5d903a63b86a6-zulfani-pasha-di-laskar-pelangi_663_372.jpg',
    ],
  ),
  FilmTitle(
    name: 'Habibie & Ainun',
    production: 'MD Pictures',
    description:
        'Rudy Habibie seorang genius ahli pesawat terbang yang punya mimpi besar: berbakti kepada bangsa Indonesia dengan membuat pesawat terbang untuk menyatukan Indonesia. Sedangkan Ainun adalah seorang dokter muda cerdas yang dengan jalur karier terbuka lebar untuknya.',
    dateRelease: '26/09/2008',
    Sutradara: 'Faozan Rizal',
    Producer: 'Dhamoo Punjabi',
    imageAsset: 'assets/habibiainun.jpg',
    imageUrls: [
      'https://mmc.tirto.id/image/2019/09/12/habibi-ainun-1_ratio-16x9.jpg',
'https://assetsa1.kompasiana.com/items/album/2019/02/22/habibe-5c701463c112fe26e85e0912.jpg',
      'https://mmc.tirto.id/image/2019/09/12/habibi-ainun_ratio-16x9.jpg',
    ],
  ),
  FilmTitle(
    name: 'Pengabdi Setan',
    production: 'Rapi Films, CJ Entertainment',
    description:
        'Rini (Tara Basro) tinggal di pinggiran kota Jakarta di sebuah rumah tua milik neneknya, Rahma Saidah (Elly D. Luthan), bersama ibunya, Mawarni Suwono (Ayu Laksmi), bapaknya (Bront Palarae), dan ketiga adik laki-lakinya, Tony (Endy Arfian), Bondi (Nasar Annuz), dan Ian (Muhammad Adhiyat). Kisah dibuka dengan masalah finansial keluarga mereka yang kehabisan uang untuk biaya pengobatan sakit sang ibu. Penyakit yang begitu parah membuat Mawarni tak mampu menggerakkan tubuhnya dan hanya berbaring di tempat tidur. Untuk memanggil dan meminta bantuan, Mawarni harus membunyikan lonceng.',
    dateRelease: '28/09/2017',
    Sutradara: 'Joko Anwar',
    Producer: 'Sunil Samtani',
    imageAsset: 'assets/pengabdisetan.jpg',
    imageUrls: [
      'https://joss.co.id/data/uploads/2019/09/pengabdi-setan-2.jpg',     'http://www.rapifilms.com/asset/movie_photo/thumb/pengabdi_setan11_thumb.jpg',
'https://i.ytimg.com/vi/0hSptYxWB3E/maxresdefault.jpg',
    ],
  ),
  FilmTitle(
    name: 'Ayat-ayat Cinta',
    production: 'MD Pictures',
    description:
        'Sebuah kisah cinta dengan latar belakang agama, terutama Islam, dalam kehidupan. Fahri bin Abdillah adalah pelajar Indonesia yang berusaha menggapai gelar masternya di Al-Azhar.',
    dateRelease: '28/02/2008',
    Sutradara: 'Hanung Bramantyo',
    Producer: 'Dhamoo Punjabi',
    imageAsset: 'assets/ayatayatcinta.jpg',
    imageUrls: [
      'https://cdn-image.hipwee.com/wp-content/uploads/2017/12/hipwee-ayat-ayat-cinta-2-750x422.jpg',     'https://i.ytimg.com/vi/iAzvcvcmdmM/maxresdefault.jpg',
      'https://images.solopos.com/2017/10/Adegan-Hulusi-membentak-Sabina-di-video-klip-Ayat-Ayat-Cinta-2-Youtube-1200x900.jpg',
    ],
  ),
  FilmTitle(
    name: 'Suzzanna: Bernapas dalam Kubur',
    production: 'Soraya Intercine Films',
    description:
        'Film ini mengisahkan Suzanna (Luna Maya) dan Satria (Herjunot Ali) yang sudah menikah selama lima tahun tapi belum punya anak. Suatu ketika Suzanna hamil, tapi sayangnya Satria harus dinas keluar negeri.Kepergian Satria dimanfaatkan oleh empat karyawannya; Jonal (Verdi Solaiman), Umar (Teuku Rifnu Wikana), Dudun (Alex Abbad), dan Gino (Kiki Narendra). Mereka dendam kepada Satria dan berniat merampok rumahnya ketika si tuan rumah tak ada. Rencana perampokan itu berujung kematian Suzanna.Kawanan perampok panik dan mengubur jenazah istri majikannya di belakang rumah. Anehnya, besok hari Suzanna beraktivitas seperti biasa, seperti tak terjadi apa-apa.',
    dateRelease: '15/11/2018',
    Sutradara: 'Rocky Soraya',
    Producer: 'Sunil Soraya',
    imageAsset: 'assets/lunamayasuzana.jpg',
    imageUrls: [
      'https://id.bookmyshow.com/blog-hiburan/wp-content/uploads/2018/11/Suzzanna-5.jpg',     'https://thumb.viva.co.id/media/frontend/thumbs3/2018/11/11/5be7650a225da-suzzanna-bernapas-dalam-kubur_665_374.jpg',
      'https://id.bookmyshow.com/blog-hiburan/wp-content/uploads/2018/11/Suzzanna-1.jpg',
    ],
  ),
  FilmTitle(
    name: 'Cek Toko Sebelah',
    production: 'Starvision Plus',
    description:
        'Cek Toko Sebelah adalah film komedi Indonesia produksi Starvision Plus yang dirilis pada 28 Desember 2016 dan disutradari oleh Ernest Prakasa. Ide cerita film ini dibuat berdasarkan pada realitas etnis Tionghoa saat anak beranjak dewasa, kuliah yang tinggi, mirisnya ujung-ujungnya bekerja di toko orang tuanya sendiri. Film ini ditulis oleh Ernest Prakasa dan Jenny Jusuf dengan pengembangan cerita dari Meira Anastasia.Cek Toko Sebelah mendapatkan reaksi yang sangat positif dari penonton dan kritikus film, terutama untuk skenario film. Dalam Festival Film Indonesia 2017, film ini mendapatkan sembilan nominasi, termasuk Film Terbaik serta Sutradara Terbaik dan Aktor Terbaik untuk Ernest Prakasa,memenangkan satu untuk Skenario Asli Terbaik. Cek Toko Sebelah lebih berhasil pada ajang Festival Film Bandung 2017 di mana film ini memenangkan dua penghargaan (Film Terpuji dan Aktor Terpuji).',
    dateRelease: '28/12/2016',
    Sutradara: 'Ernest Prakasa',
    Producer: 'Chand Parwez',
    imageAsset: 'assets/cektokosebelah.jpg',
    imageUrls: [
'https://beritabaik.id/cms/static/upload/content/images/20180705/1530767664528-CTS%20series.jpg',
      'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2018/12/RpXhJPkyjFwpDdULEMb6Y0kSxmPwuv1kv4z7CADn.jpeg',
'https://cdns.klimg.com/kapanlagi.com/p/headline/476x238/tayang-last-minute-hangout-38-cek-toko--b71de8.jpg',
    ],
  ),
];
