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
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYxIDY0LjE0MDk0OSwgMjAxMC8xMi8wNy0xMDo1NzowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNS4xIFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0Q0NjEzQTMxMTVEMTFFODlDNURGQTg1Q0FFRDFEMzgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0Q0NjEzQTQxMTVEMTFFODlDNURGQTg1Q0FFRDFEMzgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDozRDQ2MTNBMTExNUQxMUU4OUM1REZBODVDQUVEMUQzOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDozRDQ2MTNBMjExNUQxMUU4OUM1REZBODVDQUVEMUQzOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PhXZCD4AAAGYSURBVHjarJTPLwNBFMdntpuWilQqVNKTIPEjEhzcFAmJcOEipG79Nxz9Cdy4SHrxIyTiohLaOomoxEVKuEgvkhKtyFa34zs8smm6q7s1ySfvvdl935mdefu4EIL951DNHvDR8B7MLIU94AZ4wDXoAhkRjwbL8xSLxdYN/gTZAdBB/malJCvBU5Amf4bsJOUUwLZdwTewT/4wkJ83TvE5uLIrKMcO0IEfhOksGe2u5EQwBS7IXwZtIAcOzBL+EiyCLfIb5eWDY/DgVFAOWT5Z8mXRRq1erkYwA57Il+d5W6vgCOg0/AhztQouApchngd1TgVbDUWdpNrsBSGnglMgQDW3YrjdBaeCP4n3IE5/iBzTtJAtwW4wRv4J0ECM4oDhKKoWXGJc1H9XHz9kOu5FKAlEeczL2Yg9wQ+3jxU8Sdhdv0uPrbWn2ZA3l0G8ivkz2JeKfdSsYycig/1ywRLjeotb433evPKoedjde4OuMI6NCDW0kbqsumOHmrJHX80A62klhb0WVdasFlnQ98w4/90EL8/7FGAA5Yplk32jZooAAAAASUVORK5CYII\u003d"
  },
  "categories": [
    "Analytics"
  ],
  "description": "Flytxt Insights template facilitates integration with Digital Plus cloud.",
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
const scriptUri='https://flytxttag.s3-eu-west-1.amazonaws.com/flytxt.js';

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
                "string": "https://flytxttag.s3-eu-west-1.amazonaws.com/flytxt.js"
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

