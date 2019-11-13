; ModuleID = 'svp_simple_005_001.c'
source_filename = "svp_simple_005_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_005_001_global_condition = global i32 0, align 4
@svp_simple_005_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_005_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #2, !dbg !10
  br label %1, !dbg !11

; <label>:1:                                      ; preds = %10, %0
  %2 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %3 = icmp eq i32 %2, 9999
  br i1 %3, label %4, label %10, !dbg !12

; <label>:4:                                      ; preds = %1, %19
  %5 = phi i32 [ %20, %19 ], [ 0, %1 ]
  switch i32 %5, label %19 [
    i32 1000, label %6
    i32 999, label %15
    i32 998, label %16
    i32 997, label %17
    i32 996, label %18
  ], !dbg !13

; <label>:6:                                      ; preds = %4
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !14, !tbaa !15
  br label %19, !dbg !13

; <label>:7:                                      ; preds = %10
  %8 = load volatile i32, i32* @svp_simple_005_001_global_condition, align 4, !dbg !19, !tbaa !15
  %9 = icmp eq i32 %8, 1, !dbg !20
  br i1 %9, label %13, label %14, !dbg !19

; <label>:10:                                     ; preds = %19, %1
  %11 = add nuw nsw i32 %2, 1, !dbg !21
  %12 = icmp eq i32 %11, 10000, !dbg !22
  br i1 %12, label %7, label %1, !dbg !11, !llvm.loop !23

; <label>:13:                                     ; preds = %7
  store volatile i32 9, i32* @svp_simple_005_001_global_var, align 4, !dbg !25, !tbaa !15
  br label %14, !dbg !26

; <label>:14:                                     ; preds = %13, %7
  store volatile i32 5, i32* @svp_simple_005_001_global_var, align 4, !dbg !27, !tbaa !15
  ret void, !dbg !28

; <label>:15:                                     ; preds = %4
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !14, !tbaa !15
  br label %19, !dbg !13

; <label>:16:                                     ; preds = %4
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !14, !tbaa !15
  br label %19, !dbg !13

; <label>:17:                                     ; preds = %4
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !14, !tbaa !15
  br label %19, !dbg !13

; <label>:18:                                     ; preds = %4
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !14, !tbaa !15
  br label %19, !dbg !29

; <label>:19:                                     ; preds = %17, %16, %15, %6, %4, %18
  %20 = add nuw nsw i32 %5, 5, !dbg !30
  %21 = icmp eq i32 %20, 10000, !dbg !31
  br i1 %21, label %10, label %4, !dbg !12, !llvm.loop !32
}

declare void @init(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_005_001_isr_1() local_unnamed_addr #0 !dbg !34 {
  tail call void (...) @idlerun() #2, !dbg !35
  %1 = load volatile i32, i32* @svp_simple_005_001_global_var, align 4, !dbg !36, !tbaa !15
  ret void, !dbg !37
}

declare void @idlerun(...) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_005_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_005")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_005_001_main", scope: !1, file: !1, line: 27, type: !9, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 3, scope: !8)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 5, scope: !8)
!13 = !DILocation(line: 31, column: 26, scope: !8)
!14 = !DILocation(line: 32, column: 39, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 36, column: 7, scope: !8)
!20 = !DILocation(line: 36, column: 43, scope: !8)
!21 = !DILocation(line: 29, column: 36, scope: !8)
!22 = !DILocation(line: 29, column: 21, scope: !8)
!23 = distinct !{!23, !11, !24}
!24 = !DILocation(line: 34, column: 3, scope: !8)
!25 = !DILocation(line: 38, column: 35, scope: !8)
!26 = !DILocation(line: 38, column: 5, scope: !8)
!27 = !DILocation(line: 40, column: 33, scope: !8)
!28 = !DILocation(line: 41, column: 1, scope: !8)
!29 = !DILocation(line: 32, column: 9, scope: !8)
!30 = !DILocation(line: 30, column: 38, scope: !8)
!31 = !DILocation(line: 30, column: 23, scope: !8)
!32 = distinct !{!32, !12, !33}
!33 = !DILocation(line: 33, column: 5, scope: !8)
!34 = distinct !DISubprogram(name: "svp_simple_005_001_isr_1", scope: !1, file: !1, line: 43, type: !9, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 44, column: 3, scope: !34)
!36 = !DILocation(line: 46, column: 12, scope: !34)
!37 = !DILocation(line: 47, column: 1, scope: !34)
