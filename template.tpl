___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "Exponea Tag",
  "categories": [
    "ANALYTICS",
    "CONVERSIONS",
    "EXPERIMENTATION"
  ],
  "description": "Exponea Initialisation, Event Tracking, Customer Identification and Upading of Customer Attributes.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAC0AAAAuCAYAAAC8jpA0AAAACXBIWXMAAAsSAAALEgHS3X78AAAA9UlEQVRogWP8c435AMMQA4x/rjH/H2hHkAqYBtoB5IBRR9MLjDqaXmDU0fQCo46mFxh1NL3AqKPpBViobeDRU6YMzbPY8KrxsWVhyIk/SLYdVHf0u48sDNfvfsWrxkBdgCI7RpMHNhDphRmq1gY/KTKT5o7uKD1AdTOHZPKgSh9x825Lhpy271jlNJW5McQGXemBDrCVJKOlB7XAlCpOvPKqCm8pMp8mjvZ1PU4LY+FgSCYPikoPeUcDsvRFeglQVH4PyZAeko4eHYCkFxh1NL3AqKPpBUYdTS8w6mh6gVFH0wuMOppeYEg6moWBgcFxoB1BKgAAsGMsB1E8RAgAAAAASUVORK5CYII\u003d",
    "displayName": "Exponea",
    "id": "Exponea"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "initialisationGroup",
    "displayName": "Initialise Exponea",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "projectToken",
        "displayName": "Project token",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "targetAPI",
        "displayName": "API endpoint",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "trackSession",
        "checkboxText": "Track Session",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "trackPageVisit",
        "checkboxText": "Track page_visit",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "trackGACookie",
        "checkboxText": "Track GA Cookies",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "eventTrackingGroup",
    "displayName": "Track Event",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "RADIO",
        "name": "eventTrackingRadio",
        "displayName": "",
        "radioItems": [
          {
            "value": "standardEvent",
            "displayValue": "Standard event",
            "subParams": [
              {
                "type": "SELECT",
                "name": "standardEventList",
                "displayName": "",
                "macrosInSelect": true,
                "selectItems": [
                  {
                    "value": "view_category",
                    "displayValue": "view_category"
                  },
                  {
                    "value": "checkout",
                    "displayValue": "checkout"
                  },
                  {
                    "value": "cart_update",
                    "displayValue": "cart_update"
                  },
                  {
                    "value": "consent",
                    "displayValue": "consent"
                  },
                  {
                    "value": "purchase",
                    "displayValue": "purchase"
                  },
                  {
                    "value": "purchase_item",
                    "displayValue": "purchase_item"
                  },
                  {
                    "value": "view_item",
                    "displayValue": "view_item"
                  }
                ],
                "simpleValueType": true,
                "defaultValue": "noneSelected"
              },
              {
                "type": "SIMPLE_TABLE",
                "name": "standardEventProperties",
                "displayName": "",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Attribute Name",
                    "name": "attributeName",
                    "type": "TEXT"
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Attribute Value",
                    "name": "attributeValue",
                    "type": "TEXT"
                  }
                ]
              }
            ]
          },
          {
            "value": "customEvent",
            "displayValue": "Custom event",
            "subParams": [
              {
                "type": "TEXT",
                "name": "customEventName",
                "displayName": "Event Name",
                "simpleValueType": true
              },
              {
                "type": "SIMPLE_TABLE",
                "name": "customEventProperties",
                "displayName": "",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Attribute Name",
                    "name": "attributeName",
                    "type": "TEXT"
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Attribute Value",
                    "name": "attributeValue",
                    "type": "TEXT"
                  }
                ]
              }
            ]
          }
        ],
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "updateCustomerGroup",
    "displayName": "Upadte Customer Attributes",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "updateCustomerAttributes",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Attribute Name",
            "name": "attributeName",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Attribute Value",
            "name": "attributeValue",
            "type": "TEXT"
          }
        ],
        "newRowButtonText": "Add attribute"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "identifyCustomerGroup",
    "displayName": "Indentify Customer",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "identifyCustomer",
        "displayName": "Specify identifiers",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Identifier Name",
            "name": "attributeName",
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Identifier Value",
            "name": "attributeValue",
            "type": "TEXT"
          }
        ],
        "newRowButtonText": "Add identifier"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const callInWindow = require('callInWindow');
