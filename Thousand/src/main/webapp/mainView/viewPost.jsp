<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>viewPost.jsp</title>
    <style>
        *{
            padding:0; margin:0; text-decoration:none; 
        }
        #background{
            width: 100%;
            height: 1350px;
            background-color: aquamarine;
            position: relative;
        }
        #top{
            position: absolute;
            width: 50%;
            height: 35%;
            background-color: white;
            left: 25%;
            color: rgb(235, 218, 218);
        }
            .mainimg{
                position: absolute;
                width: 50%;
                height: 26.3%;
                background-color: red;
                top: 1%;
                left: 25%;
            }
            .writer{
                position: absolute;
                width: 60%;
                height: 9.1%;
                background-color: orange;
                top: 28.8%;
                left: 20%;
            }
            .title{
                position: absolute;
                width: 60%;
                height: 9.1%;
                background-color: yellow;
                top: 39.4%;
                left: 20%;
            }
            .sammary{
                position: absolute;
                width: 60%;
                height: 13.4%;
                background-color: green;
                top: 50%;
                left: 20%;
            }
            #like{
                position: absolute;
                width: 60%;
                height: 9.1%;
                background-color: rgb(32, 121, 91);
                top: 64.9%;
                left: 20%;
                color: rgb(235, 218, 218);
            }
                .likeimg{
                    position: absolute;
                    width: 26%;
                    height: 100%;
                    background-color: blue;
                    top: 0%;
                    left: 5%;
                }
                .likecount{
                    position: absolute;
                    width: 26%;
                    height: 100%;
                    background-color: navy;
                    top: 0%;
                    left: 37%;
                }
                .readcount{
                    position: absolute;
                    width: 26%;
                    height: 100%;
                    background-color: purple;
                    top: 0%;
                    left: 69%;
                }
            .item{
                position: absolute;
                width: 60%;
                height: 13.4%;
                background-color: red;
                top: 75.5%;
                left: 20%;
            }
            .box{
                position: absolute;
                width: 15%;
                height: 9.1%;
                background-color: orange;
                top: 90.4%;
                left: 20%;
            }
        #middle{
            position: absolute;
            width: 72%;
            height: 50%;
            background-color: rgb(194, 173, 173);
            top: 35%;
            left: 14%;
            color: rgb(235, 218, 218);
        }
            .stepcount1{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 1%;
                left: 0%;
            }
            .steptext1{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 1%;
                left: 16%;
            }
            .stepimg1{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 1%;
                right: 0%;
            }
            .stepcount2{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 11%;
                left: 0%;
            }
            .steptext2{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 11%;
                left: 16%;
            }
            .stepimg2{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 11%;
                right: 0%;
            }
            .stepcount3{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 21%;
                left: 0%;
            }
            .steptext3{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 21%;
                left: 16%;
            }
            .stepimg3{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 21%;
                right: 0%;
            }
            .stepcount4{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 31%;
                left: 0%;
            }
            .steptext4{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 31%;
                left: 16%;
            }
            .stepimg4{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 31%;
                right: 0%;
            }
            .stepcount5{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 41%;
                left: 0%;
            }
            .steptext5{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 41%;
                left: 16%;
            }
            .stepimg5{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 41%;
                right: 0%;
            }
            .stepcount6{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 51%;
                left: 0%;
            }
            .steptext6{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 51%;
                left: 16%;
            }
            .stepimg6{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 51%;
                right: 0%;
            }
            .stepcount7{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 61%;
                left: 0%;
            }
            .steptext7{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 61%;
                left: 16%;
            }
            .stepimg7{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 61%;
                right: 0%;
            }
            .stepcount8{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 71%;
                left: 0%;
            }
            .steptext8{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 71%;
                left: 16%;
            }
            .stepimg8{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 71%;
                right: 0%;
            }
            .stepcount9{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 81%;
                left: 0%;
            }
            .steptext9{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 81%;
                left: 16%;
            }
            .stepimg9{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 81%;
                right: 0%;
            }
            .stepcount10{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: yellow;
                top: 91%;
                left: 0%;
            }
            .steptext10{
                position: absolute;
                width: 68%;
                height: 9%;
                background-color: green;
                top: 91%;
                left: 16%;
            }
            .stepimg10{
                position: absolute;
                width: 15%;
                height: 9%;
                background-color: blue;
                top: 91%;
                right: 0%;
            }
        #bottom{
            position: absolute;
            width: 50%;
            height: 15%;
            background-color: rgb(255, 255, 255);
            top: 85%;
            left: 25%;
        }
            .finalimg{
                position: absolute;
                width: 50%;
                height: 50%;
                background-color: red;
                top: 5%;
                left: 25%;
            }
            .update{
                position: absolute;
                width: 10%;
                height: 9.1%;
                background-color: orange;
                bottom: 10%;
                left: 20%;
            }
            .list{
                position: absolute;
                width: 10%;
                height: 9.1%;
                background-color: orange;
                bottom: 10%;
                left: 45%;
            }
            .delete{
                position: absolute;
                width: 10%;
                height: 9.1%;
                background-color: orange;
                bottom: 10%;
                right: 20%;
            }

    </style>


