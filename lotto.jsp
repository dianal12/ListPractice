<%@page import="java.util.Collections"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
public int n = 0;
%>
<% 
n++;
List<Integer> lottoNum = new ArrayList<>();
Random random = new Random();
while (lottoNum.size() < 6) {
    int result = random.nextInt(45) + 1;
    if (!lottoNum.contains(result)) {
        lottoNum.add(result);
    }
}
Collections.sort(lottoNum);
int luckyNum = random.nextInt(45) + 1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로또 추첨</title>
<style>
    body {
        background: #f0f8ff;
        text-align: center;
        padding: 40px;
    }
    .ball {
        display: inline-block;
        width: 50px;
        height: 50px;
        margin: 8px;
        line-height: 50px;
        border-radius: 50%;
        background: #4CAF50;
        color: white;
        font-weight: bold;
        font-size: 18px;
        box-shadow: 0 4px 6px;
    }
    .bonus {
        background: orange;
    }
    h1 {
        color: #333;
        margin-bottom: 30px;
    }
</style>
</head>
<body>
    <h1> <%=n %>회 로또 추첨 결과 </h1>
    <% for (int i = 0; i < lottoNum.size(); i++) { %>
        <div class="ball"> <%=lottoNum.get(i) %> </div>
        <% out.flush();
        Thread.sleep(300); %>
    <% } %>
    <br>
    <div class="ball bonus">+</div>
    <div class="ball bonus"><%=luckyNum %></div>
</body>
</html>