const injectScript = require('injectScript');

if (data.projectToken){
   injectScript('https://api.exponea.com/js/exponea.min.js', initializeExponea);     
} else {
   exponeaFunctions();
}

function exponeaFunctions(){
   if (data.eventTrackingRadio == "standardEvent" && data.standardEventList != "noneSelected"){    
      var convertedAttributes = parseToSingleJson(data.standardEventProperties);    
      var trackStandardEvent = callInWindow('exponea.track', data.standardEventList, convertedAttributes);   
   } else if (data.eventTrackingRadio == "customEvent") {
      var convertedAttributes = parseToSingleJson(data.customEventProperties);      
      var trackCustomEvent = callInWindow('exponea.track', data.customEventName, convertedAttributes);
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
  if (arrayOfObjects === undefined || arrayOfObjects === null) {
    return {};
  }
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


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "exponea"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "exponea.track"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "exponea.update"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "exponea.identify"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "exponea.initialize"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://api.exponea.com/js/exponea.min.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Test standard event tracking
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'view_category',
      standardEventProperties: [
        {attributeName: 'category', attributeValue: 'electronics'},
        {attributeName: 'subcategory', attributeValue: 'phones'}
      ]
    };
    
    mock('callInWindow', function(method, eventName, attributes) {
      assertThat(method).isEqualTo('exponea.track');
      assertThat(eventName).isEqualTo('view_category');
      assertThat(attributes.category).isEqualTo('electronics');
      assertThat(attributes.subcategory).isEqualTo('phones');
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test custom event tracking
  code: |-
    const testData = {
      eventTrackingRadio: 'customEvent',
      customEventName: 'custom_action',
      customEventProperties: [
        {attributeName: 'action_type', attributeValue: 'button_click'},
        {attributeName: 'page', attributeValue: 'homepage'}
      ]
    };
    
    mock('callInWindow', function(method, eventName, attributes) {
      assertThat(method).isEqualTo('exponea.track');
      assertThat(eventName).isEqualTo('custom_action');
      assertThat(attributes.action_type).isEqualTo('button_click');
      assertThat(attributes.page).isEqualTo('homepage');
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test customer attribute update
  code: |-
    const testData = {
      updateCustomerAttributes: [
        {attributeName: 'email', attributeValue: 'user@example.com'},
        {attributeName: 'subscription', attributeValue: 'premium'}
      ]
    };
    
    mock('callInWindow', function(method, attributes) {
      assertThat(method).isEqualTo('exponea.update');
      assertThat(attributes.email).isEqualTo('user@example.com');
      assertThat(attributes.subscription).isEqualTo('premium');
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test customer identification
  code: |-
    const testData = {
      identifyCustomer: [
        {attributeName: 'email', attributeValue: 'user@example.com'},
        {attributeName: 'user_id', attributeValue: '12345'}
      ]
    };
    
    mock('callInWindow', function(method, attributes) {
      assertThat(method).isEqualTo('exponea.identify');
      assertThat(attributes.email).isEqualTo('user@example.com');
      assertThat(attributes.user_id).isEqualTo('12345');
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test initialization with project token
  code: |-
    const testData = {
      projectToken: 'test-token',
      targetAPI: 'https://api.exponea.com',
      trackSession: true,
      trackPageVisit: true,
      trackGACookie: false
    };
    
    mock('callInWindow', function(method, config) {
      if (method === 'exponea.initialize') {
        assertThat(config.token).isEqualTo('test-token');
        assertThat(config.target).isEqualTo('https://api.exponea.com');
        assertThat(config.ping.enabled).isEqualTo(true);
        assertThat(config.track.visits).isEqualTo(true);
        assertThat(config.track.google_analytics).isEqualTo(false);
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      assertThat(url).isEqualTo('https://api.exponea.com/js/exponea.min.js');
      callback();
    });
    
    runCode(testData);
- name: Test skip tracking when noneSelected
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'noneSelected'
    };
    
    let trackCalled = false;
    mock('callInWindow', function(method) {
      if (method === 'exponea.track') {
        trackCalled = true;
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
    
    assertThat(trackCalled).isFalse();
- name: Test empty standardEventProperties
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'view_item',
      standardEventProperties: []
    };
    
    mock('callInWindow', function(method, eventName, attributes) {
      if (method === 'exponea.track') {
        assertThat(eventName).isEqualTo('view_item');
        // Check that attributes is an empty object by checking if it's truthy but has no enumerable properties
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test empty customEventProperties
  code: |-
    const testData = {
      eventTrackingRadio: 'customEvent',
      customEventName: 'test_event',
      customEventProperties: []
    };
    
    mock('callInWindow', function(method, eventName, attributes) {
      if (method === 'exponea.track') {
        assertThat(eventName).isEqualTo('test_event');
        // Check that attributes is an empty object
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test empty updateCustomerAttributes array
  code: |-
    const testData = {
      updateCustomerAttributes: []
    };
    
    mock('callInWindow', function(method, attributes) {
      if (method === 'exponea.update') {
        // Check that attributes is an empty object
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test empty identifyCustomer array
  code: |-
    const testData = {
      identifyCustomer: []
    };
    
    mock('callInWindow', function(method, attributes) {
      if (method === 'exponea.identify') {
        // Check that attributes is an empty object
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test null updateCustomerAttributes
  code: |-
    const testData = {
      updateCustomerAttributes: null
    };
    
    mock('callInWindow', function(method, attributes) {
      if (method === 'exponea.update') {
        // Check that attributes is an empty object when null is passed
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test null identifyCustomer
  code: |-
    const testData = {
      identifyCustomer: null
    };
    
    mock('callInWindow', function(method, attributes) {
      if (method === 'exponea.identify') {
        // Check that attributes is an empty object when null is passed
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test undefined standardEventProperties
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'view_category'
      // standardEventProperties is undefined
    };
    
    mock('callInWindow', function(method, eventName, attributes) {
      if (method === 'exponea.track') {
        assertThat(eventName).isEqualTo('view_category');
        // Check that attributes is an empty object when undefined is passed
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test undefined customEventProperties
  code: |-
    const testData = {
      eventTrackingRadio: 'customEvent',
      customEventName: 'undefined_props_test'
      // customEventProperties is undefined
    };
    
    mock('callInWindow', function(method, eventName, attributes) {
      if (method === 'exponea.track') {
        assertThat(eventName).isEqualTo('undefined_props_test');
        // Check that attributes is an empty object when undefined is passed
        let hasProperties = false;
        for (let key in attributes) {
          hasProperties = true;
          break;
        }
        assertThat(hasProperties).isFalse();
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
- name: Test undefined updateCustomerAttributes
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'view_item',
      standardEventProperties: [
        {attributeName: 'test', attributeValue: 'value'}
      ]
      // updateCustomerAttributes is undefined - should not call exponea.update
    };
    
    let updateCalled = false;
    mock('callInWindow', function(method, param1, param2) {
      if (method === 'exponea.update') {
        updateCalled = true;
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
    
    assertThat(updateCalled).isFalse();
- name: Test undefined identifyCustomer
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'view_item',
      standardEventProperties: [
        {attributeName: 'test', attributeValue: 'value'}
      ]
      // identifyCustomer is undefined - should not call exponea.identify
    };
    
    let identifyCalled = false;
    mock('callInWindow', function(method, param1, param2) {
      if (method === 'exponea.identify') {
        identifyCalled = true;
      }
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
    
    assertThat(identifyCalled).isFalse();
- name: Test multiple operations
  code: |-
    const testData = {
      eventTrackingRadio: 'standardEvent',
      standardEventList: 'purchase',
      standardEventProperties: [
        {attributeName: 'item_id', attributeValue: 'SKU123'}
      ],
      updateCustomerAttributes: [
        {attributeName: 'last_purchase', attributeValue: 'SKU123'}
      ],
      identifyCustomer: [
        {attributeName: 'email', attributeValue: 'buyer@example.com'}
      ]
    };
    
    const calls = [];
    mock('callInWindow', function(method, param1, param2) {
      calls.push({method: method, param1: param1, param2: param2});
      return true;
    });
    
    mock('injectScript', function(url, callback) {
      callback();
    });
    
    runCode(testData);
    
    assertThat(calls.length).isEqualTo(3);
    assertThat(calls[0].method).isEqualTo('exponea.track');
    assertThat(calls[1].method).isEqualTo('exponea.update');
    assertThat(calls[2].method).isEqualTo('exponea.identify');


___NOTES___

Created on 25/11/2019, 10:21:36


