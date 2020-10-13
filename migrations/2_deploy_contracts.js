const Types = artifacts.require("Types");
const Inheritance = artifacts.require("Inheritance");

module.exports = function (deployer) {
    deployer.deploy(Types);
    deployer.deploy(Inheritance);
}