<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<script src="./assets/js/vendor.bundle.js"></script>
<script src="./assets/js/theme.bundle.js"></script>

<style>
    .map_wrap {overflow:hidden;height:500px}
</style>

<script>
    let quick = {
        map: null,
        init: function () {
            var mapContainer = document.querySelector('#map');
            var mapOption = {
                center: new kakao.maps.LatLng(37.544684, 127.05672), // 지도의 중심좌표
                level: 4 // 지도의 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOption);

            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            var rvContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
            var rv = new kakao.maps.Roadview(rvContainer); //로드뷰 객체
            var rvClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

            var imageSrc = '/assets/img/flower.png', // 마커이미지의 주소입니다
                imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
                imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

            // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
            /*========================================================================*/
            var line // 그려질 선 객체입니다
            let linepath = [
                new kakao.maps.LatLng(37.544684, 127.05672),
                new kakao.maps.LatLng(37.544575, 127.05695),
                new kakao.maps.LatLng(37.544521, 127.05724),
                new kakao.maps.LatLng(37.544701, 127.05729),
                new kakao.maps.LatLng(37.544863, 127.05738),
                new kakao.maps.LatLng(37.544737, 127.05772),
                new kakao.maps.LatLng(37.544683, 127.05794),
                new kakao.maps.LatLng(37.544719, 127.05803),
                new kakao.maps.LatLng(37.544863, 127.05803),
                new kakao.maps.LatLng(37.545025, 127.05821),
                new kakao.maps.LatLng(37.545385, 127.05835),
                new kakao.maps.LatLng(37.545331, 127.05867),
                new kakao.maps.LatLng(37.545205, 127.05894),
                new kakao.maps.LatLng(37.545079, 127.05930),
                new kakao.maps.LatLng(37.545006, 127.05953),
                new kakao.maps.LatLng(37.545006, 127.05971),
                new kakao.maps.LatLng(37.544898, 127.06000),
                new kakao.maps.LatLng(37.544826, 127.06034),
                new kakao.maps.LatLng(37.544682, 127.06061),
                new kakao.maps.LatLng(37.544591, 127.06093),
                new kakao.maps.LatLng(37.544501, 127.06118),
                new kakao.maps.LatLng(37.544645, 127.06120),
                new kakao.maps.LatLng(37.544897, 127.06134),
                new kakao.maps.LatLng(37.545132, 127.06152),
                new kakao.maps.LatLng(37.545240, 127.06159),
                new kakao.maps.LatLng(37.545005, 127.06254),
                new kakao.maps.LatLng(37.544897, 127.06270),
                new kakao.maps.LatLng(37.544807, 127.06292),
                new kakao.maps.LatLng(37.544752, 127.06299),
                new kakao.maps.LatLng(37.544716, 127.06313),
                new kakao.maps.LatLng(37.544662, 127.06328),
                new kakao.maps.LatLng(37.544608, 127.06340),
                new kakao.maps.LatLng(37.544572, 127.06367),
                new kakao.maps.LatLng(37.544482, 127.06387),
                new kakao.maps.LatLng(37.544463, 127.06410)
            ]; // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다

                $('#addrbtn').click(function () {
                line = new kakao.maps.Polyline({
                    map: map, // 선을 표시할 지도입니다
                    path: linepath, // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
                    strokeWeight: 3, // 선의 두께입니다
                    strokeColor: '#db4040', // 선의 색깔입니다
                    strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
                    endArrow: true, // 선의 끝을 화살표로 표시되도록 설정한다
                    strokeStyle: 'solid' // 선의 스타일입니다
                })
                line.setMap(map);

                // //전달받은 좌표(position)에 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄웁니다
                // var position =new kakao.maps.LatLng(37.544684, 127.05672);
                //
                // rvClient.getNearestPanoId(position, 50, function(panoId) {
                //     if (panoId === null) {
                //         rvContainer.style.display = 'none'; //로드뷰를 넣은 컨테이너를 숨깁니다
                //         mapWrapper.style.width = '100%';
                //         map.relayout();
                //     } else {
                //         mapWrapper.style.width = '50%';
                //         map.relayout(); //지도를 감싸고 있는 영역이 변경됨에 따라, 지도를 재배열합니다
                //         rvContainer.style.display = 'block'; //로드뷰를 넣은 컨테이너를 보이게합니다
                //         rv.setPanoId(panoId, position); //panoId를 통한 로드뷰 실행
                //         rv.relayout(); //로드뷰를 감싸고 있는 영역이 변경됨에 따라, 로드뷰를 재배열합니다
                //    }
                // });


                /*========================================================================*/
                var markers = [];// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
                // 마커를 생성하고 지도위에 표시하는 함수입니다
                function addMarker(position) {
                    var marker = new kakao.maps.Marker({// 마커를 생성합니다
                        position: position,
                        image: markerImage // 마커이미지 설정
                    });
                    // 마커가 지도 위에 표시되도록 설정합니다
                    marker.setMap(map);
                    // 생성된 마커를 배열에 추가합니다
                    markers.push(marker);
                }

                $('#deliverybtn').click(function () {
                let samplepath = [
                    [37.544684, 127.05672],
                    [37.544575, 127.05695],
                    [37.544521, 127.05724],
                    [37.544701, 127.05729],
                    [37.544863, 127.05738],
                    [37.544737, 127.05772],
                    [37.544683, 127.05794],
                    [37.544719, 127.05803],
                    [37.544863, 127.05803],
                    [37.545025, 127.05821],
                    [37.545385, 127.05835],
                    [37.545331, 127.05867],
                    [37.545205, 127.05894],
                    [37.545079, 127.05930],
                    [37.545006, 127.05953],
                    [37.545006, 127.05971],
                    [37.544898, 127.06000],
                    [37.544826, 127.06034],
                    [37.544682, 127.06061],
                    [37.544591, 127.06093],
                    [37.544501, 127.06118],
                    [37.544645, 127.06120],
                    [37.544897, 127.06134],
                    [37.545132, 127.06152],
                    [37.545240, 127.06159],
                    [37.545005, 127.06254],
                    [37.544897, 127.06270],
                    [37.544807, 127.06292],
                    [37.544752, 127.06299],
                    [37.544716, 127.06313],
                    [37.544662, 127.06328],
                    [37.544608, 127.06340],
                    [37.544572, 127.06367],
                    [37.544482, 127.06387],
                    [37.544463, 127.06410]
                ];

                for (let j = 0; j <= samplepath.length; j += 1) {
                    setTimeout(() => {
                            if(j===samplepath.length) alert('퀵배송 완료!')
                            var p = new kakao.maps.LatLng(samplepath[j][0], samplepath[j][1]);
                            addMarker(p)
                            if (markers.length > 1) {
                                var delmarker = markers[markers.length - 2];
                                delmarker.setMap(null);
                            }
                        }
                        , j * 500)

                }
                for (let q = 0; q <= samplepath.length; q += 1) {
                    setTimeout(() => {
                            var p = new kakao.maps.LatLng(samplepath[q][0], samplepath[q][1]);
                            console.log(p);
                            rvClient.getNearestPanoId(p, 50, function (panoId) {
                                if (panoId === null) {
                                    rvContainer.style.display = 'none'; //로드뷰를 넣은 컨테이너를 숨깁니다
                                    mapWrapper.style.width = '100%';
                                    map.relayout();
                                } else {
                                    mapWrapper.style.width = '50%';
                                    map.relayout(); //지도를 감싸고 있는 영역이 변경됨에 따라, 지도를 재배열합니다
                                    rvContainer.style.display = 'block'; //로드뷰를 넣은 컨테이너를 보이게합니다
                                    rv.setPanoId(panoId, p); //panoId를 통한 로드뷰 실행
                                    rv.relayout(); //로드뷰를 감싸고 있는 영역이 변경됨에 따라, 로드뷰를 재배열합니다
                                }
                            });
                        }
                        , q * 500)
                }
            });
        })
    }
    }
    $(function (){
        quick.init();
    });

</script>
<body>
    <nav class="py-2">
        <div class="col" style="padding:30px; background-color: black; color: white; text-align:center; font-size: large;">
            실시간 <strong style="color: yellow">퀵배송 현황</strong>입니다.
        </div>
    </nav>
    <section>
        <div class="container py-3">
            <div class="row map_wrap col-lg-12" style="padding: 0px">
                <div class="col-lg-5" id="mapWrapper" style="width:50%;height:500px;">
                    <div id="map" style="width:100%;height:100%"></div> <!-- 지도를 표시할 div 입니다 -->
                </div>
                <div class="col-lg-4" id="rvWrapper" style="width:50%;height:500px;">
                    <div id="roadview" style="width:100%;height:100%"></div> <!-- 로드뷰를 표시할 div 입니다 -->
                </div>
            </div>
            <br>
            <div class="row col-6" style="align-items: stretch">
                <div class="col-3"><button type="button" class="btn btn-dark" id="addrbtn">배송루트 확인</button></div>
                <div class="col-3"><button type="button" class="btn btn-outline-dark" id="deliverybtn">실시간 배송확인</button></div>
            </div>
            </div>
        </div>
    </section>
</body>