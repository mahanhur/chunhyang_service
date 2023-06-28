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
}