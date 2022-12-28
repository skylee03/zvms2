from zvms.routelib import *
from zvms.views.structs import Login, ModPwd, ChangeClass
import zvms.impls.users

route(
    rule='/check',
    method='GET',
    impl_func=zvms.impls.users.check
)

route(
    rule='/users/login',
    method='POST',
    impl_func=zvms.impls.users.login,
    params=Login,
    auth=None
)

route(
    rule='/users/logout',
    method='POST',
    impl_func=zvms.impls.users.logout
)

route(
    rule='/users/<int:id>',
    method='GET',
    impl_func=zvms.impls.users.get_user_info
)

route(
    rule='/users/mod-pwd',
    method='PATCH',
    impl_func=zvms.impls.users.modify_password,
    params=ModPwd,
)

route(
    rule='/users/change-class',
    method='PATCH',
    impl_func=zvms.impls.users.change_class,
    auth=AUTH.TEACHER,
    params=ChangeClass
)