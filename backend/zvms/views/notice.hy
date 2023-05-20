(import datetime [datetime]
        zvms.apilib *
        zvms.util [inexact-now]
        zvms.res *)

(require zvms.apilib *)

(defmacro _save-notice [sender]
  `(. (insert (Notice
              :title title
              :content content
              :sendtime (inexact-now)
              :deadtime deadtime
              :sender ~sender))
     id))

(defapi [:rule "/notice/send/user"
         :method "POST"
         :models [Notice User]
         :params UserNotice
         :auth Categ.MANAGER
         :doc "发送用户通知"]
  send-user-notice [#^str title
                    #^str content
                    #^datetime deadtime
                    #^(of list str) targets]
  (let [id (_save-notice (:id token-data))]
    (for [i targets]
      (insert (UserNotice
               :user-id (. (User.get/error i "未找到目标用户") id)
               :notice-id id)))
    (success "发送成功")))

(defapi [:rule "/notice/send/class"
         :method "POST"
         :models [Notice Class]
         :params ClassNotice
         :auth Categ.MANAGER
         :doc "发送班级通知"]
  send-class-notice [#^str title
                     #^str content
                     #^datetime deadtime
                     #^(of list int) targets]
  (let [id (_save-notice (:id token-data))]
    (for [i targets]
      (Class.get/error i "未找到目标班级")
      (insert (ClassNotice
               :class-id i
               :notice-id id)))
    (success "发送成功")))

(defapi [:rule "/notice/send/school"
         :method "POST"
         :params Notice
         :auth Categ.MANAGER
         :doc "发送学校通知"]
  send-school-notice [#^str title
                      #^str content
                      #^datetime deadtime
                      #^bool anonymous]
  (insert (SchoolNotice
           :notice-id (_save-notice (if anonymous 0 (:id (token-data))))))
  (success "发送成功"))

#^str main-menu-notice-title
#^str main-menu-notice-content

(defn load-main-menu-notice []
  (global main-menu-notice-title main-menu-notice-content)
  (try
    (with [f (open MAIN-MENU-NOTICE "r" :encoding "utf-8")]
          (setv main-menu-notice-title (f.readline)
                main-menu-notice-content (f.read))
          (print "主页通知已加载"))
    (except [IOError]
            (import traceback)
            (traceback.print-exc))))

(defstruct MainMenuNotice None False
  #^str title
  #^str content)

(defapi [:rule "/notice/mainmenu"
         :returns MainMenuNotice
         :auth Categ.NONE
         :doc "获取主页通知"]
  get-mani-menu-notice []
  (success "获取主页通知成功" 
           :title main-menu-notice-title
           :content main-menu-notice-content))