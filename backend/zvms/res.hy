(import enum [IntEnum IntFlag]
        sys)

(defclass VolType [IntEnum]
  (setv INSIDE 1
        OUTSIDE 2
        LARGE 3))

(defclass VolStatus [IntEnum]
  (setv UNAUDITED 1
        AUDITED 2
        REJECTED 3
        FINISHED 4
        DEPRECATED 5))

(defclass ThoughtStatus [IntEnum]
  (setv WAITING-FOR-SIGNUP-AUDIT 1
        DRAFT 2
        WAITING-FOR-FIRST-AUDIT 3
        WAITING-FOR-FINAL-AUDIT 4
        ACCEPTED 5
        SPECIAL 6))

(defclass NoticeType [IntEnum]
  (setv USER-NOTICE 1
        CLASS-NOTICE 2
        SCHOOL-NOTICE 3))

(defclass Categ [IntFlag]
  (setv NONE 1
        CLASS 2
        MANAGER 4
        AUDITOR 8
        SYSTEM 16
        INSPECTOR 32
        ANY 63))

(defn authorized [#^Categ auth #^Categ needed]
  (& (| Categ.SYSTEM auth) needed))

(setv PORT 11451
      STATIC-FOLDER (match sys.platform
                      "win32" "C:\\zvms_backend"
                      "linux" "/tmp/zvms_backend")
      START-TTYD r"start powershell C:\Users\Public\workspace\ttyd\start.ps1"
      STOP-TTYD r"taskkill /im ttyd.exe /f"
      MAIN-MENU-NOTICE r"C:\Users\Public\workspace\public_notice.txt")