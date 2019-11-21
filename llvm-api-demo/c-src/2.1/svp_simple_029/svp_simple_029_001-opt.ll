; ModuleID = 'svp_simple_029_001-opt.bc'
source_filename = "./svp_simple_029_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_029_001_ptr_SetSelfCtrlFlag = common global void (i32, i8, i8)* null, align 8
@svp_simple_029_001_tm_blocks = common global [4096 x i8] zeroinitializer, align 16
@svp_simple_029_001_average_adjust_flag = common global i8 0, align 1
@svp_simple_029_001_ptr_SetTmData = common global void (i32, i8)* null, align 8
@svp_simple_029_001_ptr_GetTmData = common global i8 (i32)* null, align 8
@svp_simple_029_001_average_adjust_count = common global i8 0, align 1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_main() #0 !dbg !8 {
  br label %1, !dbg !11

1:                                                ; preds = %3, %0
  %.0.i = phi i32 [ 0, %0 ], [ %8, %3 ], !dbg !14
  %2 = icmp slt i32 %.0.i, 4096, !dbg !15
  br i1 %2, label %3, label %svp_simple_029_001_init.exit, !dbg !16

3:                                                ; preds = %1
  %4 = call i32 (...) @rand() #3, !dbg !17
  %5 = trunc i32 %4 to i8, !dbg !17
  %6 = sext i32 %.0.i to i64, !dbg !18
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %6, !dbg !18
  store volatile i8 %5, i8* %7, align 1, !dbg !19, !tbaa !20
  %8 = add nsw i32 %.0.i, 1, !dbg !23
  br label %1, !dbg !16, !llvm.loop !24

svp_simple_029_001_init.exit:                     ; preds = %1
  store volatile i8 -1, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !27, !tbaa !20
  call void (...) @init() #3, !dbg !28
  store void (i32, i8)* @svp_simple_029_001_SetTmData, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !29, !tbaa !32
  store i8 (i32)* @svp_simple_029_001_GetTmData, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !34, !tbaa !32
  store void (i32, i8, i8)* @svp_simple_029_001_SetSelfCtrlFlag, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !35, !tbaa !32
  br i1 true, label %9, label %11, !dbg !36

9:                                                ; preds = %svp_simple_029_001_init.exit
  %10 = load void (i32, i8, i8)*, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !37, !tbaa !32
  call void %10(i32 36, i8 zeroext -1, i8 zeroext 0), !dbg !37
  br label %11, !dbg !38

11:                                               ; preds = %9, %svp_simple_029_001_init.exit
  ret void, !dbg !39
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_init() #0 !dbg !12 {
  br label %1, !dbg !40

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ], !dbg !41
  %2 = icmp slt i32 %.0, 4096, !dbg !42
  br i1 %2, label %4, label %3, !dbg !25

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  %5 = call i32 (...) @rand(), !dbg !43
  %6 = trunc i32 %5 to i8, !dbg !43
  %7 = sext i32 %.0 to i64, !dbg !44
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %7, !dbg !44
  store volatile i8 %6, i8* %8, align 1, !dbg !45, !tbaa !20
  br label %9, !dbg !26

9:                                                ; preds = %4
  %10 = add nsw i32 %.0, 1, !dbg !46
  br label %1, !dbg !25, !llvm.loop !24

11:                                               ; preds = %3
  store volatile i8 -1, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !47, !tbaa !20
  call void (...) @init(), !dbg !48
  ret void, !dbg !49
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_TmOrgFuncMap() #0 !dbg !30 {
  store void (i32, i8)* @svp_simple_029_001_SetTmData, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !50, !tbaa !32
  store i8 (i32)* @svp_simple_029_001_GetTmData, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !51, !tbaa !32
  store void (i32, i8, i8)* @svp_simple_029_001_SetSelfCtrlFlag, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !52, !tbaa !32
  ret void, !dbg !53
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_SetTmData(i32, i8 zeroext) #0 !dbg !54 {
  %3 = zext i32 %0 to i64, !dbg !55
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %3, !dbg !55
  store volatile i8 %1, i8* %4, align 1, !dbg !56, !tbaa !20
  ret void, !dbg !57
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @svp_simple_029_001_GetTmData(i32) #0 !dbg !58 {
  %2 = zext i32 %0 to i64, !dbg !59
  %3 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %2, !dbg !59
  %4 = load volatile i8, i8* %3, align 1, !dbg !59, !tbaa !20
  ret i8 %4, !dbg !60
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_SetSelfCtrlFlag(i32, i8 zeroext, i8 zeroext) #0 !dbg !61 {
  %4 = zext i8 %1 to i32, !dbg !62
  %5 = icmp sgt i32 %4, 128, !dbg !63
  br i1 %5, label %6, label %7, !dbg !62

