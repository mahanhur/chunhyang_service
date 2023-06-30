<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnKt8_N4-FKOnhI_pSaDL7g_g-XI1-R9E"></script>
<script src="./assets/js/vendor.bundle.js"></script>
<script src="./assets/js/theme.bundle.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<style>
    .map_wrap {overflow:hidden;height:500px}
</style>

<script>
    let quick = {
        map: null,
        init: function () {
            var mapContainer = document.querySelector('#map');
            var mapOption = {
                // center: new kakao.maps.LatLng(37.544684, 127.05672), // 지도의 중심좌표 37.5436816,127.05977809
                center: new kakao.maps.LatLng(37.543681, 127.05977),
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
                imageSize = new kakao.maps.Size(100, 100), // 마커이미지의 크기입니다
                imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

            // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
            /*========================================================================*/
            var line // 그려질 선 객체입니다
            let linepath = [
                new kakao.maps.LatLng(37.54455938,127.05640094),
                new kakao.maps.LatLng(37.54451776,127.05653063),
                new kakao.maps.LatLng(37.54448836,127.05662897),
                new kakao.maps.LatLng(37.5444567,127.05673754),
                new kakao.maps.LatLng(37.5444226,127.05685995),
                new kakao.maps.LatLng(37.54439869,127.05694363),
                new kakao.maps.LatLng(37.54437516,127.05705384),
                new kakao.maps.LatLng(37.54442261,127.05712483),
                new kakao.maps.LatLng(37.54452433,127.05717576),
                new kakao.maps.LatLng(37.54461941,127.0572063),
                new kakao.maps.LatLng(37.54470393,127.05723414),
                new kakao.maps.LatLng(37.54481599,127.05727196),
                new kakao.maps.LatLng(37.54482718,127.05737038),
                new kakao.maps.LatLng(37.54479075,127.057509),
                new kakao.maps.LatLng(37.54476291,127.05761774),
                new kakao.maps.LatLng(37.54473119,127.05773245),
                new kakao.maps.LatLng(37.54469959,127.05783913),
                new kakao.maps.LatLng(37.54466395,127.05795417),
                new kakao.maps.LatLng(37.5446442,127.05802066),
                new kakao.maps.LatLng(37.54466812,127.05805521),
                new kakao.maps.LatLng(37.54478257,127.05808591),
                new kakao.maps.LatLng(37.54489037,127.05813234),
                new kakao.maps.LatLng(37.5449754,127.05816435),
                new kakao.maps.LatLng(37.54506342,127.05819825),
                new kakao.maps.LatLng(37.54516059,127.05823886),
                new kakao.maps.LatLng(37.54525102,127.05827309),
                new kakao.maps.LatLng(37.54535375,127.05834555),
                new kakao.maps.LatLng(37.54534797,127.05843045),
                new kakao.maps.LatLng(37.54530741,127.05857112),
                new kakao.maps.LatLng(37.54527796,127.05868272),
                new kakao.maps.LatLng(37.54524228,127.05883026),
                new kakao.maps.LatLng(37.5452071,127.05894038),
                new kakao.maps.LatLng(37.54516848,127.05905395),
                new kakao.maps.LatLng(37.54513147,127.05917218),
                new kakao.maps.LatLng(37.54509525,127.05929188),
                new kakao.maps.LatLng(37.54506204,127.05940741),
                new kakao.maps.LatLng(37.54502682,127.05948502),
                new kakao.maps.LatLng(37.54499336,127.05961799),
                new kakao.maps.LatLng(37.54498132,127.05971002),
                new kakao.maps.LatLng(37.54494106,127.05984102),
                new kakao.maps.LatLng(37.54490036,127.05998553),
                new kakao.maps.LatLng(37.54485518,127.0601325),
                new kakao.maps.LatLng(37.5448212,127.06024049),
                new kakao.maps.LatLng(37.54477826,127.06036838),
                new kakao.maps.LatLng(37.54474099,127.06048636),
                new kakao.maps.LatLng(37.54471049,127.0605896),
                new kakao.maps.LatLng(37.5446688,127.06073338),
                new kakao.maps.LatLng(37.54462727,127.06086126),
                new kakao.maps.LatLng(37.54458565,127.06098866),
                new kakao.maps.LatLng(37.54456279,127.06106382),
                new kakao.maps.LatLng(37.54453507,127.06116854),
                new kakao.maps.LatLng(37.54450119,127.06128087),
                new kakao.maps.LatLng(37.54447098,127.06138796),
                new kakao.maps.LatLng(37.54443217,127.06151208),
                new kakao.maps.LatLng(37.54439775,127.06162376),
                new kakao.maps.LatLng(37.54435972,127.06174689),
                new kakao.maps.LatLng(37.54432541,127.06188952),
                new kakao.maps.LatLng(37.54428715,127.06201675),
                new kakao.maps.LatLng(37.54425595,127.06213252),
                new kakao.maps.LatLng(37.54421,127.0622681),
                new kakao.maps.LatLng(37.54416646,127.06239803),
                new kakao.maps.LatLng(37.54413183,127.06248866),
                new kakao.maps.LatLng(37.54416951,127.06250946),
                new kakao.maps.LatLng(37.54423597,127.06254278),
                new kakao.maps.LatLng(37.54431484,127.06258069),
                new kakao.maps.LatLng(37.54439885,127.06262343),
                new kakao.maps.LatLng(37.5444845,127.06265896),
                new kakao.maps.LatLng(37.54458202,127.06270497),
                new kakao.maps.LatLng(37.54467452,127.06274624),
                new kakao.maps.LatLng(37.54475911,127.06276711),
                new kakao.maps.LatLng(37.54477731,127.06279151),
                new kakao.maps.LatLng(37.54486597,127.06280797),
                new kakao.maps.LatLng(37.5448697,127.06284964),
                new kakao.maps.LatLng(37.54482893,127.06297892),
                new kakao.maps.LatLng(37.54479533,127.06308854),
                new kakao.maps.LatLng(37.54476447,127.06319317),
                new kakao.maps.LatLng(37.54473283,127.06330378),
                new kakao.maps.LatLng(37.54469803,127.06341767),
                new kakao.maps.LatLng(37.54466335,127.06353237),
                new kakao.maps.LatLng(37.54462686,127.0636424),
                new kakao.maps.LatLng(37.5445919,127.0637517),
                new kakao.maps.LatLng(37.54455765,127.06386002),
                new kakao.maps.LatLng(37.54450857,127.06400337),
                new kakao.maps.LatLng(37.54447082,127.06412978),
                new kakao.maps.LatLng(37.54443575,127.06424727),
                new kakao.maps.LatLng(37.54440807,127.06438948),
                new kakao.maps.LatLng(37.54441794,127.06444228),
                new kakao.maps.LatLng(37.54432909,127.06439586)
            ]; // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다

                $('#addrbtn').click(function () {
                line = new kakao.maps.Polyline({
                    map: map, // 선을 표시할 지도입니다
                    path: linepath, // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
                    strokeWeight: 5, // 선의 두께입니다
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
                    [37.54455938,127.05640094 ],
                    // [37.54451776,127.05653063 ],
                    // [37.54448836,127.05662897 ],
                    [37.5444567,127.05673754 ],
                    // [37.5444226,127.05685995 ],
                    // [37.54439869,127.05694363 ],
                    [37.54437516,127.05705384 ],
                    // [37.54442261,127.05712483 ],
                    // [37.54452433,127.05717576 ],
                    [37.54461941,127.0572063 ],
                    // [37.54470393,127.05723414 ],
                    // [37.54481599,127.05727196 ],
                    [37.54482718,127.05737038 ],
                    // [37.54479075,127.057509 ],
                    // [37.54476291,127.05761774 ],
                    [37.54473119,127.05773245 ],
                    // [37.54469959,127.05783913 ],
                    // [37.54466395,127.05795417 ],
                    [37.5446442,127.05802066 ],
                    // [37.54466812,127.05805521 ],
                    // [37.54478257,127.05808591 ],
                    [37.54489037,127.05813234 ],
                    // [37.5449754,127.05816435 ],
                    // [37.54506342,127.05819825 ],
                    [37.54516059,127.05823886 ],
                    // [37.54525102,127.05827309 ],
                    // [37.54535375,127.05834555 ],
                    [37.54534797,127.05843045 ],
                    // [37.54530741,127.05857112 ],
                    // [37.54527796,127.05868272 ],
                    [37.54524228,127.05883026 ],
                    // [37.5452071,127.05894038 ],
                    // [37.54516848,127.05905395 ],
                    [37.54513147,127.05917218 ],
                    // [37.54509525,127.05929188 ],
                    // [37.54506204,127.05940741 ],
                    [37.54502682,127.05948502 ],
                    // [37.54499336,127.05961799 ],
                    // [37.54498132,127.05971002 ],
                    [37.54494106,127.05984102 ],
                    // [37.54490036,127.05998553 ],
                    // [37.54485518,127.0601325 ],
                    [37.5448212,127.06024049 ],
                    // [37.54477826,127.06036838 ],
                    // [37.54474099,127.06048636 ],
                    [37.54471049,127.0605896 ],
                    // [37.5446688,127.06073338 ],
                    // [37.54462727,127.06086126 ],
                    [37.54458565,127.06098866 ],
                    // [37.54456279,127.06106382 ],
                    // [37.54453507,127.06116854 ],
                    [37.54450119,127.06128087 ],
                    // [37.54447098,127.06138796 ],
                    // [37.54443217,127.06151208 ],
                    [37.54439775,127.06162376 ],
                    // [37.54435972,127.06174689 ],
                    // [37.54432541,127.06188952 ],
                    [37.54428715,127.06201675 ],
                    // [37.54425595,127.06213252 ],
                    // [37.54421,127.0622681 ],
                    [37.54416646,127.06239803 ],
                    // [37.54413183,127.06248866 ],
                    // [37.54416951,127.06250946 ],
                    [37.54423597,127.06254278 ],
                    // [37.54431484,127.06258069 ],
                    // [37.54439885,127.06262343 ],
                    [37.5444845,127.06265896 ],
                    // [37.54458202,127.06270497 ],
                    // [37.54467452,127.06274624 ],
                    [37.54475911,127.06276711 ],
                    // [37.54477731,127.06279151 ],
                    // [37.54486597,127.06280797 ],
                    [37.5448697,127.06284964 ],
                    // [37.54482893,127.06297892 ],
                    // [37.54479533,127.06308854 ],
                    [37.54476447,127.06319317 ],
                    // [37.54473283,127.06330378 ],
                    // [37.54469803,127.06341767 ],
                    [37.54466335,127.06353237 ],
                    // [37.54462686,127.0636424 ],
                    // [37.5445919,127.0637517 ],
                    [37.54455765,127.06386002 ],
                    // [37.54450857,127.06400337 ],
                    // [37.54447082,127.06412978 ],
                    [37.54443575,127.06424727 ],
                    // [37.54440807,127.06438948 ],
                    // [37.54441794,127.06444228 ],
                    [37.54432909,127.06439586 ]
                ];

                for (let j = 0; j <= samplepath.length; j += 1) {
                    setTimeout(() => {
                            if(j===samplepath.length) toastr.success('퀵배송이 완료 되었습니다')
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
