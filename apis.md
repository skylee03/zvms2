# 镇海中学义工管理系统API文档

## 1.zvms.views.user

### **...**

#### 1.1 zvms.views.user

[GET] /user/check  
**检查登录状态**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 1.2 zvms.views.user

[POST] /user/login  
**登录**  

参数:
```json
{
    "id": "string",
    "pwd": "string",
    "devideId": "string"
}
```
响应:
```json
{
    "token": "string",
    "id": "number"
}
```

#### 1.3 zvms.views.user

[POST] /user/logout  
**登出**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 1.4 zvms.views.user

[GET] /user/search  
**搜索用户**  

参数:
```json
{
    "name": "string",
    "cls": "number",
    "auth": "number"
}
```
响应:
```json
"any"
```

#### 1.5 zvms.views.user

[GET] /user/<int:id>/name  
**获取一个用户的最基础信息(用于登录页面)**  

参数:
```json
"any"
```
响应:
```json
{
    "clsName": "string",
    "userName": "string"
}
```

#### 1.6 zvms.views.user

[GET] /user/<int:id>  
**获取一个用户的详细详细信息**  

参数:
```json
"any"
```
响应:
```json
{
    "name": "string",
    "school_id": "number",
    "cls": "number",
    "auth": "number",
    "clsName": "string"
}
```

#### 1.7 zvms.views.user

[GET] /user/<int:id>/time  
**获取一个用户(学生)的义工分**  

参数:
```json
"any"
```
响应:
```json
{
    "inside": "number",
    "outside": "number",
    "large": "number"
}
```

#### 1.8 zvms.views.user

[POST] /user/mod-pwd  
**修改自己的密码**  

参数:
```json
{
    "old": "string",
    "neo": "string"
}
```
响应:
```json
"any"
```

#### 1.9 zvms.views.user

[POST] /user/create  
**创建用户**  

参数:
```json
{
    "users": [
        {
            "id": "number",
            "name": "string",
            "cls": "number",
            "auth": "number"
        }
    ]
}
```
响应:
```json
"any"
```

#### 1.10 zvms.views.user

[POST] /user/<int:id>/modify  
**修改用户信息**  

参数:
```json
{
    "name": "string",
    "cls": "number",
    "auth": "number"
}
```
响应:
```json
"any"
```

#### 1.11 zvms.views.user

[POST] /user/<int:id>/delete  
**删除用户**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 1.12 zvms.views.user

[POST] /user/<int:id>/mod-others-pwd  
**修改他人的密码**  

参数:
```json
{
    "pwd": "string"
}
```
响应:
```json
"any"
```
## 2.zvms.views.report

### **...**

#### 2.1 zvms.views.report

[POST] /report  
**发送反馈**  

参数:
```json
{
    "report": "string"
}
```
响应:
```json
"any"
```

#### 2.2 zvms.views.report

[GET] /report/fetch  
**获取反馈**  

参数:
```json
"any"
```
响应:
```json
[
    {
        "content": "string",
        "reporter": "number",
        "reporterName": "string",
        "time": "string"
    }
]
```
## 3.zvms.views.notice

### **...**

#### 3.1 zvms.views.notice

[GET] /notice/search  
**搜索通知**  

参数:
```json
{
    "sender": "number",
    "receiver": "number",
    "cls": "number",
    "school": "number"
}
```
响应:
```json
[
    {
        "id": "number",
        "title": "string",
        "content": "string",
        "sender": "number",
        "sendtime": "string",
        "deadtime": "string",
        "senderName": "string"
    }
]
```

#### 3.2 zvms.views.notice

[POST] /notice/send/user  
**发送用户通知**  

参数:
```json
{
    "targets": [
        "number"
    ],
    "anonymous": "boolean",
    "title": "string",
    "content": "string",
    "deadtime": "string"
}
```
响应:
```json
"any"
```

#### 3.3 zvms.views.notice

[POST] /notice/send/class  
**发送班级通知**  

参数:
```json
{
    "targets": [
        "number"
    ],
    "anonymous": "boolean",
    "title": "string",
    "content": "string",
    "deadtime": "string"
}
```
响应:
```json
"any"
```

#### 3.4 zvms.views.notice

[POST] /notice/send/school  
**发送学校通知**  

参数:
```json
{
    "anonymous": "boolean",
    "title": "string",
    "content": "string",
    "deadtime": "string"
}
```
响应:
```json
"any"
```

#### 3.5 zvms.views.notice

[POST] /notice/<int:id>/delete  
**删除一个通知**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 3.6 zvms.views.notice

