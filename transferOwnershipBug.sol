function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  //emit TransferOwnership(msg.sender, newOwner);
  _transferOwnership(newOwner);
}

function _transferOwnership(newOwner) {
  emit TransferOwnership(owner, newOwner);
  owner = newOwner;
}