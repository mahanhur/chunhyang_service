<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
  .ranking-item {
    margin-bottom: 10px;
  }
</style>

<!-- CONTENT -->
<section class="py-12">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12 col-md-10 col-lg-8 col-xl-6 text-center">
<%--        <div id="rankingContainer"></div>--%>

    <h6 class="text-center">인기 검색어👀</h6>
  <ul id="rankingContainer"></ul>
  <div class="ld-row">
          <input type="hidden" checked="checked" id="enablePolling1"/>
        </div>
        <div class="ld-row">
          <input class="ld-time-input" type="hidden" value="2" id="pollingTime1"/>
        </div>
        <div class="ld-row">
          <input class="ld-url-input" type="hidden" id="fetchURL1"/>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  var defaultData = 'http://127.0.0.1/logs/itemcountlog.log';
  var urlInput = document.getElementById('fetchURL1');
  var pollingCheckbox = document.getElementById('enablePolling1');
  var pollingInput = document.getElementById('pollingTime1');
  var chart;

  function createChart() {
    var dataUrl = urlInput.value;

    // 데이터 가공
    fetch(dataUrl)
            .then(response => response.text())
            .then(data => {
              var lines = data.trim().split('\n');
              var seriesData = [];

              lines.forEach(line => {
                var parts = line.split(',');
                var timestamp = parts[0];
                var idorigin = parts[1].trim().replace(/'/g, '');

                function itemname(idorigin) {
                  let id = "";
                  switch (idorigin){
                    case "200":
                      id = "[Special] 사랑의 맹세를 담아, 프로미스 꽃다발";
                      break;
                    case "210":
                      id = "여름의 나에게, 베레나핑크 수국";
                      break;
                    case "211":
                      id = "오묘한 컬러의 감성, 라벤더블루 수국";
                      break;
                    case "212":
                      id = "여름날 더위를 식혀 줄, 스노우볼 수국";
                      break;
                    case "213":
                      id = "여름 태양같이 뜨겁게, 빨간 수국";
                      break;
                    case "214":
                      id = "사랑을 맹세할 때, 하젤 장미";
                      break;
                    case "215":
                      id = "파이어웍스 장미";
                      break;
                    case "216":
                      id = "순수했던 시절이 그립다면, 마루시아 장미";
                      break;
                    case "217":
                      id = "스페인이 생각나면, 클라린스 장미";
                      break;
                    case "218":
                      id = "작지만 튼튼한, 랜덤 피콜리니 거베라";
                      break;
                    case "219":
                      id = "아이의 마음 같은, 랜덤 폼포니 거베라";
                      break;
                    case "221":
                      id = "단아함의 상징, 벤츄라 카라";
                      break;
                    case "222":
                      id = "결혼을 앞둔 너에게, 로베라핑크 리시안셔스";
                      break;
                    case "223":
                      id = "순수한 너, 겨울 화이트 리시안셔스";
                      break;
                    case "224":
                      id = "로제 와인 빛, 메갈로 샴페인 리시안셔스";
                      break;
                    case "225":
                      id = "변치않는 사랑, 리시안셔스";
                      break;
                    case "227":
                      id = "싱그러움이 가득한, 그리너리 꽃다발";
                      break;
                    case "228":
                      id = "눈부시게 빛나는, 브라이트데이 꽃다발";
                      break;
                    case "229":
                      id = "상큼함이 필요할 떄, 트로피컬주스 꽃다발";
                      break;
                    case "230":
                      id = "수줍었던 그때처럼, 젠틀나잇 꽃다발";
                      break;
                    case "231":
                      id = "볼수록 매력적인, 스윗가든 꽃다발";
                      break;
                  }
                  return id;
                }

                var id = itemname(idorigin);
                var count = parseInt(parts[2].trim());

                // 이미 해당 아이템이 존재하는 경우, 새로운 카운트 값으로 갱신
                var existingItem = seriesData.find(item => item.id === id);
                if (existingItem) {
                  if (count > existingItem.count) {
                    existingItem.count = count;
                  }
                } else {
                  seriesData.push({ id: id, count: count });
                }
              });

              // 클릭 수에 따라 정렬
              seriesData.sort((a, b) => b.count - a.count);

              // 화면에 표시
              var rankingContainer = document.getElementById('rankingContainer');
              rankingContainer.innerHTML = '';

              seriesData.forEach((item, index) => {
                var itemElement = document.createElement('div');
                itemElement.className = 'ranking-item';

                var itemRank = document.createElement('span');
                itemRank.textContent = '순위: ' + (index + 1) + '. ';

                var itemName = document.createElement('span');
                itemName.textContent = item.id + ' : ';

                var itemCount = document.createElement('span');
                itemCount.textContent = ' 클릭수: ' + item.count;

                itemElement.appendChild(itemRank);
                itemElement.appendChild(itemName);
                itemElement.appendChild(itemCount);
                rankingContainer.appendChild(itemElement);
              });
            });
  }

  urlInput.value = defaultData;

  pollingCheckbox.onchange = urlInput.onchange = pollingInput.onchange = createChart;

  createChart();

  // 일정 간격마다 데이터 업데이트
  setInterval(createChart, parseInt(pollingInput.value, 10) * 500);
</script>