// 언어별 메뉴 글자 셋팅
var lang1 = {
    //한국어
    "ko_KR": ["정기구독", "꽃선물", "화병/비품", "플라워클래스", "꽃사전", "소개", "소개"],
    //영어
    "en_US": ["Subscription", "Flower", "Vase/Furniture", "Class", "Dictionary", "About", "About"],
    //일본어
    "ja": ["定期購読", "花", "花瓶/備品", "フラワークラス", "花辞典", "紹介", "紹介"],
    //중국어
    "ch": ["定期阅读", "花", "花瓶/备品", "花班", "花词典", "介绍", "介绍"],
};
var lang2 = {
    //한국어
    "ko_KR": {
        "today_txt1": "오늘의 꽃은",
        "today_txt2": "입니다.",
    },
    //영어
    "en_US": {
        "today_txt1": "Today's flower is",
        "today_txt2": ".",
    },
    //일본어
    "ja": {
        "today_txt1": "今日の花は",
        "today_txt2": "です。",
    },
    //중국어
    "ch": {
        "today_txt1": "今天的花是",
        "today_txt2": ".",
    }
};
var lang3 = {
    //오늘의 꽃 다국어 하드코딩
    //한국어
    "ko_KR": {
        "todayflower_for_lang":".",
    },
    //영어
    "en_US": {
        "todayflower_for_lang":"French Marigold",
    },
    //일본어
    "ja": {
        "todayflower_for_lang":"フレンチマリーゴールドです",
    },
    //중국어
    "ch": {
        "todayflower_for_lang":"法国万寿菊",
    }
};
var lang4 = {
    //한국어
    "ko_KR": {
        "slide_txt1_1": "Better Things",
        "slide_txt1_2": "In a Better Way",
        "slide_txt1_3": "정기구독",
        "slide_txt1_4": "꽃선물",

        "slide_txt2_1": "VASE EDITION",
        "slide_txt2_2": "PLEATS EDITION",
        "slide_txt2_3": "화병&라그라스 패키지 오픈",
        "slide_txt2_4": "꽃이 있어도 꽃이 없어도 공간에 무드를 더할거에요",
        "slide_txt2_5": "상품 보러가기",

        "slide_txt3_1": "COLLABORATION",
        "slide_txt3_2": "CHUNHYANG X KB",
        "slide_txt3_3": "또 한번의 놀라운 콜라보에",
        "slide_txt3_4": "초대합니다",
        "slide_txt3_5": "알파코 팝업스토어에 초대합니다",
        "slide_txt3_6": "보러가기",

        "slide_txt4_1": "생기발랄한 마가렛",
        "slide_txt4_2": "빈티지한 포인트를 주고싶다면",
        "slide_txt4_3": "데이지의 한 종류, 마가렛을 만나보세요",
    },
    //영어
    "en_US": {
        "slide_txt1_1": "Better Things",
        "slide_txt1_2": "In a Better Way",
        "slide_txt1_3": "Subscription",
        "slide_txt1_4": "Flower",

        "slide_txt2_1": "VASE EDITION",
        "slide_txt2_2": "PLEATS EDITION",
        "slide_txt2_3": "Vase & Lagrass Package Opens",
        "slide_txt2_4": "There is a mood even if there is no flower",
        "slide_txt2_5": "View item",

        "slide_txt3_1": "COLLABORATION",
        "slide_txt3_2": "CHUNHYANG X KB",
        "slide_txt3_3": "With another amazing collaboration",
        "slide_txt3_4": "Invite",
        "slide_txt3_5": "Invite you to the Alpaco POPUP store",
        "slide_txt3_6": "View",

        "slide_txt4_1": "a lively Margaret",
        "slide_txt4_2": "Give a vintage point",
        "slide_txt4_3": "Meet Margaret",
    },
    //일본어
    "ja": {
        "slide_txt1_1": "より良いもの",
        "slide_txt1_2": "より良い方法で",
        "slide_txt1_3": "定期購読",
        "slide_txt1_4": "花",

        "slide_txt2_1": "花瓶編",
        "slide_txt2_2": "プリーツエディション",
        "slide_txt2_3": "花瓶&ラグラスパッケージオープン",
        "slide_txt2_4": "花があっても花がなくてもムードがある",
        "slide_txt2_5": "詳細を見る",

        "slide_txt3_1": "コラボレーション",
        "slide_txt3_2": "春香 X KB",
        "slide_txt3_3": "もう一度の驚くべきコラボに",
        "slide_txt3_4": "招待します",
        "slide_txt3_5": "アルファコポップアップストアにご招待します",
        "slide_txt3_6": "見に行く",

        "slide_txt4_1": "生き生きとしたマーガレット",
        "slide_txt4_2": "ビンテージなポイントをあげたい綿",
        "slide_txt4_3": "マーガレットに会ってみてください",
    },
    //중국어
    "ch": {
        "slide_txt1_1": "更美好的事",
        "slide_txt1_2": "以更好的方式",
        "slide_txt1_3": "定期订阅",
        "slide_txt1_4": "花",

        "slide_txt2_1": "花瓶版",
        "slide_txt2_2": "褶皱版",
        "slide_txt2_3": "花瓶&玻璃包装开业",
        "slide_txt2_4": "就算有花 没有花 也会在空间里增添情调",
        "slide_txt2_5": "查看商品",

        "slide_txt3_1": "COLLABORATION",
        "slide_txt3_2": "CHUNHYANG X KB",
        "slide_txt3_3": "又一次惊人的合作",
        "slide_txt3_4": "邀请",
        "slide_txt3_5": "邀请您到 Alpaco 弹出式商店",
        "slide_txt3_6": "查看商品",

        "slide_txt4_1": "生气勃勃的玛格丽特",
        "slide_txt4_2": "想给复古的亮点棉",
        "slide_txt4_3": "雏菊的一种，玛格丽特。",
    }
};