[POST] /notice/<int:id>/modify  
**修改一个通知**  

参数:
```json
{
    "title": "string",
    "content": "string",
    "deadtime": "string"
}
```
响应:
```json
"any"
```

#### 3.7 zvms.views.notice

[GET] /notice/public  
**获取公开通知**  

参数:
```json
"any"
```
响应:
```json
[
    {
        "title": "string",
        "content": "string"
    },
    "null"
]
```
## 4.zvms.views.signup

### **...**

#### 4.1 zvms.views.signup

[GET] /signup/list/<int:cls>  
**列出一个班级的报名**  

参数:
```json
"any"
```
响应:
```json
[
    {
        "volId": "number",
        "volName": "string",
        "stuId": "number",
        "stuName": "string"
    }
]
```

#### 4.2 zvms.views.signup

[POST] /signup/<int:volId>  
**报名一个义工**  

参数:
```json
{
    "students": [
        "number"
    ]
}
```
响应:
```json
"any"
```

#### 4.3 zvms.views.signup

[POST] /signup/<int:volId>/<int:stuId>/rollback  
**撤回一个报名**  

参数:
```json
"any"
```
响应:
```json
"any"
```
## 5.zvms.views.volunteer

### **...**

#### 5.1 zvms.views.volunteer

[GET] /volunteer/list  
**列出义工**  

参数:
```json
{
    "cls": "number"
}
```
响应:
```json
[
    {
        "id": "number",
        "name": "string",
        "time": "string",
        "status": "number",
        "signable": "boolean",
        "joiners": [
            {
                "id": "number",
                "name": "string"
            }
        ],
        "holderName": "string"
    }
]
```

#### 5.2 zvms.views.volunteer

[GET] /volunteer/search  
**搜索义工**  

参数:
```json
{
    "holder": "number",
    "student": "number",
    "cls": "number",
    "name": "string",
    "status": "VolStatus",
    "signable": "boolean"
}
```
响应:
```json
[
    {
        "id": "number",
        "name": "string",
        "time": "string",
        "status": "number",
        "signable": "boolean",
        "joiners": [
            {
                "id": "number",
                "name": "string"
            }
        ],
        "holderName": "string"
    }
]
```

#### 5.3 zvms.views.volunteer

[GET] /volunteer/<int:id>  
**获取一个义工的详细信息**  

参数:
```json
"any"
```
响应:
```json
{
    "name": "string",
    "description": "string",
    "time": "string",
    "status": "VolStatus",
    "type": "VolType",
    "reward": "number",
    "signable": "boolean",
    "classes": [
        {
            "name": "string",
            "id": "number",
            "max": "number"
        }
    ],
    "joiners": [
        {
            "id": "number",
            "name": "string"
        }
    ],
    "holder": "number",
    "holderName": "string"
}
```

#### 5.4 zvms.views.volunteer

[POST] /volunteer/create  
**创建一个义工**  

参数:
```json
{
    "classes": [
        {
            "id": "number",
            "max": "number"
        }
    ],
    "name": "string",
    "description": "string",
    "time": "string",
    "type": "VolType",
    "reward": "number"
}
```
响应:
```json
"any"
```

#### 5.5 zvms.views.volunteer

[POST] /volunteer/create/appointed  
**创建一个成员全部指定的义工**  

参数:
```json
{
    "joiners": [
        "number"
    ],
    "name": "string",
    "description": "string",
    "time": "string",
    "type": "VolType",
    "reward": "number"
}
```
响应:
```json
"any"
```

#### 5.6 zvms.views.volunteer

[POST] /volunteer/<int:id>/modify  
**修改义工**  

参数:
```json
{
    "classes": [
        {
            "id": "number",
            "max": "number"
        }
    ],
    "name": "string",
    "description": "string",
    "time": "string",
    "type": "VolType",
    "reward": "number"
}
```
响应:
```json
"any"
```

#### 5.7 zvms.views.volunteer

[POST] /volunteer/<int:id>/delete  
**删除义工**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 5.8 zvms.views.volunteer

[POST] /volunteer/<int:id>/audit  
**审核通过义工**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 5.9 zvms.views.volunteer

[POST] /volunteer/<int:id>/repulse  
**审核打回义工**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 5.10 zvms.views.volunteer

[POST] /volunteer/create/special  
**...**  

参数:
```json
{
    "name": "string",
    "type": "VolType",
    "reward": "number",
    "joiners": [
        "number"
    ]
}
```
响应:
```json
"any"
```
## 6.zvms.views.thought

### **...**

#### 6.1 zvms.views.thought