6:                                                ; preds = %3
  br label %8, !dbg !64

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %6
  %.0 = phi i8 [ 1, %6 ], [ 0, %7 ], !dbg !65
  %9 = zext i8 %2 to i32, !dbg !66
  %10 = zext i8 %.0 to i32, !dbg !67
  %11 = shl i32 %10, %9, !dbg !67
  %12 = trunc i32 %11 to i8, !dbg !67
  %13 = trunc i32 undef to i8, !dbg !68
  %14 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !69, !tbaa !32
  %15 = call zeroext i8 %14(i32 %0), !dbg !69
  %16 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !70, !tbaa !32
  %17 = add i32 %0, 1, !dbg !71
  %18 = call zeroext i8 %16(i32 %17), !dbg !70
  %19 = zext i8 %18 to i32, !dbg !70
  %20 = zext i8 %15 to i32, !dbg !72
  %21 = add nsw i32 %20, %19, !dbg !72
  %22 = trunc i32 %21 to i8, !dbg !72
  %23 = zext i8 %12 to i32, !dbg !73
  %24 = zext i8 %22 to i32, !dbg !74
  %25 = or i32 %24, %23, !dbg !74
  %26 = trunc i32 %25 to i8, !dbg !74
  %27 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !75, !tbaa !32
  call void %27(i32 %0, i8 zeroext %26), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_isr_1() #0 !dbg !77 {
  %1 = load volatile i8, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !78, !tbaa !20
  %2 = zext i8 %1 to i32, !dbg !78
  %3 = icmp eq i32 %2, 255, !dbg !79
  br i1 %3, label %4, label %9, !dbg !78

4:                                                ; preds = %0
  %5 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !80, !tbaa !20
  %6 = add i8 %5, 1, !dbg !80
  store volatile i8 %6, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !80, !tbaa !20
  %7 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !81, !tbaa !32
  %8 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !82, !tbaa !20
  call void %7(i32 36, i8 zeroext %8), !dbg !81
  br label %12, !dbg !83

9:                                                ; preds = %0
  store volatile i8 0, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !84, !tbaa !20
  %10 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !85, !tbaa !32
  %11 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !86, !tbaa !20
  call void %10(i32 36, i8 zeroext %11), !dbg !85
  br label %12

