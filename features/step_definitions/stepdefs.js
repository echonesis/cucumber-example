const assert = require("assert");
const { Given, When, Then } = require("@cucumber/cucumber");

function isItFriday(today) {
  if (today === "Friday") {
    return "TGIF";
  } else {
    return "Nope";
  }
}

Given("today is {string}", function (givenDay) {
  this.today = givenDay;
});

When("I ask whether it's Friday yet", function () {
  this.actualAnswer = isItFriday(this.today);
});

Then("I should be told {string}", function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});

let opDict = {
  1: "Insure",
  2: "Modify",
  3: "NewCase",
};
function getOpStatus(imgNum, operationName) {
  if (opDict[imgNum] === operationName) {
    return "OK";
  } else {
    return "Waiting";
  }
}

Given(
  "We get {string} scanned images for certain {string}",
  function (imgNum, operation) {
    this.imgNum = imgNum;
    this.operationName = operation;
  }
);

When("I ask whether it's OK", function () {
  this.actualAnswer = getOpStatus(this.imgNum, this.operationName);
});

Then("I should get {string}", function (expectedAnswer) {
  assert.strictEqual(this.actualAnswer, expectedAnswer);
});
