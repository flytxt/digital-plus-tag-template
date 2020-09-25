___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Flytxt Insights",
  "brand": {
    "id": "Flytxt",
    "displayName": "Flytxt",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAYAAACM/rhtAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAdNJREFUeNrMmDtSwzAQhh0NvVPQOwV9KOlCThBzA7d05gY5Qjpa3yD2DVxSkp4Z4p4CXwCznlkqduXVw5LVaCZStN/+euyuV8MwJNKmHp5y6M7E0MvP2/lEzN9A90nMb2B+LrKZGDRYtIauJ4Yemb9wEJVYlMS81cRvB1BrLQTv0dHZACuJWgh8EDroDxC8b6HrBGpx23uaFVCjQi7Y3g4cfA8BSKmQ4i3XKViZGrICBBWu0F24bQbQsU+jAWqM5Rr1LuhYMEDqHGag3r2v7XUCRDUaYug4gkYH1D3aTGj7jgXYWzoyPyCqMmV8DG1VFEChOrXL4s6AmgzH6XL4VFAH0WHsjg7Ixder68K+ALnMZcfkieEANXnfFHwwBYuJ8XLpgFssnsIDYmKwFUwtYylIqdf7PIdqhtt7ZNKwPCggGsyY0Nb4UlF5Vu8vayaLKps3UVmqt57ImqnwltqoqBzUo4qidqKoKkICTtW8NRP6NrMCogHJJ43aR+hTntT7B4Rqdq6Ptg1gyaT1LXcmmdLUPyAunBmk9bVr6LsxVG8skvbSxHQsB8CpPbOOqK1MPgHHaEYKfj3fFTZvGVUi3L5+lHNs8fjE7EIqqJKFt8UD/gowAJS7l9DJKYuHAAAAAElFTkSuQmCC"
  },
  "categories": [
    "ANALYTICS"
  ],
  "description": "Capture customer interactions and integrate with NEON-dX platform",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "accountKey",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "displayName": "Account Key",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "customerKey",
    "displayName": "Customer Key",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "tagCategory",
    "displayName": "Tag Category",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "additionalFieldsGroup",
    "displayName": "Additional Fields",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "additionalFields",
        "displayName": "",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Field Name",
            "name": "fieldName",
            "type": "TEXT",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Field Value",
            "name": "fieldValue",
            "type": "TEXT"
          }
        ],
        "newRowButtonText": "Add Field"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');
if(data.additionalFields) {
translateAdditionalFields(data);
}
  log(data);
const encodeUriComponent=require('encodeUriComponent');
const queryPermission=require('queryPermission');
const callInWindow=require('callInWindow');
const injectScript= require('injectScript');
const scriptUri='https://ndp-tag.s3-eu-west-1.amazonaws.com/ndptag.js';

function onSuccess() {
  callInWindow("sendDigitalPlusData",data,data.gtmOnSuccess,data.gtmOnFailure);
}


if (queryPermission('inject_script', scriptUri)) {
  injectScript(scriptUri,onSuccess,data.gtmOnFailure,"FlytxtInsightsScript");
} 
else {
  log(' Script load failed due to permissions mismatch.');
  data.gtmOnFailure();
}

function translateAdditionalFields(data) {

var translatedFields={};
var fields=data.additionalFields;
for (var index=0,len=fields.length;index<len;index++) {
  var fieldName=fields[index].fieldName;
  translatedFields[fieldName]=fields[index].fieldValue;
  
}
data.additionalFields=translatedFields;
  

}


___WEB_PERMISSIONS___

[
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
                "string": "https://ndp-tag.s3-eu-west-1.amazonaws.com/ndptag.js"
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
                    "string": "sendDigitalPlusData"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
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
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 13/04/2020, 18:30:43

