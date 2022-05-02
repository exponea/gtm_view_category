const makeTableMap = require('makeTableMap');
const callInWindow = require('callInWindow');
const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');

const jsUrl = data.isServerUsed ? data.jsURL : 'https://api.exponea.com/js/exponea.min.js';

if (data.projectToken) injectScript(jsUrl, initializeExponea, data.gtmOnFailure, jsUrl);
else exponeaFunctions();

function exponeaFunctions() {
    if (data.eventTrackingRadio === 'standardEvent' && data.standardEventList !== 'noneSelected') {
        callInWindow('exponea.track', data.standardEventList, arrayToObject(data.standardEventProperties));
    } else if (data.eventTrackingRadio === 'customEvent') {
        callInWindow('exponea.track', data.customEventName, arrayToObject(data.customEventProperties));
    } else if (data.eventTrackingRadio === 'eeEvent') {
        callInWindow('exponea.trackEnhancedEcommerce', data.eeObj, data.eeKind);
    }

    if (data.updateCustomerAttributes) {
        callInWindow('exponea.update', arrayToObject(data.updateCustomerAttributes));
    }

    if (data.identifyCustomer) {
        callInWindow('exponea.identify', arrayToObject(data.identifyCustomer));
    }
}

function arrayToObject(arrayOfObjects) {
    return makeTableMap(arrayOfObjects, 'attributeName', 'attributeValue');
}

function initializeExponea() {
    let exponeaIsInitialized = copyFromWindow('exponeaIsInitialized');

    if (!exponeaIsInitialized) {
        setInWindow('exponeaIsInitialized', true, true);

        callInWindow('exponea.initialize', {
            "token": data.projectToken,
            "target": data.targetAPI,
            "ping": {
                "enabled": data.trackSession
            },
            "track": {
                "visits": data.trackPageVisit,
                "google_analytics": data.trackGACookie
            }
        });
    }

    exponeaFunctions();
}

data.gtmOnSuccess();
