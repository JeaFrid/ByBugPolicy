import 'variables.dart';

List getDataList(
  String internet,
  String sirketAdi,
  String eposta,
  String sehir,
  int secenek,
) {
  if (secenek == 1) {
    return [
      [
        "Gizlilik Sözleşmesi",
        "Markdown",
        blogGizlilikPolitikasiMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Gizlilik Sözleşmesi",
        "HTML",
        blogGizlilikPolitikasiHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Gizlilik Sözleşmesi",
        "Düz Metin",
        blogGizlilikPolitikasiDuzMetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "Markdown",
        blogKullanimKosullariMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "HTML",
        blogKullanimKosullariHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "Düz Metin",
        blogKullanimKosullariDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "Markdown",
        blogKullanimKosullariMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "HTML",
        blogKullanimKosullariHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "Düz Metin",
        blogKullanimKosullariDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
    ];
  } else if (secenek == 2) {
    return [
      [
        "Gizlilik Sözleşmesi",
        "Markdown",
        eticaretGizlilikPolitikasiMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Gizlilik Sözleşmesi",
        "HTML",
        eticaretGizlilikPolitikasiHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Gizlilik Sözleşmesi",
        "Düz Metin",
        eticaretGizlilikPolitikasiDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "Markdown",
        eticaretKullanimKosullariMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "HTML",
        eticaretKullanimKosullariHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "Düz Metin",
        eticaretKullanimKosullariDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "Markdown",
        eticaretCerezKullanimiMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "HTML",
        eticaretCerezKullanimiHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "Düz Metin",
        eticaretCerezKullanimiDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
    ];
  } else if (secenek == 3) {
    return [
      [
        "Gizlilik Sözleşmesi",
        "Markdown",
        mobilUygulamaGizlilikPolitikasiMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Gizlilik Sözleşmesi",
        "HTML",
        mobilUygulamaGizlilikPolitikasiHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Gizlilik Sözleşmesi",
        "Düz Metin",
        mobilUygulamaGizlilikPolitikasiDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "Markdown",
        mobilUygulamaKullanimKosullariMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "HTML",
        mobilUygulamaKullanimKosullariHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Kullanım Koşulları",
        "Düz Metin",
        mobilUygulamaKullanimKosullariDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "Markdown",
        mobilUygulamaCerezKullanimiMarkdown
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "HTML",
        mobilUygulamaCerezKullanimiHTML
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
      [
        "Çerez Politikası",
        "Düz Metin",
        mobilUygulamaCerezKullanimiDuzmetin
            .replaceAll("webadresi", internet)
            .replaceAll("şirketadı", sirketAdi)
            .replaceAll("email@email", eposta)
            .replaceAll("sehir", sehir),
      ],
    ];
  } else {
    return [];
  }
}
