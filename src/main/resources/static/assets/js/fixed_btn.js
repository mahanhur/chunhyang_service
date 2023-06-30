let chatbtn = {
    init:function(){
        // 버튼 1
        const scrollBtn = document.createElement("button");
        scrollBtn.setAttribute("id", "scroll-btn");
        document.body.appendChild(scrollBtn);
        scrollBtn.classList.add("show");

        const div = document.createElement("div");
        div.setAttribute("id", "fix_icon");
        scrollBtn.appendChild(div);

        const img = document.createElement("img");
        img.setAttribute("src", "/uimg/flower.png");
        div.appendChild(img);

        const span = document.createElement("span");
        span.innerHTML = "나와 어울리는 꽃은?";
        scrollBtn.appendChild(span);

        scrollBtn.addEventListener("click", function(){
            location.href='/pic';
        });
        // 버튼 2
        const scrollBtn2 = document.createElement("button");
        scrollBtn2.setAttribute("id", "scroll-btn2");
        document.body.appendChild(scrollBtn2);
        scrollBtn2.classList.add("show");

        const div2 = document.createElement("div");
        div2.setAttribute("id", "fix_icon");
        scrollBtn2.appendChild(div2);

        const img2 = document.createElement("img");
        img2.setAttribute("src", "/uimg/rocket.png");
        div2.appendChild(img2);

        const span2 = document.createElement("span");
        span2.innerHTML = "🚨 급할땐 퀵!🚨";
        scrollBtn2.appendChild(span2);

        scrollBtn2.addEventListener("click", function(){
            location.href='/quick/order';
        });
        // 버튼 3
        const scrollBtn3 = document.createElement("button");
        scrollBtn3.setAttribute("id", "scroll-btn3");
        document.body.appendChild(scrollBtn3);
        scrollBtn3.classList.add("show");

        const div3 = document.createElement("div");
        div3.setAttribute("id", "fix_icon");
        scrollBtn3.appendChild(div3);

        const img3 = document.createElement("img");
        img3.setAttribute("src", "/uimg/top.png");
        div3.appendChild(img3);

        scrollBtn3.addEventListener("click", function(){
            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });
        });
        // 버튼 4
        const scrollBtn4 = document.createElement("button");
        scrollBtn4.setAttribute("id", "scroll-btn4");
        document.body.appendChild(scrollBtn4);
        scrollBtn4.classList.add("show");

        const div4 = document.createElement("div");
        div4.setAttribute("id", "fix_icon");
        scrollBtn4.appendChild(div4);

        const img4 = document.createElement("img");
        img4.setAttribute("src", "/uimg/coin.png");
        div4.appendChild(img4);

        scrollBtn4.addEventListener("click", function(){
            const modalLink = document.createElement("a");
            modalLink.setAttribute("data-bs-toggle", "modal");
            modalLink.setAttribute("data-bs-target", "#game");
            document.body.appendChild(modalLink);

            setTimeout(() => {
                modalLink.click(); // 모달 링크 클릭하여 모달 창 열기
            }, 0);
        });
        // 버튼 5
        const scrollBtn5 = document.createElement("button");
        scrollBtn5.setAttribute("id", "scroll-btn5");
        document.body.appendChild(scrollBtn5);
        scrollBtn5.classList.add("show");

        const div5 = document.createElement("div");
        div4.setAttribute("id", "fix_icon");
        scrollBtn5.appendChild(div5);

        const img5 = document.createElement("img");
        img5.setAttribute("src", "/uimg/chatbot_minibtn.png");
        div5.appendChild(img5);

        scrollBtn5.addEventListener("click", function(){
            const modalLink = document.createElement("a");
            modalLink.setAttribute("data-bs-toggle", "modal");
            modalLink.setAttribute("data-bs-target", "#chatbot");
            document.body.appendChild(modalLink);

            setTimeout(() => {
                modalLink.click(); // 모달 링크 클릭하여 모달 창 열기
            }, 0);
        });
    }
};

$(function(){
    chatbtn.init();
});