// 함수 셋팅: 언어 선택이 변경될 때 각 요소의 언어로 바꿔줌
function changeLang(obj) {
    var selectedLanguage = document.getElementById("selectedLanguage");
    selectedLanguage.innerHTML = obj.innerHTML; // 선택한 언어로 toggle 텍스트 변경

    var sv = obj.getAttribute("data-value"); // 선택한 옵션의 data-value 속성 값 읽기

    var languageCode1 = lang1[sv]; // 언어 설정 객체 값 가져오기
    var target1 = document.getElementsByClassName("lang_target"); // 변경 대상:.lang_target
    for (var i = 0; i < target1.length; i++) {
        target1[i].innerHTML = languageCode1[i]; // 해당 순번 lang_target 요소에 해당 순번 배열값 넣기
    }

    var languageCode2 = lang2[sv]; // lang2 언어 설정 객체 값 가져오기
    var target2_1 = document.getElementsByClassName("today_txt1")[0]; // today_txt1 요소
    var target2_2 = document.getElementsByClassName("today_txt2")[0]; // today_txt2 요소
    target2_1.innerHTML = languageCode2.today_txt1; // today_txt1 요소에 lang2 값 넣기
    target2_2.innerHTML = languageCode2.today_txt2; // today_txt2 요소에 lang2 값 넣기

    var languageCode3 = lang3[sv]; // lang3 언어 설정 객체 값 가져오기
    var target3 = document.getElementsByClassName("todayflower_for_lang")[0]; // todayflower_for_lang 요소
    target3.innerHTML = languageCode3.todayflower_for_lang; // todayflower_for_lang 요소에 lang3 값 넣기

    var languageCode4 = lang4[sv]; // lang2 언어 설정 객체 값 가져오기
    var target4_1_1 = document.getElementsByClassName("slide_txt1_1")[0];
    var target4_1_2 = document.getElementsByClassName("slide_txt1_2")[0];
    var target4_1_3 = document.getElementsByClassName("slide_txt1_3")[0];
    var target4_1_4 = document.getElementsByClassName("slide_txt1_4")[0];

    var target4_2_1 = document.getElementsByClassName("slide_txt2_1")[0];
    var target4_2_2 = document.getElementsByClassName("slide_txt2_2")[0];
    var target4_2_3 = document.getElementsByClassName("slide_txt2_3")[0];
    var target4_2_4 = document.getElementsByClassName("slide_txt2_4")[0];
    var target4_2_5 = document.getElementsByClassName("slide_txt2_5")[0];

    var target4_3_1 = document.getElementsByClassName("slide_txt3_1")[0];
    var target4_3_2 = document.getElementsByClassName("slide_txt3_2")[0];
    var target4_3_3 = document.getElementsByClassName("slide_txt3_3")[0];
    var target4_3_4 = document.getElementsByClassName("slide_txt3_4")[0];
    var target4_3_5 = document.getElementsByClassName("slide_txt3_5")[0];
    var target4_3_6 = document.getElementsByClassName("slide_txt3_6")[0];

    var target4_4_1 = document.getElementsByClassName("slide_txt4_1")[0];
    var target4_4_2 = document.getElementsByClassName("slide_txt4_2")[0];
    var target4_4_3 = document.getElementsByClassName("slide_txt4_3")[0];

    target4_1_1.innerHTML = languageCode4.slide_txt1_1;
    target4_1_2.innerHTML = languageCode4.slide_txt1_2;
    target4_1_3.innerHTML = languageCode4.slide_txt1_3;
    target4_1_4.innerHTML = languageCode4.slide_txt1_4;

    target4_2_1.innerHTML = languageCode4.slide_txt2_1;
    target4_2_2.innerHTML = languageCode4.slide_txt2_2;
    target4_2_3.innerHTML = languageCode4.slide_txt2_3;
    target4_2_4.innerHTML = languageCode4.slide_txt2_4;
    target4_2_5.innerHTML = languageCode4.slide_txt2_5;

    target4_3_1.innerHTML = languageCode4.slide_txt3_1;
    target4_3_2.innerHTML = languageCode4.slide_txt3_2;
    target4_3_3.innerHTML = languageCode4.slide_txt3_3;
    target4_3_4.innerHTML = languageCode4.slide_txt3_4;
    target4_3_5.innerHTML = languageCode4.slide_txt3_5;
    target4_3_6.innerHTML = languageCode4.slide_txt3_6;

    target4_4_1.innerHTML = languageCode4.slide_txt4_1;
    target4_4_2.innerHTML = languageCode4.slide_txt4_2;
    target4_4_3.innerHTML = languageCode4.slide_txt4_3;
}