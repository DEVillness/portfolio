<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&display=swap">
    <link rel="stylesheet" href="stylesheets/common.css">
    <link rel="stylesheet" href="stylesheets/index.css">
    <title>📚 DEVIllness's Portfolio</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<main>
    <section class="splash home">
        <div class="home container">
            <h1>DEVIllness</h1>
            <h2>Web Backend Developer</h2>
        </div>
    </section>
    <section class="splash profile">
        <div class="profile container"></div>
    </section>
    <section class="splash tech">
        <div class="tech container">
            <div class="left_division">
                <div class="career">
                    <span class="date">2021</span>
                    <span><nobr>한양대학교 공과대학 융합전자공학부 학사 (21.02.19)</nobr></span>
                </div>
                <div class="stacks">
                    <span>#Java</span>
                    <span><nobr>#Spring Framework</nobr></span>
                    <span><nobr>#MVC Model</nobr></span>
                    <span>#MySQL</span>
                    <span>#MariaDB</span>
                    <span>#JSP</span>
                    <span>#HTML</span>
                    <span>#CSS</span>
                    <span>#JavaScript</span>
                    <span>#Linux</span>
                    <span><nobr>#TOEIC: 955</nobr></span>
                </div>
            </div>
            <div class="right_division">
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
                            <span>Spring Framework</span>
                            <span>80%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                    <div class="sql">
                        <div class="text">
                            <span>Database</span>
                            <span>80%</span>
                        </div>
                        <div class="container">
                            <div></div>
                        </div>
                    </div>
                </div>
                <div class="projects">
                    <span>Projects that I worked on</span>
                </div>
            </div>
        </div>
    </section>
    <section class="splash message">
        <div class="message container">
            <form method="post" rel="message-form">

            </form>
        </div>
    </section>
</main>
</body>
</html>