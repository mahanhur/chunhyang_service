<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>
    #map01 > #map{
        width:1000px;
        height:400px;
        border: 2px solid GRAY;
    }
</style>

<script>
    let map01 = {
        map:null,
        init:function (){
            var mapContainer = document.querySelector('#map');
            var mapOption = {
                center: new kakao.maps.LatLng(37.55715, 127.02158), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOption);

            var mapTypeControl = new kakao.maps.MapTypeControl();
            map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
            var zoomControl = new kakao.maps.ZoomControl();
            map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

            var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다
                imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
                imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

            // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

            var startPosition  = new kakao.maps.LatLng(37.55715, 127.02158);
            var start = new kakao.maps.Marker({
                position: startPosition,
                image: markerImage // 마커이미지 설정
            });
            start.setMap(map);

            /*========================================================================*/
            // 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
            kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
                // 클릭한 위치에 마커를 표시합니다
                addMarker(mouseEvent.latLng);
            });
            // 마커에 클릭이벤트를 등록합니다
            // kakao.maps.event.addListener(marker, 'click', function(mouseEvent) {
            //     delMarker(mouseEvent.marker);
            // });
            // function delMarker(marker) {
            //     var marker = marker;
            //     marker.setMap(null);
            // } 마커 클릭시 삭제....하 잘 안되네요...

            // 지도에 표시된 마커 객체를 가지고 있을 배열입니다
            var markers = [];

            // 마커를 생성하고 지도위에 표시하는 함수입니다
            function addMarker(position) {
                // 마커를 생성합니다
                var marker = new kakao.maps.Marker({
                    position: position,
                    draggable : true // 마커를 드래그 가능하도록 설정한다
                });
                // 마커(배송지)는 1개만 지정 가능하도록 설정
                if(markers.length < 1){
                // 마커가 지도 위에 표시되도록 설정합니다
                marker.setMap(map);
                // 생성된 마커를 배열에 추가합니다
                markers.push(marker);
                }
                else{
                    alert("배송지는 1곳만 지정가능")
                }
            }
            /*========================================================================*/
        }

    };

    $(function (){
        map01.init();
    })

</script>

<div class="col-sm-8 text-left">
    <div class="container" id="map01" style="align-content: center">
        <h3>[만드는 중입니다. 너무힘들다]퀵배송!</h3>
        <div id="map"></div>
    </div>
</div>