<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
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
    <title>📚 DEVIllness's Portfolio</title>
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
                    만나서 반갑습니다!🤗
                    <br>
                    저는 항상 어제보다 나은 사람이 되고 싶은 개발자입니다.
                    <br>
                    현재는 웹 백엔드 개발을 하고 있고,
                    <br>
                    항상 새롭고 신기한 것들을 배우려고 노력하고 있습니다.
                </span>
            </div>
            <div class="divider"></div>
            <div class="division">
                <span>
                    Hello, World!🙋‍♂
                    <br>
                    I am a developer who wants to be greater than yesterday.
                    <br>
                    Now I'm basically developing web backends,
                    <br>
                    and also always open to learn anything new and amazing.
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
                    <span>Projects that I have worked on</span>
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
                    <span id="github">#Devillness</span>
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
                        <input type="text" placeholder="Name">
                        <input type="text" placeholder="Available Email">
                        <input type="text" placeholder="Title">
                        <textarea></textarea>
                        <input type="submit" value="Send Message">
                    </label>
                </form>
            </div>
        </div>
    </section>
</main>
</body>
</html>