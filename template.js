const callInWindow = require('callInWindow');
const injectScript = require('injectScript');

if (data.projectToken){
  injectScript('https://api.exponea.com/js/exponea.min.js', initializeExponea);
} else {
  exponeaFunctions();
}

function exponeaFunctions(){
  if (data.eventTrackingRadio == "standardEvent" && data.standardEventList != "noneSelected"){
function exponeaFunctions() {
  if (data.eventTrackingRadio == "standardEvent" && data.standardEventList != "noneSelected") {
    var convertedAttributes = parseToSingleJson(data.standardEventProperties);
    var trackStandardEvent = callInWindow('exponea.track', data.standardEventList, convertedAttributes);
  } else if (data.eventTrackingRadio == "customEvent") {
    var convertedAttributes = parseToSingleJson(data.customEventProperties);
    var trackCustomEvent = callInWindow('exponea.track', data.customEventName, convertedAttributes);
  } else if (data.eventTrackingRadio == "eeEvent") {
    var trackCustomEvent = callInWindow('exponea.trackEnhancedEcommerce', data.eeObj, data.eeKind);
  }

  if (data.updateCustomerAttributes){
    var convertedAttributes = parseToSingleJson(data.updateCustomerAttributes);
    var exponeaUpdate = callInWindow('exponea.update', convertedAttributes);
  }

  if (data.identifyCustomer){
    var convertedAttributes = parseToSingleJson(data.identifyCustomer);
    var exponeaIdentify = callInWindow('exponea.identify', convertedAttributes);
  }
}

function parseToSingleJson(arrayOfObjects){
  var attributes = arrayOfObjects;
  var convertedAttributes = {};
  for (var i = 0; i < attributes.length; i++) {
    var attributeName = attributes[i].attributeName;
    var attributeValue = attributes[i].attributeValue;
    convertedAttributes[attributeName] = attributeValue;
  }
  return convertedAttributes;
}

function initializeExponea(){
  var exponeaInitialize = callInWindow('exponea.initialize',{
    "token": data.projectToken,
    "target":data.targetAPI,
    "ping": {
      "enabled": data.trackSession
    },
    "track": {
      "visits": data.trackPageVisit,
      "google_analytics": data.trackGACookie
    }
  });
  exponeaFunctions();
}

data.gtmOnSuccess();
