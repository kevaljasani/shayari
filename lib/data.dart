import 'dart:ui';

import 'package:flutter/material.dart';

class data{

  static List l=["शुभकामनाये शायरी", "दोस्ती शायरी", "मजेदार शायरी", "भगवान शायरी", "जीवन शायरी", "महोबत शायरी", "याद शायरी", "दूसरी शायरी",
    "राजनीति शायरी", "प्रेम शायरी",];

  static List images=["1.png","2.png","3.png","4.png","6.png","7.png","8.png","9.png","10.png","11.png"];

  static List <Color> colors=[Colors.purple,
    Colors.purpleAccent,
    Colors.deepPurple,
    Colors.deepPurpleAccent,
    Colors.pinkAccent,
    Colors.yellow,
    Colors.yellowAccent,
    Colors.red,
    Colors.redAccent,
    Colors.orange,
    Colors.orangeAccent,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.green,
    Colors.greenAccent,
    Colors.blue,
    Colors.blueAccent,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.blueGrey,
    Colors.grey,
    Colors.black38,
    Colors.black45,
    Colors.black,
    Colors.white,];

  static List emoji=["""😀 😃 😄""",
    """😝 😜 🤪""",
    """😍 🥰 😘 😗""",
    """😩 🥺 😢 😭""",
    """😣 😖 """,
    """😱 😨 😰""",
    """😦 😧 😮 😲""",
    """🧑‍🤝‍🧑 👬""",
    """👨‍❤️‍👨 👩‍❤️‍👨 👩‍❤️‍💋‍👩 💏""",
    """🧡 💛 💚 """,
    """💕 💞 💓""",
    """💔 💘""",
    """🧑🏿‍❤️‍💋‍🧑🏼""",
    """🤝🏻 🤝🏼 """,
    """🍋 🍌 🍉 🍇 🍓 """,
    """🐵 🙈 🙉 🙊""",
    """🐶 🐱 🐭 🐹 """,
    """ 🙋🏿‍ 🙋🏿 """,
    """👆 🖕 👇 ☝️""",
    """🤟 🤘 🤙""",
    """👋 🤚 🖐 ✋""",
    """👅 👄 💋 🩸""",
  ];

  static List shayari1=["""ये रात चाँदनी बनकर आँगन में आये,
तारे लोरी गा कर आपको सुनाएं,
आयें आपको इतने प्यारे सपने यार... 
कि नींद में भी आप हलके से मुस्कुराएं।""",
"""ईश्वर न करे आपको कोई ग़म हो,
और सिर्फ खुशियाँ और हँसी मिले,
ग़म जब भी बढ़ चले आपकी ओर,
ईश्वर करे रास्ते में उसे पहले हम मिले।""",
"""जन्मदिन के ये बहुत ख़ास लम्हे मुबारक,
आँखों में बसे नए नए ख्वाब मुबारक,
जिंदगी जो लेकर आयी है आपके लिए आज,
वो तमाम खुशियों की हसी सौगात मुबारक।""" ,
"""ज़िन्दगी की कुछ खास दुआएं लेलो हमसे,
जन्मदिन पर कुछ नजराने लेलो हमसे,
भर दे रंग जो तेरे जीवन के पलो में,
आज वो हँसी मुबारक-बाद लेलो हमसे।""" ,
"""खुशी से बीते हर दिन ,
हर सुहानी रात हो,
जिस तरफ आपके कदम पड़े ,
फूलों की बरसात हो। जन्मदिवस की शुभकामनाये...!""",
"""दिल से मेरी दुआ है के खुश रहो तुम,
मिले न कोई गम जहाँ भी रहो तुम,
समंदर की तरह दिल है गहरा तुम्हारा,
सदा खुशी से भरा रहे दामन तुम्हारा।""",
"""गैरों को भी जो अपना समझे उसे मां कहते है ,
गैरों को भी जो अपना समझे उसे मां कहते है ,
लाख दर्द दिल में छुपाकर भी जो तुम्हारे सामने हंस दे ,
उस हस्ती को भी मां कहते है ।""",];

