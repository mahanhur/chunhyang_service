// 언어별 메뉴 글자 셋팅
var lang1 = {
    //한국어
    "ko_KR": ["정기구독", "꽃선물", "화병/비품", "플라워클래스", "꽃사전", "소개", "소개", "로그인", "회원가입", "내정보수정", "로그아웃"],
    //영어
    "en_US": ["Subscription", "Flower", "Vase/Furniture", "Class", "Dictionary", "About", "About", "Login", "Register", "My Information", "Logout"],
    //일본어
    "ja": ["定期購読", "花", "花瓶/備品", "フラワークラス", "花辞典", "紹介", "紹介", "ログイン", "登録", "マイ情報修正", "ログアウト"],
    //중국어
    "ch": ["定期阅读", "花", "花瓶/备品", "花班", "花词典", "介绍", "介绍", "登录", "注册", "修改我的信息", "注销"],
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
}