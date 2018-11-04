pragma solidity ˆ0.4.0;

contract MyFirstContract {
  string private myname;
  uint private myage;

  function setMyName(string newName) public {
    myname = newName;
  }
}