 static List shayari2=["""सच्चे दोस्त कभी गिरने नहीं देते,
 न किसी कि नजरों में,
 न किसी के कदमों में !""",
"""सच्ची है मेरी दोस्ती आजमा के देख लो,
करके यकीं मुझ पे मेरे पास आ के देख लो,
बदलता नहीं कभी सोना अपना रंग,
जितनी बार चाहे आग लगा कर देख लो !!""",
"""सच्चा दोस्त वही होता है जो हमे कभी गिरने न दे,
वो न कभी किसी की नजरों में गिरने दे,
और न कभी किसी के कदमो में गिरने दे !""",
"""जब दोस्ती सच्ची और मजबूत होती है,
तो उसे जताने की जरूरत नही होती है,
चाहे दोस्त कितना भी दूर चला जाये,
उसे पास लाने की जरूरत नही होती है !""",
"""बरसों बाद कॉलेज के कैंटीन में गया,
चाय वाले ने पूछा कि चाय के साथ क्या लोगे,
मैंने कहा पुराने दोस्त मिलेंगे !""",
"""याद ऐसी करना जिसकी हद न हो,
विश्वास इतनी करना कभी शक न हो,
इंतजार इतना करो की कोई वक़्त न हो,
दोस्ती ऐसी करना जिसमे नफरत न हो !""",
"""जो दिल को अच्छा लगता है ,
उसी को दोस्त कहता हूँ ,
मुनाफा देखकर रिश्तों की सियासत नहीं करता !""",];

 static List shayari3=["""हमको मिटा सके यह जमाने में दम नहीं,
हमसे जमाना खुद है ज़माने से हम नहीं !""",
"""प्यार में कोई तो दिल तोड़ देता है,
दोस्ती में कोई तो भरोसा तोड़ देता है,
ज़िंदगी जीना तो कोई ग़ुलाब से सीखे,
जो खुद टूट कर दो दिलों को जोड़ देता है !""",
"""हजारो जवाब सोच रखे थे मेरे दिल ने,
काश कभी तुमने पूछ लिया होता,
इतना प्यार क्यूँ करते हो !!""",
"""जुबा तो खोल,
नज़र तो मिला,
जवाब तो दे,
में कितनी बार लुटा हु,
मुझे हिसाब तो दे ! """,
"""तेरे बदन की लिखावट में हैं उतार चढाव,
में तुझको कैसे पढूंगा, मुझे किताब तो दे !""",
"""खोया इतना कुछ कि फिर पाना न आया,
प्यार कर तो लिया पर जताना न आया,
आ गए तुम इस दिल में पहली ही नज़र में,
बस हमें आपके दिल में समाना ना आया!""",
"""इज्जत मिट जाए जिससे वो,
दहलीज कभी मत लांघना,
जिंदगी और इश्क़ में,
कभी भीख नहीं मांगना ।""",
"""अधूरी रह गयी हर बात ,
बस कहने की वाले थे दिल के ज़ज़्बात ,
उन्होंने बिना देर कहे ही कह दिया ,
बहोत प्यार करते है हम , " उनसे !" """,];

 static List shayari4=["""जो लोग ईश्वर को पाना चाहते हैं,उन्हें वाणी,
मन, इंद्रियों की पवित्रता और
एक दयालु हृदय की जरूरत होती हैं।""",
"""जय हो हृदय में बसे नन्द लाल की,
जय हो हृदय में बसे बाल गोपाल की।""",
"""साधू बने तो मोहमाया छूटे,
वैरागी बने तो छूटे तन,
हरि तेरे से सच्चा प्रेम हो जाए तोतभी छूटे सारे मोह माया के बंधन।""",
"""शिव की ज्योति से प्रकाश बढ़ता है । 
जो भी जाता है भोले के द्वार।
कुछ न कुछ उसे जरुर मिलता है""",
"""कर्म अच्छे हो तो वही धर्म बन जाता है,
ऐसा इंसान, ईश्वर का भक्त बन जाता है।""",
"""मुझे आप मिल गये ईश्वर ,
सहारा हो तो ऐसा हो
जिधर देखू उधर तूम हो,
 नजारा हो तो ऐसा हो।""",
"""जीवन रुपी जहाज के है हम खिवैया,
अगर तूफ़ान में डूबने लगे आपकी नैया,
दोस्त डरना मत,
बेड़ा पार लगाएगा कृष्ण कन्हैया।""",
"""मन में करो सब शिव जी का ध्यान,
सबसे सुंदर हैं शिव का स्थान,
मिल सभी गुण शिव जी के गाते,
सारी खुशियाँ जीवन में पाते।""",];

