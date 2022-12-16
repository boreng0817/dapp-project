// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

interface IRoomShare {
    
    struct Room {
        uint id;
        string name;
        string location;
        bool isActive;
        uint price;
        address owner;
        bool[] isRented;
    }
    struct Rent {
        uint id;
        uint rId;
        uint yearOfRent;
        uint checkInDate;
        uint checkOutDate;
        address renter;
    }


    event NewRoom (
        uint256 indexed roomId
    );
    event NewRent (
        uint indexed roomId,
        uint256 indexed rentId
    );
    event Transfer(
      address sender, 
      address recipient, 
      uint amount
    );


    function getMyRents() external view returns(Rent[] memory); // msg.sender

    function getRoomRentHistory(uint _roomId) external view returns(Rent[] memory);

    
    function shareRoom( string calldata name, string calldata location, uint price ) external;

    function rentRoom(uint _roomId, uint year, uint checkInDate, uint checkOutDate) payable external;



    function recommendDate(uint _roomId, uint checkInDate, uint checkOutDate) external view returns(uint[2] memory);
    

    // optional 1
    // caution: 방의 소유자를 먼저 체크해야한다.
    // isActive 필드만 변경한다.
    function markRoomAsInactive(uint256 _roomId) external;

    // optional 2
    // caution: 변수의 저장공간에 유의한다.
    // 첫날부터 시작해 함수를 실행한 날짜까지 isRented 필드의 초기화를 진행한다.
    function initializeRoomShare(uint _roomId) external;
}

