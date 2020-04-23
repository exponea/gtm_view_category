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
        "displayName": "",
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
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 25/11/2019, 10:21:36


