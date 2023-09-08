// script.js

var button = document.querySelector('.circle');

//네비게이션 부분
function selectPage() {
  var URL = new URLSearchParams(window.location.search);
  var order_info = URL.get('order');
  const pickup = urlParams.get('pickup');

  if (order_info == 'slow') {
    window.location.href = `http://localhost:3001/BigFrame_e/BigOrder_e.html?order=slow&pickup=${pickup}`
  } else if (order_info == 'basic') {
    window.location.href = `http://localhost:3001/BasicFrame_e/BasicOrder_e.html?order=basic&pickup=${pickup}`
  }
}

function openPay() {
  var URL = new URLSearchParams(window.location.search);
  var order_info = URL.get('order');
  const pickup = urlParams.get('pickup');

  if (order_info == 'slow') {
    window.location.href = `http://localhost:3001/paymethod_e/paymethod_e.html?order=slow&pickup=${pickup}`
  } else if (order_info == 'basic') {
    window.location.href = `http://localhost:3001/paymethod_e/paymethod_e.html?order=basic&pickup=${pickup}`
  }
}

//이전 화면
function prvsScren() {
  const urlParams = new URLSearchParams(window.location.search);
  const orderType = urlParams.get('order');
  const pickup = urlParams.get('pickup');

  if (orderType == 'slow') {
    // 천천히 주문하기 버튼을 클릭한 경우
    location.href = `http://localhost:3001/BigFrame_e/BigOrder_e.html?order=slow&pickup=${pickup}`;
  } else if (orderType == 'basic') {
    // 기본 주문하기 버튼을 클릭한 경우
    location.href = `http://localhost:3001/BasicFrame_e/BasicOrder_e.html?order=basic&pickup=${pickup}`;
  }
};

// 처음으로
function firstScreen() {
  // 새로운 페이지로 이동
  window.location.href = "http://localhost:3001/selectorder/selectorder.html";
};

// 다음
function nextScreen() {
  // 새로운 페이지로 이동
  const urlParams = new URLSearchParams(window.location.search);
  const orderType = urlParams.get('order');
  const pickup = urlParams.get('pickup');

  if (orderType == 'slow') {
    // 천천히 주문하기 버튼을 클릭한 경우
    location.href = `http://localhost:3001/paymethod_e/paymethod_e.html?order=slow&pickup=${pickup}`;
  } else if (orderType == 'basic') {
    // 기본 주문하기 버튼을 클릭한 경우
    location.href = `http://localhost:3001/paymethod_e/paymethod_e.html?order=basic&pickup=${pickup}`;
  }
};

//도움말 버튼
const joImage = document.getElementById("imageLink");

joImage.addEventListener("click", function () {
  // 먼저 모달 컨테이너를 비웁니다.
  document.getElementById("modalContainer_e").innerHTML = "";

  // detail_menu.css를 제거합니다.
  const detailMenuLink = document.querySelector('link[href="http://localhost:3001/detail_menu_e/detail_menu_e.css"]');
  if (detailMenuLink) {
    detailMenuLink.remove();
  }

  // help_msg.html 콘텐츠를 로드하여 모달 컨테이너에 추가합니다.
  fetch("http://localhost:3001/help_msg/help_msg.html")
    .then(response => {
      if (!response.ok) {
        throw new Error("HTTP Error " + response.status);
      }
      return response.text();
    })
    .then(data => {
      // 모달 컨테이너에 help_msg.html 콘텐츠를 추가합니다.
      $("#modalContainer_e").html(data);
      const modalBody = document.querySelector(".modal-body");
      modalBody.innerHTML = `
        <p>도움말 새로운 내용 1.</p>
        <p>새로운 내용 2.</p>
        <p>새로운 내용 3.</p>
        <!-- 원하는 내용으로 수정 -->`;

      // help_msg.css 파일을 로드합니다.
      const linkElement = document.createElement("link");
      linkElement.rel = "stylesheet";
      linkElement.type = "text/css";
      linkElement.href = "http://localhost:3001/help_msg/help_msg.css";
      document.head.appendChild(linkElement);

      const modal = new bootstrap.Modal(document.getElementById("exampleModal"));
      modal.show();
    })
    .catch(error => {
      console.error("콘텐츠를 가져오는 중 오류가 발생했습니다:", error);
    });
});

document.addEventListener("DOMContentLoaded", function () {//서버연동(DOMContentLoaded가 실행되고 서버를 실행되어야지 정상적으로 작동[사실 잘 모르겠음])
});

