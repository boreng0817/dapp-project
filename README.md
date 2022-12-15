# dapp-project
programming assignment

## Commit History
### 🕛2022-12-02T13:47:11+09:00
#### update web3interface.js 
- add json2abi function to make importing abi.json easier.

### 🕛2022-12-05T11:08:40+09:00
#### update index.ejs
- change paths for imporing css and js files.

#### 과제 설명 보충
- 선택적 구현의 `intializeRoomShare` 함수는 
**첫날부터 시작해 web3interface.js 의 `getDayOfYear` 함수를 이용하여 함수를 실행한 날짜까지 초기화를 진행하는 함수**입니다.(0 ~ today) 따라서 input의 `day`는 함수를 실행한 당일 날짜입니다.
- 체크아웃 날짜에 대한 질문이 여러번 있었는데, 저는 보통의 경우, 체크아웃이라고 하면 그 날 **숙박**까지를 포함하지않고 그 날 **퇴실**한다고 알고 있었습니다.
따라서 이미 예약된 날짜가 있다면 체크아웃날짜는 그 다음 날이 됩니다.
- `_recommendDate` 함수에서 만약 예약하려는 기간에 여러 예약이 존재한다면 가장 앞부분의 연속된 날짜의 예약만 처리하는 걸로 합니다.  
  그러니까, 두 가지 예약이 존재한다면 앞 부분의 예약만 리턴합니다. 뒷 부분의 예약은 무시합니다.

#### update comments of recommendDate function
- clarify the concept between checkout date and rented date.