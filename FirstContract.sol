pragma solidity ˆ0.4.0;

contract MyFirstContract {
  string private myname;
  uint private myage;

  function setMyName(string newName) public {
    myname = newName;
  }

  function getMyName() public constant returns(string) {
    return myname;
  }
  
  function setMyAge(uint newAge) public {
    myage = newAge;
  }

  function getMyAge() public constant returns(uint) {
    return myage;
  }
}