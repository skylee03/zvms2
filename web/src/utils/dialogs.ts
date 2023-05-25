//@ZhangZiSu.cn
import Swal from "sweetalert2";

export const toasts = {
  error: async (msg: string) => {
    //console.log(`%c${new Date()}\n${msg}`, 'color: #ecf0f1; background: #e74c3c')
    return Swal.fire({
      title: "错误",
      text: msg,
      icon: "error",
      toast: true,
      position: "bottom-end",
      showConfirmButton: false,
      timer: 7000,
    });
  },
  success: async (msg: string) => {
    //console.log(`%c${new Date()}\n${msg}`, 'color: #ecf0f1; background: #2ecc71')
    return Swal.fire({
      title: "成功",
      text: msg,
      icon: "success",
      toast: true,
      position: "bottom-end",
      showConfirmButton: false,
      timer: 4000,
    });
  },
};
export async function confirm(msg: string = "确定操作？"): Promise<boolean> {
  const res = await Swal.fire({
    title: "三思而后行",
    text: msg,
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "确定",
    cancelButtonText: "取消",
  });
  return res.value;
}
export function validateForm(isFormValid: boolean) {
  if (!isFormValid) {
    toasts.error("请检查表单是否填写正确");
  }
  return isFormValid;
}
