<%@ page import="net.devillness.portfolio.enums.MessageResult" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="messageResult" type="net.devillness.portfolio.enums.MessageResult"--%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&family=Inconsolata:wght@200;400;600&display=swap">
    <link rel="stylesheet" href="stylesheets/common.css">
    <link rel="stylesheet" href="stylesheets/index.css">
    <script defer src="scripts/index.js"></script>
    <title>DEVIllness's Portfolio</title>
    <c:if test="${messageResult != null}">
        <c:choose>
            <c:when test="${messageResult == MessageResult.SUCCESS}">
                <script>
                    alert('메세지를 성공적으로 보냈습니다.\nSent message successfully.');
                </script>
            </c:when>
            <c:when test="${messageResult == MessageResult.NORMALIZATION_FAILURE}">
                <script>
                    alert('올바른 정보를 입력해 주세요.\nPlease fill in valid information.');
                    window.history.back();
                </script>
            </c:when>
            <c:when test="${messageResult == MessageResult.BLOCKED}">
                <script>
                    alert('단시간에 다수의 요청이 감지되었습니다.\nToo many requests in a short period.');
                    window.location.href='${pageContext.request.contextPath}';
                </script>
            </c:when>
            <c:otherwise>
                <script>
                    alert('잘못된 접근입니다.\nUnknown error occurred.');
                    window.history.back();
                </script>
            </c:otherwise>
        </c:choose>
    </c:if>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <section class="splash home">
        <div class="container">
            <h1>DevIllness</h1>
            <h2>Web Backend Developer</h2>
        </div>
    </section>
    <section class="splash profile">
        <div class="container">
            <span class="phrase">A Lifelong Apprentice</span>
            <div class="division">
                <span>
                    <nobr>만나서 반갑습니다!🤗</nobr>
                    <br>
                    <nobr>저는 항상 어제보다 나은 사람이 되고 싶은 개발자입니다.</nobr>
                    <br>
                    <nobr>현재는 주로 웹 백엔드 개발을 하고 있지만,</nobr>
                    <br>
                    <nobr>그 밖에도 항상 새롭고 신기한 것들을 배우려고 노력하고 있습니다.</nobr>
                </span>
            </div>
            <div class="divider"></div>
            <div class="division">
                <span>
                    <nobr>Hello, World!🙋‍♂</nobr>
                    <br>
                    <nobr>I am a developer who always wants to be greater than yesterday.</nobr>
                    <br>
                    <nobr>Now I'm basically developing web backends,</nobr>
                    <br>
                    <nobr>but also always open to learn anything new and interesting.</nobr>
                </span>
            </div>
        </div>
    </section>
    <section class="splash tech">
        <div class="container">
            <div>
                <div class="career">
                    <span class="date">2021</span>
                    <span><nobr>한양대학교 공과대학 융합전자공학부 학사</nobr></span>
                    <span><nobr>Hanyang University, B.Sc. in Electronic Engineering</nobr></span>
                </div>
                <div class="projects">
                    <span>Personal Projects</span>
                    <div>
                        <div class="description">
                            <span class="title">PMSS</span>
                            <a href="https://github.com/DEVillness/pmss" target="_blank"><img alt="link" src="images/github.png"></a>
                            <a href="https://pmss.devillness.net" target="_blank"><img alt="link" src="images/link.png"></a>
                            <br>
                            <span>모바일 게임 &lt;명일방주&gt;를 위한 여러 가지 편의 기능들을 제공하는 사이트입니다.</span>
                        </div>
                        <div class="view" onclick="window.open('https://pmss.devillness.net');"></div>
                    </div>
                </div>
            </div>
            <div>
                <div class="graph">
                    <div class="back-end">
                        <div class="text">
                            <span>Backend</span>
                            <span>90%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                    <div class="front-end">
                        <div class="text">
                            <span>Frontend</span>
                            <span>50%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                    <div class="java">
                        <div class="text">
                            <span>Java</span>
                            <span>70%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                    <div class="spring">
                        <div class="text">
                            <span>Spring Boot</span>
                            <span>80%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                    <div class="sql">
                        <div class="text">
                            <span>Database (RDBMS)</span>
                            <span>80%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                </div>
                <div class="stacks">
                    <span>#Java</span>
                    <span><nobr>#Spring Boot</nobr></span>
                    <span><nobr>#MVC Model</nobr></span>
                    <span>#MySQL</span>
                    <span>#MariaDB</span>
                    <span>#JSP</span>
                    <span>#JSTL</span>
                    <span>#HTML</span>
                    <span>#CSS</span>
                    <span>#JavaScript</span>
                    <span>#Linux</span>
                    <span>#GCP</span>
                    <span>#Github</span>
                    <span>#Algorithm</span>
                    <span><nobr>#Data Structure</nobr></span>
                    <span><nobr>#TOEIC: 955</nobr></span>
                </div>
            </div>
        </div>
    </section>
    <section class="splash message">
        <div class="container">
            <div class="left">
                <div>
                    <img alt="Github" src="images/location.png">
                    <span>Daegu, Republic of Korea</span>
                </div>
                <div>
                    <img alt="Github" src="images/github.png">
                    <span id="github">#DEVillness</span>
                </div>
                <div>
                    <img alt="Email" src="images/mail.png">
                    <span>seong02219@gmail.com</span>
                </div>
                <div>
                    <img alt="Github" src="images/check.png">
                    <span>Currently Freelance</span>
                </div>
            </div>
            <div class="right">
                <form method="post" rel="message-form">
                    <label>
                        <input type="text" name="name" placeholder="Name">
                        <input type="text" name="email" placeholder="Available Email">
                        <input type="text" name="title" placeholder="Title">
                        <textarea name="content"></textarea>
                        <input type="submit" value="Leave Me a Message">
                    </label>
                </form>
            </div>
        </div>
    </section>
</main>
</body>
</html>