12:                                               ; preds = %9, %4
  ret void, !dbg !87
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_029_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_029")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_029_001_main", scope: !9, file: !9, line: 34, type: !10, scopeLine: 34, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_029_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_029")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 44, column: 8, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "svp_simple_029_001_init", scope: !9, file: !9, line: 43, type: !10, scopeLine: 43, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = distinct !DILocation(line: 36, column: 3, scope: !8)
!14 = !DILocation(line: 0, scope: !12, inlinedAt: !13)
!15 = !DILocation(line: 44, column: 21, scope: !12, inlinedAt: !13)
!16 = !DILocation(line: 44, column: 3, scope: !12, inlinedAt: !13)
!17 = !DILocation(line: 45, column: 39, scope: !12, inlinedAt: !13)
!18 = !DILocation(line: 45, column: 5, scope: !12, inlinedAt: !13)
!19 = !DILocation(line: 45, column: 37, scope: !12, inlinedAt: !13)
!20 = !{!21, !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 44, column: 30, scope: !12, inlinedAt: !13)
!24 = distinct !{!24, !25, !26}
!25 = !DILocation(line: 44, column: 3, scope: !12)
!26 = !DILocation(line: 46, column: 3, scope: !12)
!27 = !DILocation(line: 47, column: 42, scope: !12, inlinedAt: !13)
!28 = !DILocation(line: 49, column: 3, scope: !12, inlinedAt: !13)
!29 = !DILocation(line: 53, column: 36, scope: !30, inlinedAt: !31)
!30 = distinct !DISubprogram(name: "svp_simple_029_001_TmOrgFuncMap", scope: !9, file: !9, line: 52, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!31 = distinct !DILocation(line: 37, column: 3, scope: !8)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !21, i64 0}
!34 = !DILocation(line: 54, column: 36, scope: !30, inlinedAt: !31)
!35 = !DILocation(line: 55, column: 42, scope: !30, inlinedAt: !31)
!36 = !DILocation(line: 39, column: 7, scope: !8)
!37 = !DILocation(line: 40, column: 5, scope: !8)
!38 = !DILocation(line: 41, column: 3, scope: !8)
!39 = !DILocation(line: 42, column: 1, scope: !8)
!40 = !DILocation(line: 44, column: 8, scope: !12)
!41 = !DILocation(line: 0, scope: !12)
!42 = !DILocation(line: 44, column: 21, scope: !12)
!43 = !DILocation(line: 45, column: 39, scope: !12)
!44 = !DILocation(line: 45, column: 5, scope: !12)
!45 = !DILocation(line: 45, column: 37, scope: !12)
!46 = !DILocation(line: 44, column: 30, scope: !12)
!47 = !DILocation(line: 47, column: 42, scope: !12)
!48 = !DILocation(line: 49, column: 3, scope: !12)
!49 = !DILocation(line: 50, column: 1, scope: !12)
!50 = !DILocation(line: 53, column: 36, scope: !30)
!51 = !DILocation(line: 54, column: 36, scope: !30)
!52 = !DILocation(line: 55, column: 42, scope: !30)
!53 = !DILocation(line: 56, column: 1, scope: !30)
!54 = distinct !DISubprogram(name: "svp_simple_029_001_SetTmData", scope: !9, file: !9, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 83, column: 3, scope: !54)
!56 = !DILocation(line: 83, column: 41, scope: !54)
!57 = !DILocation(line: 84, column: 1, scope: !54)
!58 = distinct !DISubprogram(name: "svp_simple_029_001_GetTmData", scope: !9, file: !9, line: 79, type: !10, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!59 = !DILocation(line: 80, column: 10, scope: !58)
!60 = !DILocation(line: 80, column: 3, scope: !58)
!61 = distinct !DISubprogram(name: "svp_simple_029_001_SetSelfCtrlFlag", scope: !9, file: !9, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!62 = !DILocation(line: 63, column: 7, scope: !61)
!63 = !DILocation(line: 63, column: 17, scope: !61)
!64 = !DILocation(line: 65, column: 3, scope: !61)
!65 = !DILocation(line: 0, scope: !61)
!66 = !DILocation(line: 69, column: 12, scope: !61)
!67 = !DILocation(line: 69, column: 8, scope: !61)
!68 = !DILocation(line: 71, column: 8, scope: !61)
!69 = !DILocation(line: 73, column: 14, scope: !61)
!70 = !DILocation(line: 74, column: 15, scope: !61)
!71 = !DILocation(line: 74, column: 56, scope: !61)
!72 = !DILocation(line: 74, column: 12, scope: !61)
!73 = !DILocation(line: 75, column: 15, scope: !61)
!74 = !DILocation(line: 75, column: 12, scope: !61)
!75 = !DILocation(line: 77, column: 3, scope: !61)
!76 = !DILocation(line: 78, column: 1, scope: !61)
!77 = distinct !DISubprogram(name: "svp_simple_029_001_isr_1", scope: !9, file: !9, line: 86, type: !10, scopeLine: 86, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!78 = !DILocation(line: 87, column: 7, scope: !77)
!79 = !DILocation(line: 87, column: 46, scope: !77)
!80 = !DILocation(line: 88, column: 44, scope: !77)
!81 = !DILocation(line: 89, column: 5, scope: !77)
!82 = !DILocation(line: 90, column: 13, scope: !77)
!83 = !DILocation(line: 91, column: 3, scope: !77)
!84 = !DILocation(line: 92, column: 45, scope: !77)
!85 = !DILocation(line: 93, column: 5, scope: !77)
!86 = !DILocation(line: 93, column: 42, scope: !77)
!87 = !DILocation(line: 95, column: 1, scope: !77)
