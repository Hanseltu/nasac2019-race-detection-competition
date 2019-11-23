; ModuleID = 'svp_simple_029_001-opt.bc'
source_filename = "./svp_simple_029_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_029_001_ptr_SetSelfCtrlFlag = common dso_local global void (i32, i8, i8)* null, align 8
@svp_simple_029_001_tm_blocks = common dso_local global [4096 x i8] zeroinitializer, align 16
@svp_simple_029_001_average_adjust_flag = common dso_local global i8 0, align 1
@svp_simple_029_001_ptr_SetTmData = common dso_local global void (i32, i8)* null, align 8
@svp_simple_029_001_ptr_GetTmData = common dso_local global i8 (i32)* null, align 8
@svp_simple_029_001_average_adjust_count = common dso_local global i8 0, align 1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_029_001_main() #0 !dbg !7 {
  br label %1, !dbg !10

1:                                                ; preds = %3, %0
  %.0.i = phi i32 [ 0, %0 ], [ %8, %3 ], !dbg !13
  %2 = icmp ult i32 %.0.i, 4096, !dbg !14
  br i1 %2, label %3, label %svp_simple_029_001_init.exit, !dbg !15

3:                                                ; preds = %1
  %4 = call i32 (...) @rand() #3, !dbg !16
  %5 = trunc i32 %4 to i8, !dbg !16
  %6 = zext i32 %.0.i to i64, !dbg !17
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %6, !dbg !17
  store volatile i8 %5, i8* %7, align 1, !dbg !18, !tbaa !19
  %8 = add nuw nsw i32 %.0.i, 1, !dbg !22
  br label %1, !dbg !15, !llvm.loop !23

svp_simple_029_001_init.exit:                     ; preds = %1
  store volatile i8 -1, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !26, !tbaa !19
  call void (...) @init() #3, !dbg !27
  store void (i32, i8)* @svp_simple_029_001_SetTmData, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !28, !tbaa !31
  store i8 (i32)* @svp_simple_029_001_GetTmData, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !33, !tbaa !31
  store void (i32, i8, i8)* @svp_simple_029_001_SetSelfCtrlFlag, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !34, !tbaa !31
  br i1 true, label %9, label %11, !dbg !35

9:                                                ; preds = %svp_simple_029_001_init.exit
  %10 = load void (i32, i8, i8)*, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !36, !tbaa !31
  call void %10(i32 36, i8 zeroext -1, i8 zeroext 0) #3, !dbg !36
  br label %11, !dbg !37

11:                                               ; preds = %9, %svp_simple_029_001_init.exit
  ret void, !dbg !38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_029_001_init() #0 !dbg !11 {
  br label %1, !dbg !39

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %3 ], !dbg !40
  %2 = icmp ult i32 %.0, 4096, !dbg !41
  br i1 %2, label %3, label %9, !dbg !24

3:                                                ; preds = %1
  %4 = call i32 (...) @rand() #3, !dbg !42
  %5 = trunc i32 %4 to i8, !dbg !42
  %6 = zext i32 %.0 to i64, !dbg !43
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %6, !dbg !43
  store volatile i8 %5, i8* %7, align 1, !dbg !44, !tbaa !19
  %8 = add nuw nsw i32 %.0, 1, !dbg !45
  br label %1, !dbg !24, !llvm.loop !23

9:                                                ; preds = %1
  store volatile i8 -1, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !46, !tbaa !19
  call void (...) @init() #3, !dbg !47
  ret void, !dbg !48
}

declare dso_local i32 @rand(...) #2