 static List shayari5=["""टेंशन उतना ही लो जितने में काम हो जाये,
उतनी नहीं कि जिंदगी ही तमाम हो जाये !""",
"""एक सच यह भी है कि,
बिना लोगों द्वारा आलोचना के,
सफलता की सीढ़ी नहीं चढ़ी जा सकती !""",
"""खुद पर भरोसा करने का हुनर सीख लो,
सहारे कितने भी भरोसेमंद हो,
एक दिन साथ छोड़ ही जाते है !""",
"""इतनी जल्दी दुनिया की कोई चीज,
नही बदलती जितनी जल्दी इंसान की,
नीयत और नजरे बदल जाती है !!""",
"""जिन्दगी में इतनी तेजि से आगे दौड़ो की,
लोगो के बुराई के धागे आपके पैरो मे ही,
आकर टूट जाए !""",
"""जरा सी ज़िंदगी है अरमान बहुत हैं,
हमदर्द नहीं कोई इंसान बहुत हैं,
दिल के दर्द सुनाएं तो किसको,
जो दिल के करीब है वो अनजान बहुत हैं !""",
"""मत सोच इतना ज़िन्दगी के बारे में,
जिसने ज़िन्दगी दी है,
उसने भी कुछ तो सोचा होगा !""",
"""कभी मचलता था ये दिल और अब बहुत सुधर गया है,
जब से जिन्दगी से बुरा वक्त गुजर गया है !""",];

 static List shayari6=["""दिल की हसरत ज़ुबान पे आने लगी,
तूने देखा और ज़िंदगी मुस्कुराने लगी,
ये इश्क़ की इंतेहा थी या दीवानगी मेरी,
हर सूरत मे सूरत तेरी नज़र आने लगी.""",
"""हर एक मुलाकात पर वक़्त का तक़ाज़ा हुआ,
जब से उसे देखा दिल का दर्द ताज़ा हुआ,
सुनी थी सिर्फ़ गाज़ल में जुदाई की बातें,
आज खुद पर बीती तो हक़ीक़त का अंदाज़ा हुआ.""",
"""तुमने देखा कभी चाँद से पानी गिरते हुए,
मैंने देखा ये मंज़र तुम्हें चेहरा धोते हुए.""",
"""ठुकरा दे कोई चाहत को तू हस के सह लेना,
प्यार की तबियत में ज़बर जस्ती नहीं होती.""",
"""ज़िंदगी मे प्यार किसने पाया है,
हम यादों में झूमते है तुम्हारी और ज़माना कहता है,
देखो आज फिर पीकर आया है…""",
"""एक अज़ीब सा रिश्ता है,
मेरे और ख्वाहिशों के दरम्यां,
वो मुझे जीने नही देती… 
और मै उन्हे मरने नही देता..!""",
"""एक शम्मा अंधेरे में जलाए रखना,
सुबा होने को है मौहौल बनाए रखना,
कौन जाने वो किस गली से गुज़रे,
हर गली को फूलो से सजाए रखना!""",
"""आप की यही बात हमको बेकरार करती है,
आप मान की बात दिल मे चुपके क्यो रखते हो.
मूज़े पता हे की आपको हमसे ही प्यार है तो,
आप हमसे प्यार का इज़हार क्यो नही करते हो.""",
"""क्या कहूँ की अब तुझे मोहब्बत नहीं रही,
तेरे प्यार में वो पहली सी शिद्दत नहीं रही…
या तो तेरी वाफाओं का मौसम गुज़र गया,
या ये कहूँ की तुझे अब मेरी ज़रूरत नहीं रही।""",];

 static List shayari7=["""दिल💗 के दर्द को छुपाना कितना मुश्किल है ,
टूटकर फिर मुस्कुराना कितना मुश्किल है ,
किसी के साथ बोहोट डोर तक जाओ फिर देखो ,
 अकेले लौट के आना कितना मुश्किल है """,
"""चाँद की रातों मे ये सारा जहाँ सोता है,
किसी की यादों मे कोई बदनसीब रोता है,
खुदा किसी को मोहोब्बत मे फिदा ना करे,
अगर करे तो फिर कभी किसी को जुड़ा ना करे.""",
"""अब तू नही सनम तो तेरी यादें ही सही,
इन यादों मे छुपी यह अंधेरी रात ही सही,
था ज़िंदगी मे बस दोस्त तेरा ही एक सहारा,
अब वो ही नही रहे तो तेरे ये झुटे वेड ही सही.""",
"""उनकी मोहब्बत का निशान अभी बाकी है,
नाम है होठों पर, 
जान अभी बाकी है,
क्या हुआ देख कर अगर मूह फेर लेती है वो.. 
तसल्ली तो यह है की चेहरे की पहचान अभी बाकी है!""",
"""ना वो आ सके और ना हम कभी जा सके,
ना दिल का दर्द, किसी को सुना सके,
बस बैठे है उनकी याड़ीन मे.. 
ना उन्होने याद किया और ना हम उनको भुला सके.""",
"""दर्द ही सही मगर मेरे इश्क़ का इनाम तो आया,
खाली ही सही मगर हाथों मे जाम तो आया,
मैं हूँ बेवफा ये सबको बताया उसने,
यूँ ही सही मगर उसके लबों पे मेरा नाम तो आया!""",
"""अंजाने में हम अपना दिल ही गावा बैठे,
इस प्यार मे कैसा धोका हैं कर बैठे,
उनसे क्या गीला करे…जब भूल हमारी थी,
जो की बिना दिलवालों से दिल लगा बैठे.""",
"""टूटा💖 हो दिल अगर तो दुख होता है,
करके मोहब्बत किसी से ये दिल तो रोता है,
दर्द का एहसास तो तब होता है,
जब किसी से मोहब्बत💗 हो और उनके दिल मेी कोई और होता है.""",];