function createOrderItem(order) {//주문 아이템 생성 함수
  const orderItem = document.createElement('div');
  orderItem.className = 'list_content_box';
  orderItem.innerHTML = `
<!-- ... (이미지 내용 관련 부분) ... -->
<div class="box list_img_box">
                      <img id="im" class="list_img_size" src=".${order.imagePath}" alt="menu_image"/>
                  </div>
                  <!--여기까지-->
                  <div class="box list_content_info">
                      <div class="container text-center">
                          <div class="row content_title">
                              <div class="col-7 menu_name">${order.menu_name}</div> <!--메뉴 이름 출력-->
                              <div class="col-5 menu_cost">cost: &#8361;${order.total_price}</div> <!--메뉴 가격 출력-->
                          </div>
                          <!--옵션 데이터-->
                          <div class="row list_option">
                              <div class="list_option_detail">
                                  <div class="row option_detail">
                                      <div class="col-6">
                                          <span class="option_name">TEMP: </span>
                                          <span class="select_tem">${order.op_t === 1 ? 'HOT' : 'ICED'}</span>
                                      </div>
                                      <div class="col-6">
                                          <span class="option_name">SIZE: </span>
                                          <span class="select_size">${order.op_s === 3 ? 'basic size' : '(EX) size'}</span>
                                      </div>
                                  </div>
                                  <div>
                                      <span class="option_name">Add Option: </span>
                                      <span class="select_op">${order.options.length > 0 ? order.options.map(op => op.op_name).join(', ') : 'none'}</span>
                                  </div>
                              </div>
                          </div>
                          <div class="row list_buttons">
                              <div class="col-4 button_box_num">
                                  <p class="button_num">${order.count}pcs</p>
                              </div>
                              <div class="col-8" style="padding: 0px; height: 100%;">
                                  <div class="content_update_button">
                                      <button class="updateBtn" data-orderNum="${order.order_num}">Edit</button>
                                      <button class="deleteBtn" data-orderNum="${order.order_num}">Delete</button>
                                  </div>
                              </div>

                          </div>
                      </div>
                  </div>
`;

  return orderItem;
}

function findParentOrderItem(element) {
  let parent = element.parentElement;
  while (parent) {
    if (parent.classList.contains("list_content_box")) {
      return parent;
    }
    parent = parent.parentElement;
  }
  return null;
}

