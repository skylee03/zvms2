from shell import App
from req import req

class_ = App('class', '班级管理:')

@class_.route('class list')
def list_classes():
    '''获取班级列表'''
    res = req.get('/class/list')
    if res:
        for i in res:
            print(i['id'], i['name'])

@class_.route('class <int:id>')
def get_class_info(id):
    '''获取班级详细信息'''
    res = req.get(f'/class/{id}')
    if res:
        def print_users(users):
            for i in users:
                print(i['id'], i['name'])
        print('教师:')
        print_users(res['teachers'])
        print('学生:')
        print_users(res['students'])

@class_.route('class create <int:id> <name>')
def create_class(id, name):
    '''创建班级'''
    req.post('/class/create', id=id, name=name)

@class_.route('class delete <int:id>')
def delete_class(id):
    '''删除班级'''
    req.post(f'/class/{id}/delete')

@class_.route('class modify <int:id> <name>')
def modify_class(id, name):
    '''修改班级'''
    req.post(f'/class/{id}/modify', name=name)