 static List shayari8=["""लोग फ्री का Wi-Fi नहीं छोड़ते और पगली,
तूने इतना प्यार करने वाला लड़का छोड़ दिया.""",
"""ज्यादा लगाव ना रख मुझसे ,
मेरे दुश्मन कहते हे मेरी उम्र छोटी हे,
डर मुझे अपनी मौत का नही ,
तेरे अकेले पन का हे.""",
"""Oye पगली सुन तेरे ना ,
कहने से कुछ नहीं होता है,
तू कल भी मेरे दिल में थी ,
आज भी है और कल भी रहेगी.""",
"""घर के दरवाजे बड़े करवा लिए है हमने,
क्योकि कुछ दोस्तों का कद बड़ा हो गया है,
 चार पैसे कमाकर.""",
"""बेगुनाह कोई नहीं,
सबके राज़ होते हैं,
किसी के छुप जाते हैं, 
किसी के छप जाते हैं.""",
"""अगर हम जैसे शरीफो ने 
दादागिरी शुरु करदी तो,
इन हसिनाओ को कोन संभालेगा.""",];

 static List shayari9=["""मुर्दा लोहे को औजार बनाने वाले,
अपने आँसू को हथियार बनाने वाले,
हमको बेकार समझते हैं सियासतदां ,
मगर हम है इस मुल्क की सरकार बनाने वाले.""",
"""मूल जानना बड़ा कठिन हैं नदियों का,
वीरो का,धनुष छोड़कर और गोत्र क्या होता हैं रणधीरो का,
पाते हैं सम्मान तपोबल से भूतल पर शूर,
“जाति-जाति” का शोर मचाते केवल कायर, क्रूर.""",
"""नजर वाले को हिन्दू और मुसलमान दिखता हैं,
मैं अन्धा हूँ साहब, 
मुझे तो हर शख्स में इंसान दिखता हैं.""",
"""राजा बोला रात है
राणी बोली रात है
मंत्री बोला रात है
संत्री बोला रात है
यह सुबह सुबह की बात है""",
"""सभी एक जैसा ही लिखते हैं,
बस मतलब बदल जाते हैं,
सरकारे वैसे ही चलती हैं, 
बस वजीर-ए-आजम बदल जाते हैं.""",
"""मुझको तमीज की सीख देने वाले,
मैंने तेरे मुँह में कई जुबान देखा है,
और तू इतना दिखावा भी ना कर अपनी झूठी ईमानदारी का
मैंने कुछ कहने से पहले अपने गिरेबां में देखा है.""",
"""सियासत की रंगत में ना डूबो इतना,
कि वीरों की शहादत भी नजर ना आए,
जरा सा याद कर लो अपने वायदे जुबान को,
गर तुम्हे अपनी जुबां का कहा याद आए.""",];

 static List shayari10=["""भले तुझे चाहने वाले लाखो होंगे,
जो तुझे खुद से भी ज्यादा चाह सके,
तेरे उन आशिको में सिर्फ हम होंगे !""",
"""मेरा दिल कभी मुझसे यूं बात ना करता था,
तेरे आने के बाद ये मुझे कुछ कहने लगा है ।""",
"""याद आती है तो ज़रा खो जाते हैं,
आँसू आँखों मे उतार आए तो रो जाते हैं,
नींद तो आती नही आँखो में,
लेकिन ख्वाब में आप आओगे सोचकर सो जाते हैं !""",
"""चांद से भी हसीन आपका चेहरा लगता है,
इसीलिए इस चेहरे पर मेरा ये दिल धड़कता है !""",
"""जब भी बारिश आती हैं,
ख्यालों में तुम आते हो,
हवा बनकर तुम प्यारी सी,
दिल की धड़कन बन जाते हो !""",
"""तेरी चाहत में दिल मजबूर हो गया,
बेवफाई दूर करके ये,
हमेशा के लिए तेरा हो गया !""",
"""मानता ही नहीं कमबख्त दिल उसे चाहने से,
मैं हाथ जोड़ता हूँ तो ये गले पड़ जाता है !""",];
}