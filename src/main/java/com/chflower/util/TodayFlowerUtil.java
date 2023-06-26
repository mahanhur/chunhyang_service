package com.chflower.util;

import org.json.simple.JSONObject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class TodayFlowerUtil {

    @RequestMapping("/test")
    public static Object todayFlower(String date) throws Exception {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1390804/NihhsTodayFlowerInfo01/selectTodayFlowerView01");
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=R6XTDAtPn1psOlxitX0FdNF14tt0tmnfP%2BiuDzE6EC31DKTJbhVGqc51R%2FzJqMAttfho3w04G0a8ji2H6oSWLQ%3D%3D");
        urlBuilder.append("&" + URLEncoder.encode("dataNo", "UTF-8") + "=" + URLEncoder.encode(date, "UTF-8"));
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/xml");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
/*        System.out.println(sb.toString());*/

        // XML 파싱
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(new InputSource(new StringReader(sb.toString())));

        // 필요한 정보 추출
        Element root = document.getDocumentElement();

            String flowerName = root.getElementsByTagName("flowNm").item(0).getTextContent();
            String flowerMeaning = root.getElementsByTagName("flowLang").item(0).getTextContent();
            String fContent = root.getElementsByTagName("fContent").item(0).getTextContent();
            String fMonth = root.getElementsByTagName("fMonth").item(0).getTextContent();
            String fDay = root.getElementsByTagName("fDay").item(0).getTextContent();
            String imgUrl1 = root.getElementsByTagName("imgUrl1").item(0).getTextContent();
            String imgUrl2 = root.getElementsByTagName("imgUrl2").item(0).getTextContent();
            String imgUrl3 = root.getElementsByTagName("imgUrl3").item(0).getTextContent();
            String dataNo = root.getElementsByTagName("dataNo").item(0).getTextContent();
            String fUse = root.getElementsByTagName("fUse").item(0).getTextContent();
            String fGrow = root.getElementsByTagName("fGrow").item(0).getTextContent();
            String fType = root.getElementsByTagName("fType").item(0).getTextContent();

            // 필요한 정보를 적절한 형식으로 가공하여 반환
            JSONObject result = new JSONObject();
            result.put("flowerName", flowerName);
            result.put("flowerMeaning", flowerMeaning);
            result.put("fContent", fContent);
            result.put("fMonthDay", fMonth+"월"+" "+fDay+"일");
            result.put("imgUrl1", imgUrl1);
            result.put("imgUrl2", imgUrl2);
            result.put("imgUrl3", imgUrl3);
            result.put("dataNo", dataNo);
            result.put("fUse", fUse);
            result.put("fGrow", fGrow);
            result.put("fType", fType);
            return result;
    }

    @RequestMapping("/allflower")
    public static Object allflower(String date) throws Exception {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1390804/NihhsTodayFlowerInfo01/selectTodayFlowerView01");
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=R6XTDAtPn1psOlxitX0FdNF14tt0tmnfP%2BiuDzE6EC31DKTJbhVGqc51R%2FzJqMAttfho3w04G0a8ji2H6oSWLQ%3D%3D");
        urlBuilder.append("&" + URLEncoder.encode("dataNo", "UTF-8") + "=" + URLEncoder.encode(date, "UTF-8"));
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/xml");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();

        // XML 파싱
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();
        Document document = builder.parse(new InputSource(new StringReader(sb.toString())));

        // 필요한 정보 추출
        Element root = document.getDocumentElement();

        String flowerName = root.getElementsByTagName("flowNm").item(0).getTextContent();
        String flowerMeaning = root.getElementsByTagName("flowLang").item(0).getTextContent();

        String imgUrl1 = root.getElementsByTagName("imgUrl1").item(0).getTextContent();

        String dataNo = root.getElementsByTagName("dataNo").item(0).getTextContent();


        // 필요한 정보를 적절한 형식으로 가공하여 반환
        JSONObject result = new JSONObject();
        result.put("flowerName", flowerName);
        result.put("flowerMeaning", flowerMeaning);

        result.put("imgUrl1", imgUrl1);

        result.put("dataNo", dataNo);

        return result;
    }

}

