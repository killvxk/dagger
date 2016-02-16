# RUN: llvm-mc -filetype=obj -o - %s | llvm-dec - -dc-translate-unknown-to-undef -enable-dc-reg-mock-intrin | FileCheck %s

## VMPTRSTm
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vmptrst	2(%r11,%rbx,2)

retq
