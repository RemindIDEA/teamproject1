//id,pw validation
function loginCheck(){
   if(document.frm.id.value.length==0){
      alert("id를 입력하세요");
      frm.id.focus(); // 포커스
      return false;
   }
   if(document.frm.pw.value==""){
      alert("pw를 입력하세요");
      frm.pw.focus(); // 포커스
      return false;
   }
}

//id중복체크창
function idCheck(){
   if(document.frm.id.value==""){
      alert("id를 입력해 주세요");
      document.form.id.focus();
      return;
   }
   var url="idcheck.do?id="+document.frm.id.value;
   window.open(url,"blank1","resizable=no,width=450,height=200");
}

//사용가능한id선택
function idok(id){
   opener.frm.id.value=document.frm.id.value;
   opener.frm.reid.value=document.frm.id.value;
   self.close(); //팝업창닫기
}

//회원가입정보 validation
function joinCheck(){
   if(document.frm.id.value.length==0){
      alert("id를 입력하세요");
      frm.id.focus();
      return false;
   }
   if(document.frm.id.value.length<3){
      alert("아이디는 3글자이상이어야 합니다.");
      frm.id.select(); //수정시 select()
      return false;
   }   
   if(document.frm.pw.value==""){
      alert("비밀번호를 입력하세요");
      frm.pw.focus();
      return false;
   }
   if(document.frm.pw.value!=document.frm.pw_check.value){
      alert("비밀번호가 일치하지 않습니다.");
      frm.pw_check.select(); //수정시 select()
      return false;
   }
   if(document.frm.id.value!=document.frm.reid.value){
      alert("중복 확인 해주세요");
      frm.id.focus();
      return false;
   }
   if(document.frm.email.value==""){
      alert("email을 입력해주세요");
      frm.email.focus();
      return false;
   }
   if(document.frm.nikname.value==""){
      alert("닉네임을 입력하세요");
      frm.nickname.focus();
      return false;
   }
}

let count=0;
// 혹시 포스팅 할 떄 알림창 필요할까 해서 넣어둠
function postCheck(){
   if(document.frm.title.value==""){
      alert("제목을 입력하세요");
      document.frm.title.focus(); // focus 주기
      return false;
   }
   if(document.frm.summary.value==""){
      alert("부 제목을 입력하세요");
      document.frm.summary.focus(); // focus 주기
      return false;
   }
   if(document.frm.mainimg.value==""){
      alert("대표사진을 넣어주세요");
      return false;
   }
   // 콘텐츠 사진이 0개 일때 사진을 넣어주세요 몇개 이상알림
   // 콘텐츠 내용이 0개 일때 내용을 입력해주세요 몇개 이상 알림 코드...?/
   
   //  ㅠㅠ 머지..
   // document.frm.content[].length <2 //  땡
   
   // let count();  > 조리순서가 채워지면 카운트 추가
   // 그래서 카운트가 2개 이상이 된다면 ok 라는 로직
   if(document.frm.content.value==""){
      alert("조리순서를 2개 이상 넣어주세요");
      document.frm.content.focus(); // focus 주기
      return false;
   }
   if(document.frm.produceImg.value==""){
      alert("조리순서 사진을 2개 이상 넣어주세요");
      return false;
   }
}

