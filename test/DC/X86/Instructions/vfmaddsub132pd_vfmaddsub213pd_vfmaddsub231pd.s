# RUN: llvm-mc -filetype=obj -o - %s | llvm-dec - -dc-translate-unknown-to-undef -enable-dc-reg-mock-intrin | FileCheck %s

## VFMADDSUBPDr132m
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub132pd	2(%r15,%r12,2), %xmm10, %xmm8

## VFMADDSUBPDr132mY
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub132pd	2(%r15,%r12,2), %ymm10, %ymm8

## VFMADDSUBPDr132r
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub132pd	%xmm11, %xmm10, %xmm8

## VFMADDSUBPDr132rY
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub132pd	%ymm11, %ymm10, %ymm8

## VFMADDSUBPDr213m
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: [[RIP_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"RIP")
# CHECK-NEXT: [[V0:%.+]] = add i64 [[RIP_0]], 7
# CHECK-NEXT: call void @llvm.dc.setreg{{.*}} !"RIP")
# CHECK-NEXT: [[XMM10_0:%.+]] = call <4 x float> @llvm.dc.getreg.v4f32(metadata !"XMM10")
# CHECK-NEXT: [[V1:%.+]] = bitcast <4 x float> [[XMM10_0]] to i128
# CHECK-NEXT: [[V2:%.+]] = bitcast i128 [[V1]] to <2 x double>
# CHECK-NEXT: [[XMM8_0:%.+]] = call <4 x float> @llvm.dc.getreg.v4f32(metadata !"XMM8")
# CHECK-NEXT: [[V3:%.+]] = bitcast <4 x float> [[XMM8_0]] to i128
# CHECK-NEXT: [[V4:%.+]] = bitcast i128 [[V3]] to <2 x double>
# CHECK-NEXT: [[R15_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"R15")
# CHECK-NEXT: [[R12_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"R12")
# CHECK-NEXT: [[V5:%.+]] = mul i64 [[R12_0]], 2
# CHECK-NEXT: [[V6:%.+]] = add i64 [[V5]], 2
# CHECK-NEXT: [[V7:%.+]] = add i64 [[R15_0]], [[V6]]
# CHECK-NEXT: [[V8:%.+]] = inttoptr i64 [[V7]] to <2 x double>*
# CHECK-NEXT: [[V9:%.+]] = load <2 x double>, <2 x double>* [[V8]], align 1
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub213pd	2(%r15,%r12,2), %xmm10, %xmm8

## VFMADDSUBPDr213mY
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: [[RIP_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"RIP")
# CHECK-NEXT: [[V0:%.+]] = add i64 [[RIP_0]], 7
# CHECK-NEXT: call void @llvm.dc.setreg{{.*}} !"RIP")
# CHECK-NEXT: [[YMM10_0:%.+]] = call <8 x float> @llvm.dc.getreg.v8f32(metadata !"YMM10")
# CHECK-NEXT: [[V1:%.+]] = bitcast <8 x float> [[YMM10_0]] to i256
# CHECK-NEXT: [[V2:%.+]] = bitcast i256 [[V1]] to <4 x double>
# CHECK-NEXT: [[YMM8_0:%.+]] = call <8 x float> @llvm.dc.getreg.v8f32(metadata !"YMM8")
# CHECK-NEXT: [[V3:%.+]] = bitcast <8 x float> [[YMM8_0]] to i256
# CHECK-NEXT: [[V4:%.+]] = bitcast i256 [[V3]] to <4 x double>
# CHECK-NEXT: [[R15_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"R15")
# CHECK-NEXT: [[R12_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"R12")
# CHECK-NEXT: [[V5:%.+]] = mul i64 [[R12_0]], 2
# CHECK-NEXT: [[V6:%.+]] = add i64 [[V5]], 2
# CHECK-NEXT: [[V7:%.+]] = add i64 [[R15_0]], [[V6]]
# CHECK-NEXT: [[V8:%.+]] = inttoptr i64 [[V7]] to <4 x double>*
# CHECK-NEXT: [[V9:%.+]] = load <4 x double>, <4 x double>* [[V8]], align 1
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub213pd	2(%r15,%r12,2), %ymm10, %ymm8

## VFMADDSUBPDr213r
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: [[RIP_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"RIP")
# CHECK-NEXT: [[V0:%.+]] = add i64 [[RIP_0]], 5
# CHECK-NEXT: call void @llvm.dc.setreg{{.*}} !"RIP")
# CHECK-NEXT: [[XMM10_0:%.+]] = call <4 x float> @llvm.dc.getreg.v4f32(metadata !"XMM10")
# CHECK-NEXT: [[V1:%.+]] = bitcast <4 x float> [[XMM10_0]] to i128
# CHECK-NEXT: [[V2:%.+]] = bitcast i128 [[V1]] to <2 x double>
# CHECK-NEXT: [[XMM8_0:%.+]] = call <4 x float> @llvm.dc.getreg.v4f32(metadata !"XMM8")
# CHECK-NEXT: [[V3:%.+]] = bitcast <4 x float> [[XMM8_0]] to i128
# CHECK-NEXT: [[V4:%.+]] = bitcast i128 [[V3]] to <2 x double>
# CHECK-NEXT: [[XMM11_0:%.+]] = call <4 x float> @llvm.dc.getreg.v4f32(metadata !"XMM11")
# CHECK-NEXT: [[V5:%.+]] = bitcast <4 x float> [[XMM11_0]] to i128
# CHECK-NEXT: [[V6:%.+]] = bitcast i128 [[V5]] to <2 x double>
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub213pd	%xmm11, %xmm10, %xmm8

## VFMADDSUBPDr213rY
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: [[RIP_0:%.+]] = call i64 @llvm.dc.getreg.i64(metadata !"RIP")
# CHECK-NEXT: [[V0:%.+]] = add i64 [[RIP_0]], 5
# CHECK-NEXT: call void @llvm.dc.setreg{{.*}} !"RIP")
# CHECK-NEXT: [[YMM10_0:%.+]] = call <8 x float> @llvm.dc.getreg.v8f32(metadata !"YMM10")
# CHECK-NEXT: [[V1:%.+]] = bitcast <8 x float> [[YMM10_0]] to i256
# CHECK-NEXT: [[V2:%.+]] = bitcast i256 [[V1]] to <4 x double>
# CHECK-NEXT: [[YMM8_0:%.+]] = call <8 x float> @llvm.dc.getreg.v8f32(metadata !"YMM8")
# CHECK-NEXT: [[V3:%.+]] = bitcast <8 x float> [[YMM8_0]] to i256
# CHECK-NEXT: [[V4:%.+]] = bitcast i256 [[V3]] to <4 x double>
# CHECK-NEXT: [[YMM11_0:%.+]] = call <8 x float> @llvm.dc.getreg.v8f32(metadata !"YMM11")
# CHECK-NEXT: [[V5:%.+]] = bitcast <8 x float> [[YMM11_0]] to i256
# CHECK-NEXT: [[V6:%.+]] = bitcast i256 [[V5]] to <4 x double>
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub213pd	%ymm11, %ymm10, %ymm8

## VFMADDSUBPDr231m
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub231pd	2(%r15,%r12,2), %xmm10, %xmm8

## VFMADDSUBPDr231mY
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub231pd	2(%r15,%r12,2), %ymm10, %ymm8

## VFMADDSUBPDr231r
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub231pd	%xmm11, %xmm10, %xmm8

## VFMADDSUBPDr231rY
# CHECK-LABEL: call void @llvm.dc.startinst
# CHECK-NEXT: call void @llvm.trap()
# CHECK-NEXT: unreachable
vfmaddsub231pd	%ymm11, %ymm10, %ymm8

retq