declare dso_local void @init(...) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_029_001_TmOrgFuncMap() #0 !dbg !29 {
  store void (i32, i8)* @svp_simple_029_001_SetTmData, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !49, !tbaa !31
  store i8 (i32)* @svp_simple_029_001_GetTmData, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !50, !tbaa !31
  store void (i32, i8, i8)* @svp_simple_029_001_SetSelfCtrlFlag, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !51, !tbaa !31
  ret void, !dbg !52
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_029_001_SetTmData(i32, i8 zeroext) #0 !dbg !53 {
  %3 = zext i32 %0 to i64, !dbg !54
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %3, !dbg !54
  store volatile i8 %1, i8* %4, align 1, !dbg !55, !tbaa !19
  ret void, !dbg !56
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @svp_simple_029_001_GetTmData(i32) #0 !dbg !57 {
  %2 = zext i32 %0 to i64, !dbg !58
  %3 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %2, !dbg !58
  %4 = load volatile i8, i8* %3, align 1, !dbg !58, !tbaa !19
  ret i8 %4, !dbg !59
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_029_001_SetSelfCtrlFlag(i32, i8 zeroext, i8 zeroext) #0 !dbg !60 {
  %4 = icmp ugt i8 %1, -128, !dbg !61
  %5 = zext i8 %2 to i32, !dbg !62
  %6 = zext i1 %4 to i32, !dbg !63
  %7 = shl i32 %6, %5, !dbg !63
  %8 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !64, !tbaa !31
  %9 = call zeroext i8 %8(i32 %0) #3, !dbg !64
  %10 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !65, !tbaa !31
  %11 = add i32 %0, 1, !dbg !66
  %12 = call zeroext i8 %10(i32 %11) #3, !dbg !65
  %13 = add i8 %12, %9, !dbg !67
  %14 = trunc i32 %7 to i8, !dbg !68
  %15 = or i8 %13, %14, !dbg !68
  %16 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !69, !tbaa !31
  call void %16(i32 %0, i8 zeroext %15) #3, !dbg !69
  ret void, !dbg !70
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_029_001_isr_1() #0 !dbg !71 {
  %1 = load volatile i8, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !72, !tbaa !19
  %2 = icmp eq i8 %1, -1, !dbg !73
  br i1 %2, label %3, label %8, !dbg !72

3:                                                ; preds = %0
  %4 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !74, !tbaa !19
  %5 = add i8 %4, 1, !dbg !74
  store volatile i8 %5, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !74, !tbaa !19
  %6 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !75, !tbaa !31
  %7 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !76, !tbaa !19
  call void %6(i32 36, i8 zeroext %7) #3, !dbg !75
  br label %11, !dbg !77

8:                                                ; preds = %0
  store volatile i8 0, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !78, !tbaa !19
  %9 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !79, !tbaa !31
  %10 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !80, !tbaa !19
  call void %9(i32 36, i8 zeroext %10) #3, !dbg !79
  br label %11