</head>
<body>
    <div id="background">
        <div id="top">
            <div class="mainimg">
                대표사진
            </div>
            <div class="writer">
                게시글 작성자
            </div>
            <div class="title">
                게시글 제목
            </div>
            <div class="sammary">
                게시글 소개글
            </div>
            <div id="like">
                <div class="likeimg">
                    따봉 이미지
                </div>
                <div class="likecount">
                    좋아요 카운트
                </div>
                <div class="readcount">
                    조회수
                </div>
            </div>
            <div class="item">
                레시피 재료 적는 란
            </div>
            <div class="box">
                요리순서 박스
            </div>
        </div>

        <div id="middle">
            <div class="stepcount1">
                요리순서 번호1
            </div>
            <div class="steptext1">
                요리순서1
            </div>
            <div class="stepimg1">
                요리순서 이미지1
            </div>
            <div class="stepcount2">
                요리순서 번호2
            </div>
            <div class="steptext2">
                요리순서2
            </div>
            <div class="stepimg2">
                요리순서 이미지2
            </div>
            <div class="stepcount3">
                요리순서 번호3
            </div>
            <div class="steptext3">
                요리순서3
            </div>
            <div class="stepimg3">
                요리순서 이미지3
            </div>
            <div class="stepcount4">
                요리순서 번호4
            </div>
            <div class="steptext4">
                요리순서4
            </div>
            <div class="stepimg4">
                요리순서 이미지4
            </div>
            <div class="stepcount5">
                요리순서 번호5
            </div>
            <div class="steptext5">
                요리순서5
            </div>
            <div class="stepimg5">
                요리순서 이미지5
            </div>
            <div class="stepcount6">
                요리순서 번호6
            </div>
            <div class="steptext6">
                요리순서6
            </div>
            <div class="stepimg6">
                요리순서 이미지6
            </div>
            <div class="stepcount7">
                요리순서 번호7
            </div>
            <div class="steptext7">
                요리순서7
            </div>
            <div class="stepimg7">
                요리순서 이미지7
            </div>
            <div class="stepcount8">
                요리순서 번호8
            </div>
            <div class="steptext8">
                요리순서8
            </div>
            <div class="stepimg8">
                요리순서 이미지8
            </div>
            <div class="stepcount9">
                요리순서 번호9
            </div>
            <div class="steptext9">
                요리순서9
            </div>
            <div class="stepimg9">
                요리순서 이미지9
            </div>
            <div class="stepcount10">
                요리순서 번호10
            </div>
            <div class="steptext10">
                요리순서10
            </div>
            <div class="stepimg10">
                요리순서 이미지10
            </div>
        </div>   
        
        <div id="bottom">
            <div class="finalimg">
                요리완성 사진
            </div>
            <div class="update">
                수정 버튼
            </div>
            <div class="list">
                목록 버튼
            </div>
            <div class="delete">
                삭제 버튼
            </div>
        </div>
    </div>  
</body>
</html>