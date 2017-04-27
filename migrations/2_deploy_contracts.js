var ConvertLib = artifacts.require("./ConvertLib.sol");
var People = artifacts.require("./People.sol");
var Review = artifacts.require("./Review.sol");
var Zipfs = artifacts.require("./Zipfs.sol");
 module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, People);
  deployer.deploy(People);
  deployer.link(ConvertLib, Review);
  deployer.deploy(Review);
  deployer.link(ConvertLib, Zipfs);
  deployer.deploy(Zipfs);

};