function addOrdersToDOM(orders) {
  let orderList = document.querySelector('.list_box');

  orders.forEach(order => {
    const orderItem = createOrderItem(order);
    orderList.appendChild(orderItem);

    const splitBorderDiv = document.createElement('div');
    splitBorderDiv.className = "split_border";

    orderList.appendChild(splitBorderDiv);
  });

  //수정 버튼
  const selectBtn = document.querySelectorAll(".updateBtn");
  selectBtn.forEach(selectBtn => {
    selectBtn.addEventListener("click", function () {
      console.log("수정 버튼 눌림");
      // 클릭된 버튼의 data-orderNum 값을 가져옴
      const orderNum = this.getAttribute('data-orderNum');
      //window.location.href = `http://localhost:3001/detail_menu_e/jojo_o_e.html?orderNum=${orderNum}`;
      console.log("주문번호:", orderNum);
      // 먼저 모달 컨테이너를 비웁니다.
      document.getElementById("modalContainer_e").innerHTML = "";

      // help_msg.css를 제거합니다.
      const detailMenuLink = document.querySelector('link[href="http://localhost:3001/help_msg/help_msg.css"]');
      const pickup = urlParams.get('pickup');
      const order = urlParams.get('order');
      if (detailMenuLink) {
        detailMenuLink.remove();
      }
      if(order == 'slow'){
        history.pushState(null, null, `http://localhost:3001/last_checklist/checklist.html?order=slow&pickup=${pickup}&orderNum=${orderNum}`);
      }else{
        history.pushState(null, null, `http://localhost:3001/last_checklist/checklist.html?order=basic&pickup=${pickup}&orderNum=${orderNum}`);
      }
      // 외부 detail_menu 폴더에 있는 jojo.html 파일을 로드하여 모달 컨테이너에 추가합니다.
      fetch("http://localhost:3001/detail_menu_e/jojo_o_e.html?orderNum=${orderNum}") // 이 부분의 파일 경로를 수정해야합니다.
        .then(response => {
          if (!response.ok) {
            throw new Error("HTTP Error " + response.status);
          }
          return response.text();
        })
        .then(data => {
          // 모달 컨테이너에 jojo.html 콘텐츠를 추가합니다.
          $("#modalContainer_e").html(data);

          // 외부 detail_menu 폴더에 있는 detail_menu.css 파일을 로드합니다.
          const linkElement = document.createElement("link");
          linkElement.rel = "stylesheet";
          linkElement.type = "text/css";
          linkElement.href = "http://localhost:3001/detail_menu_e/detail_menu_e.css"; // 이 부분의 파일 경로를 수정해야합니다.
          document.head.appendChild(linkElement);

          // 외부 detail_menu 폴더에 있는 detail_menu_o.js 파일을 로드합니다.
          const scriptElement = document.createElement("script");
          scriptElement.src = "http://localhost:3001/detail_menu_e/detail_menu_o_e.js"; // 이 부분의 파일 경로를 수정해야합니다.
          document.body.appendChild(scriptElement);

          const modal = new bootstrap.Modal(document.getElementById("exampleModal"));
          modal.show();
        })
        .catch(error => {
          console.error("콘텐츠를 가져오는 중 오류가 발생했습니다:", error);
        });
    });
  });

  // 삭제 버튼
  const deleteBtn = document.querySelectorAll(".deleteBtn");
  deleteBtn.forEach(deleteBtn => {
    deleteBtn.addEventListener("click", function () {
      console.log("삭제 버튼 눌림");
      // 클릭된 버튼의 data-orderNum 값을 가져옴
      const orderNum = this.getAttribute('data-orderNum');
      console.log("주문 번호:", orderNum);

      // 먼저 모달 컨테이너를 비웁니다.
      document.getElementById("modalContainer_e").innerHTML = "";

      // detail_menu.css를 제거합니다.
      const detailMenuLink = document.querySelector('link[href="http://localhost:3001/detail_menu_e/detail_menu_e.css"]');
      const pickup = urlParams.get('pickup');
      if (detailMenuLink) {
        detailMenuLink.remove();
      }

      // caution_msg.html 콘텐츠를 로드하여 모달 컨테이너에 추가합니다.
      fetch(`http://localhost:3001/messagebox/caution_msg.html?pickup=${pickup} & orderNum=${orderNum}`)
        .then(response => {
          if (!response.ok) {
            throw new Error("HTTP Error " + response.status);
          }
          return response.text();
        })
        .then(data => {
          // 모달 컨테이너에 caution_msg.html 콘텐츠를 추가합니다.
          $("#modalContainer_e").html(data);
          console.log("선택된 주문 번호 :", orderNum);
          // caution_msg.css 파일을 로드합니다.
          const linkElement = document.createElement("link");
          linkElement.rel = "stylesheet";
          linkElement.type = "text/css";
          linkElement.href = "http://localhost:3001/messagebox/caution_style.css";
          document.head.appendChild(linkElement);

          // 모달을 열기 위한 코드
          const modal = new bootstrap.Modal(document.getElementById("exampleModal"));
          modal.show();

          // 주문 확인 모달 내부의 버튼 이벤트 리스너 등을 여기서 추가하면 됩니다.
          const confirmButton = document.querySelector('.btn-primary');
          confirmButton.addEventListener("click", function () {
            console.log("확인 버튼 눌림");
            // "확인" 버튼이 클릭되면 orderNum 값을 사용하여 DELETE 요청을 보내는 코드 작성
            deleteOrder(orderNum);
          });

          const cancelButton = document.querySelector('.btn-secondary');
          cancelButton.addEventListener("click", function () {
            console.log("취소 버튼 눌림");
            // "취소" 버튼이 클릭되면 모달 닫기
            modal.hide();
          });
        })
        .catch(error => {
          console.error("콘텐츠를 가져오는 중 오류가 발생했습니다:", error);
        });
    });
  });
}

//08.19수정 이 코드를 위에 추가 (전역 변수 선언)
let totalAmount = 0;

// 아래 코드를 document.addEventListener("DOMContentLoaded", ...)` 내에 추가
fetch('/getOrderData_e')
  .then(response => response.json())
  .then(data => {
    addOrdersToDOM(data);
    console.log("Session data:", JSON.stringify(data));

    // 주문 데이터를 가지고 총 금액 계산
    totalAmount = calculateTotalAmount(data);
    updateTotalAmountUI(totalAmount);
  });

// 아래에 코드를 추가 (함수 정의)
function calculateTotalAmount(orders) {
  return orders.reduce((total, order) => total + Number(order.total_price), 0);
}

function updateTotalAmountUI(amount) {
  const totalCostElement = document.querySelector('.total_cost');
  const wonSymbol = '\u20A9'; // 원화(₩) 기호의 유니코드
  totalCostElement.textContent = wonSymbol + amount;
}
//08.19 최종 금액 계산


//포장 여부 확인
//URL에서 "order" 파라미터 값을 확인
const urlParams = new URLSearchParams(window.location.search);
const orderType = urlParams.get('pickup');

// 라디오 버튼 체크 함수
function checkRadioButton() {
    const radioButtons = document.getElementsByName('listGroupRadio');
    
    if (orderType === '2') {
        // 2일 때, 포장하기 라디오 버튼 체크
        radioButtons[0].checked = true;
    } else if (orderType === '1') {
        // 1일 때, 먹고가기 라디오 버튼 체크
        radioButtons[1].checked = true;
    }
}

// 페이지 로드 시 라디오 버튼 체크 함수 호출
window.addEventListener('load', checkRadioButton);








