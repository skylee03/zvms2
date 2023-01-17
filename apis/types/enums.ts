import { createEnums, int } from "zvms-apis-types-gen";

export const enums = createEnums({
    VolType: {
        _type: int(),
        INSIDE: 1,
        OUTSIDE: 2,
        LARGE: 3
    },
    Status: {
        _type: int(),
        WAITING_FOR_SIGNUP_AUDIT: 1,
        UNSUBMITTED: 2,
        DRAFT: 3,
        WAITING_FOR_FIRST_AUDIT: 4,
        WAITING_FOR_FINAL_AUDIT: 5,
        ACCEPTED: 6,
        REJECTED: 7,
    },
    NoticeType: {
        _type: int(),
        USER_NOTICE: 1,
        CLASS_NOTICE: 2,
        SCHOOL_NOTICE: 3,
    }
})