11:                                               ; preds = %8, %3
  ret void, !dbg !81
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_029_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_029")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_029_001_main", scope: !8, file: !8, line: 34, type: !9, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_029_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_029")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 44, column: 8, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "svp_simple_029_001_init", scope: !8, file: !8, line: 43, type: !9, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 36, column: 3, scope: !7)
!13 = !DILocation(line: 0, scope: !11, inlinedAt: !12)
!14 = !DILocation(line: 44, column: 21, scope: !11, inlinedAt: !12)
!15 = !DILocation(line: 44, column: 3, scope: !11, inlinedAt: !12)
!16 = !DILocation(line: 45, column: 39, scope: !11, inlinedAt: !12)
!17 = !DILocation(line: 45, column: 5, scope: !11, inlinedAt: !12)
!18 = !DILocation(line: 45, column: 37, scope: !11, inlinedAt: !12)
!19 = !{!20, !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 44, column: 30, scope: !11, inlinedAt: !12)
!23 = distinct !{!23, !24, !25}
!24 = !DILocation(line: 44, column: 3, scope: !11)
!25 = !DILocation(line: 46, column: 3, scope: !11)
!26 = !DILocation(line: 47, column: 42, scope: !11, inlinedAt: !12)
!27 = !DILocation(line: 49, column: 3, scope: !11, inlinedAt: !12)
!28 = !DILocation(line: 53, column: 36, scope: !29, inlinedAt: !30)
!29 = distinct !DISubprogram(name: "svp_simple_029_001_TmOrgFuncMap", scope: !8, file: !8, line: 52, type: !9, scopeLine: 52, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!30 = distinct !DILocation(line: 37, column: 3, scope: !7)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !20, i64 0}
!33 = !DILocation(line: 54, column: 36, scope: !29, inlinedAt: !30)
!34 = !DILocation(line: 55, column: 42, scope: !29, inlinedAt: !30)
!35 = !DILocation(line: 39, column: 7, scope: !7)
!36 = !DILocation(line: 40, column: 5, scope: !7)
!37 = !DILocation(line: 41, column: 3, scope: !7)
!38 = !DILocation(line: 42, column: 1, scope: !7)
!39 = !DILocation(line: 44, column: 8, scope: !11)
!40 = !DILocation(line: 0, scope: !11)
!41 = !DILocation(line: 44, column: 21, scope: !11)
!42 = !DILocation(line: 45, column: 39, scope: !11)
!43 = !DILocation(line: 45, column: 5, scope: !11)
!44 = !DILocation(line: 45, column: 37, scope: !11)
!45 = !DILocation(line: 44, column: 30, scope: !11)
!46 = !DILocation(line: 47, column: 42, scope: !11)
!47 = !DILocation(line: 49, column: 3, scope: !11)
!48 = !DILocation(line: 50, column: 1, scope: !11)
!49 = !DILocation(line: 53, column: 36, scope: !29)
!50 = !DILocation(line: 54, column: 36, scope: !29)
!51 = !DILocation(line: 55, column: 42, scope: !29)
!52 = !DILocation(line: 56, column: 1, scope: !29)
!53 = distinct !DISubprogram(name: "svp_simple_029_001_SetTmData", scope: !8, file: !8, line: 82, type: !9, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!54 = !DILocation(line: 83, column: 3, scope: !53)
!55 = !DILocation(line: 83, column: 41, scope: !53)
!56 = !DILocation(line: 84, column: 1, scope: !53)
!57 = distinct !DISubprogram(name: "svp_simple_029_001_GetTmData", scope: !8, file: !8, line: 79, type: !9, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!58 = !DILocation(line: 80, column: 10, scope: !57)
!59 = !DILocation(line: 80, column: 3, scope: !57)
!60 = distinct !DISubprogram(name: "svp_simple_029_001_SetSelfCtrlFlag", scope: !8, file: !8, line: 57, type: !9, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!61 = !DILocation(line: 63, column: 17, scope: !60)
!62 = !DILocation(line: 69, column: 12, scope: !60)
!63 = !DILocation(line: 69, column: 8, scope: !60)
!64 = !DILocation(line: 73, column: 14, scope: !60)
!65 = !DILocation(line: 74, column: 15, scope: !60)
!66 = !DILocation(line: 74, column: 56, scope: !60)
!67 = !DILocation(line: 74, column: 12, scope: !60)
!68 = !DILocation(line: 75, column: 12, scope: !60)
!69 = !DILocation(line: 77, column: 3, scope: !60)
!70 = !DILocation(line: 78, column: 1, scope: !60)
!71 = distinct !DISubprogram(name: "svp_simple_029_001_isr_1", scope: !8, file: !8, line: 86, type: !9, scopeLine: 86, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 87, column: 7, scope: !71)
!73 = !DILocation(line: 87, column: 46, scope: !71)
!74 = !DILocation(line: 88, column: 44, scope: !71)
!75 = !DILocation(line: 89, column: 5, scope: !71)
!76 = !DILocation(line: 90, column: 13, scope: !71)
!77 = !DILocation(line: 91, column: 3, scope: !71)
!78 = !DILocation(line: 92, column: 45, scope: !71)
!79 = !DILocation(line: 93, column: 5, scope: !71)
!80 = !DILocation(line: 93, column: 42, scope: !71)
!81 = !DILocation(line: 95, column: 1, scope: !71)
