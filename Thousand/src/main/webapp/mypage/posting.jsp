<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>글쓰기페이지</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href=" integrity="
        sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="
        anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../css/main.css" />
</head>

<body>

    <div id="header">
        <div id="top">
            <div class="logo">
                <a href="#"><img src="../img/logo.png" alt="로고"></a>
            </div>
            <div class="search">
                <div class="input-group">
                    <input type="text" class="form-control" size="50" placeholder="검색어를 입력하세요." required="">
                    <div class="input-group-btn">
                        <button type="summit" class="btn btn-danger">Search</button>
                    </div>
                </div>
            </div>
            <div class="mypage">
                <div class="icon1"><i class="fa-solid fa-user-large" style="font-size: 50px"></i></div>
                <div class="icon2"><i class="fa-regular fa-pen-to-square" style="font-size: 50px"></i></div>
            </div>
        </div>
    </div>

    <div id="nav">
        <div id="navbar">
            <ul class="nav nav-pills">
                <li class="nav-item menu1 border border-2">
                    <a class="nav-link" data-toggle="pill" href="#home">Home</a>
                </li>
                <li class="nav-item menu2 border border-right-1">
                    <a class="nav-link" data-toggle="pill" href="#menu1">Menu 1</a>
                </li>
                <li class="nav-item menu3 border border-right-1">
                    <a class="nav-link" data-toggle="pill" href="#menu2">Menu 2</a>
                </li>
            </ul>
        </div>
    </div>


    <div id="postcontent">
        <div class="postmaincontent">
            
            <div class="postitle">
                <div><button class="postbtn rounded-lg border border-warning">제목</button> &nbsp;&nbsp;
                    <input style="width:500px; height: 45px;" type="text" placeholder="제목을 입력하세요">
                </div>
            </div>
            <div class="postsummary">
                <div><button class="postbtn rounded-lg border border-warning">소개글</button> &nbsp;&nbsp;
                    <input style="width:500px; height: 45px;" type="text" placeholder="소개글을 입력하세요">
                </div>
            </div>
            
            <div class="postcategory form-inline">
                <button class="postbtn rounded-lg border border-warning">카테고리</button>&nbsp;&nbsp;&nbsp;
                <div class="form-group form-inline">
                    <label for="sel1"></label>
                    <select class="form-control" style="width:150px; height: 45px;" id="sel1">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
                &nbsp;&nbsp;
                <div class="form-group form-inline">
                    <label for="sel2"></label>
                    <select class="form-control" id="sel2" style="width:150px; height: 45px;">
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
                &nbsp;&nbsp;
                <div class="form-group form-inline">
                    <label for="sel3"></label>
                    <select class="form-control" id="sel3" style="width:150px; height: 45px;">
                        <option>3</option>
                        <option>4</option>
                    </select>
                </div>
            </div>
            
            <div class="postmainimg">
                <div class="upload" style="width: 300px; height: 300px; overflow: hidden;">
                    <ul class="image-preview"></ul>
                </div>
                <input style="display: none;" type="file" class="real-upload" id="mainimg" accept="image/*">
                <script>
                    function getImageFiles(e) {
                        const uploadFiles = [];
                        const files = e.currentTarget.files;
                        const imagePreview = document.querySelector('.image-preview');
                        const docFrag = new DocumentFragment();

                        if ([...files].length >= 7) {
                            alert('이미지는 최대 6개 까지 업로드가 가능합니다.');
                            return;
                        }

                        // 파일 타입 검사
                        [...files].forEach(file => {
                            if (!file.type.match("image/.*")) {
                                alert('이미지 파일만 업로드가 가능합니다.');
                                return
                            }

                            // 파일 갯수 검사
                            if ([...files].length < 7) {
                                uploadFiles.push(file);
                                const reader = new FileReader();
                                reader.onload = (e) => {
                                    const preview = createElement(e, file);
                                    imagePreview.appendChild(preview);
                                };
                                reader.readAsDataURL(file);
                            }
                        });
                    }

                    // div 클릭시 input이벤트 발생하게 하는 코드
                    const realUpload = document.querySelector('.real-upload');
                    const upload = document.querySelector('.upload');

                    upload.addEventListener('click', () => realUpload.click());
                    function createElement(e, file) {
                        const li = document.createElement('li');
                        const img = document.createElement('img');
                        img.setAttribute('src', e.target.result);
                        img.setAttribute('data-file', file.name);
                        li.appendChild(img);

                        return li;
                    }



                    upload.addEventListener('click', () => realUpload.click());

                    realUpload.addEventListener('change', getImageFiles);

                </script>
            </div>
            
            <div class="postcookitem">
                <div><button class="postbtn rounded-lg border border-warning">조리순서</button> &nbsp;&nbsp;
                    <input style="width:500px; height: 100px;" type="text" placeholder=" 재료를 입력하세요.">
                </div>
                <div class="cookstep1">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep2">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep3">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep4">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep5">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep6">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep7">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep8">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep8">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep8">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep8">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep9">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="cookstep10">
                    <input class="step" type="text" placeholder=" 조리 순서를 입력하세요.">
                    <input class="plusstep" type="button" value="+">
                    <input class="minusstep" type="button" value="-">
                </div>
                <div class="postinsertbtn">
                    <div>
                        <input type="button" 
                            class="postbtn posting rounded-lg border border-warning" value="등록">
                        <input type="button" 
                            class="postbtn posting rounded-lg border border-warning" value="취소">
                    </div>
                </div>
            </div>
            


        </div>

    </div>

    <div id="footer">
        <div class="footcontent ">
            <br>
            <p>서울시 관악구 남부순환로 1820,에그엘로우14층 전화번호 : 02-6020-0055 팩스번호 : 02-3285-0012</p>
            <p>Copyright 2017 (주)천개의 레시피. ALL RIGHTS RESERVED.</p>
        </div>
    </div>


</body>

</html>