[GET] /thought/student/<int:id>  
**搜索学生感想**  

参数:
```json
{
    "status": "ThoughtStatus"
}
```
响应:
```json
[
    {
        "volId": "number",
        "stuId": "number",
        "status": "ThoughtStatus",
        "stuName": "string",
        "volName": "string",
        "volTime": "string"
    }
]
```

#### 6.2 zvms.views.thought

[GET] /thought/search  
**搜索感想**  

参数:
```json
{
    "cls": "number",
    "status": "ThoughtStatus",
    "student": "number",
    "volunteer": "number"
}
```
响应:
```json
[
    {
        "volId": "number",
        "stuId": "number",
        "status": "ThoughtStatus",
        "stuName": "string",
        "volName": "string",
        "volTime": "string"
    }
]
```

#### 6.3 zvms.views.thought

[GET] /thought/<int:volId>/<int:stuId>  
**获取一个感想的详细信息**  

参数:
```json
"any"
```
响应:
```json
{
    "status": "ThoughtStatus",
    "thought": "string",
    "pics": [
        {
            "hash": "string",
            "type": "string"
        }
    ],
    "reward": "number",
    "everRepulsed": "boolean",
    "reason": "string"
}
```

#### 6.4 zvms.views.thought

[POST] /thought/<int:volId>/<int:stuId>/save  
**保存感想草稿**  

参数:
```json
{
    "thought": "string",
    "pictures": [
        [
            {
                "hash": "string",
                "type": "string"
            },
            {
                "base64": "string",
                "type": "string"
            }
        ]
    ]
}
```
响应:
```json
"any"
```

#### 6.5 zvms.views.thought

[POST] /thought/<int:volId>/<int:stuId>/submit  
**提交感想**  

参数:
```json
{
    "thought": "string",
    "pictures": [
        [
            {
                "hash": "string",
                "type": "string"
            },
            {
                "base64": "string",
                "type": "string"
            }
        ]
    ]
}
```
响应:
```json
"any"
```

#### 6.6 zvms.views.thought

[POST] /thought/<int:volId>/<int:stuId>/audit/first  
**初审感想(班内)**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 6.7 zvms.views.thought

[POST] /thought/<int:volId>/<int:stuId>/audit/final  
**审核感想(义管会)**  

参数:
```json
{
    "reward": "number"
}
```
响应:
```json
"any"
```

#### 6.8 zvms.views.thought

[POST] /thought/<int:volId>/<int:stuId>/repulse  
**打回感想**  

参数:
```json
{
    "reason": "string"
}
```
响应:
```json
"any"
```

#### 6.9 zvms.views.thought

[POST] /thought/<int:volId>/<int:stuId>/fetch-picture  
**拉取感想图片**  

参数:
```json
{
    "url": "string"
}
```
响应:
```json
{
    "hash": "string",
    "type": "string"
}
```
## 7.zvms.views.class_

### **...**

#### 7.1 zvms.views.class_

[GET] /class/list  
**列出所有班级**  

参数:
```json
"any"
```
响应:
```json
[
    {
        "id": "number",
        "name": "string"
    }
]
```

#### 7.2 zvms.views.class_

[GET] /class/<int:id>/student_num  
**获取一个班级的学生人数**  

参数:
```json
"any"
```
响应:
```json
{
    "num": "number"
}
```

#### 7.3 zvms.views.class_

[GET] /class/<int:id>  
**获取一个班级的详细信息**  

参数:
```json
"any"
```
响应:
```json
{
    "name": "string",
    "students": [
        {
            "auth": "number",
            "id": "number",
            "name": "string"
        }
    ],
    "teachers": [
        {
            "auth": "number",
            "id": "number",
            "name": "string"
        }
    ]
}
```

#### 7.4 zvms.views.class_

[POST] /class/<int:id>/delete  
**删除一个班级**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 7.5 zvms.views.class_

[POST] /class/create  
**创建一个班级**  

参数:
```json
{
    "name": "string"
}
```
响应:
```json
"any"
```

#### 7.6 zvms.views.class_

[POST] /class/<int:id>/modify  
**修改一个班级的名称**  

参数:
```json
{
    "name": "string"
}
```
响应:
```json
"any"
```
## 8.zvms.views.system

### **...**

#### 8.1 zvms.views.system

[POST] /system/ttyd/restart  
**...**  

参数:
```json
"any"
```
响应:
```json
"any"
```

#### 8.2 zvms.views.system

[POST] /system/restart  
**...**  

参数:
```json
"any"
```
响应:
```json
"any"
```
