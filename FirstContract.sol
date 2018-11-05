pragma solidity ˆ0.4.0;

contract Bank {
  uint private value;

  // Constructor
  function Bank(uint amount) public {
    value = amount;
  }

  function deposit(uint amount) public {
    value += amount;
  }

  function withdraw(uint amount) public {
    if(checkValue(amount)) {
      value -= amount;
    }
  }

  function balance() public constant returns(uint) {
    return value;
  }

  function checkValue(uint amount) public returns(bool) {
    return value >= amount;
  }

  function loan() public returns(bool) {
    return true;
  }
}

contract MyFirstContract is Bank(100) {
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