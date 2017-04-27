var ConvertLib = artifacts.require("./ConvertLib.sol");
var People = artifacts.require("./People.sol");
var Review = artifacts.require("./Review.sol");
module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, People);
  deployer.deploy(People);
  deployer.link(ConvertLib, Review);
  deployer.deploy(Review);
};
