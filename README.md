# json_to_csv
Jsonファイルをcsvファイルに変換する

以下の形式のファイルを読み込み

```
{   
    "Parameters": [
        {   
            "ApplyMethod": "pending-reboot",
            "Description": "Sets the application name to be reported in statistics and logs.",
            "DataType": "string",
            "Source": "engine-default",
            "IsModifiable": true,
            "ParameterName": "application_name",
            "ApplyType": "dynamic"
        },  
        {   
            "ApplyMethod": "pending-reboot",
            "Description": "Sets the shell command that will be called to archive a WAL file.",
            "DataType": "string",
            "IsModifiable": false,
            "Source": "system",
            "ParameterValue": "/etc/rds/dbbin/pgscripts/rds_wal_archive %p",
            "ParameterName": "archive_command",
            "ApplyType": "dynamic"
        }
    ]
}
```

以下を出力する

```
ParameterName,ParameterValue
application_name,default
archive_command,/etc/rds/dbbin/pgscripts/rds_wal_archive %p
```
