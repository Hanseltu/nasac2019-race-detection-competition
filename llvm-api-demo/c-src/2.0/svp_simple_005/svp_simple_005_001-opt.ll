; ModuleID = 'svp_simple_005_001-opt.bc'
source_filename = "./svp_simple_005_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_005_001_global_condition = global i32 0, align 4
@svp_simple_005_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_005_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  br label %1, !dbg !12

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ], !dbg !13
  %2 = icmp slt i32 %.0, 10000, !dbg !14
  br i1 %2, label %4, label %3, !dbg !15

3:                                                ; preds = %1
  br label %19

4:                                                ; preds = %1
  br label %5, !dbg !16

5:                                                ; preds = %14, %4
  %.01 = phi i32 [ 0, %4 ], [ %15, %14 ], !dbg !13
  %6 = icmp slt i32 %.01, 10000, !dbg !17
  br i1 %6, label %8, label %7, !dbg !18

7:                                                ; preds = %5
  br label %16

8:                                                ; preds = %5
  %9 = icmp eq i32 %.0, 9999, !dbg !19
  br i1 %9, label %10, label %13, !dbg !20

10:                                               ; preds = %8
  %11 = icmp eq i32 %.01, 1000, !dbg !21
  br i1 %11, label %12, label %13, !dbg !22

12:                                               ; preds = %10
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !23, !tbaa !24
  br label %13, !dbg !28

13:                                               ; preds = %12, %10, %8
  br label %14, !dbg !29

14:                                               ; preds = %13
  %15 = add nsw i32 %.01, 1, !dbg !30
  br label %5, !dbg !18, !llvm.loop !31

16:                                               ; preds = %7
  br label %17, !dbg !32

17:                                               ; preds = %16
  %18 = add nsw i32 %.0, 1, !dbg !33
  br label %1, !dbg !15, !llvm.loop !34

19:                                               ; preds = %3
  %20 = load volatile i32, i32* @svp_simple_005_001_global_condition, align 4, !dbg !35, !tbaa !24
  %21 = icmp eq i32 %20, 1, !dbg !36
  br i1 %21, label %22, label %23, !dbg !35

22:                                               ; preds = %19
  store volatile i32 9, i32* @svp_simple_005_001_global_var, align 4, !dbg !37, !tbaa !24
  br label %23, !dbg !38

23:                                               ; preds = %22, %19
  store volatile i32 5, i32* @svp_simple_005_001_global_var, align 4, !dbg !39, !tbaa !24
  ret void, !dbg !40
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_005_001_isr_1() #0 !dbg !41 {
  call void (...) @idlerun(), !dbg !42
  %1 = load volatile i32, i32* @svp_simple_005_001_global_var, align 4, !dbg !43, !tbaa !24
  ret void, !dbg !44
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_005_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_005")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_005_001_main", scope: !9, file: !9, line: 27, type: !10, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_005_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_005")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 28, column: 3, scope: !8)
!12 = !DILocation(line: 29, column: 8, scope: !8)
!13 = !DILocation(line: 0, scope: !8)
!14 = !DILocation(line: 29, column: 21, scope: !8)
!15 = !DILocation(line: 29, column: 3, scope: !8)
!16 = !DILocation(line: 30, column: 10, scope: !8)
!17 = !DILocation(line: 30, column: 23, scope: !8)
!18 = !DILocation(line: 30, column: 5, scope: !8)
!19 = !DILocation(line: 31, column: 14, scope: !8)
!20 = !DILocation(line: 31, column: 26, scope: !8)
!21 = !DILocation(line: 31, column: 32, scope: !8)
!22 = !DILocation(line: 31, column: 11, scope: !8)
!23 = !DILocation(line: 32, column: 39, scope: !8)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 32, column: 9, scope: !8)
!29 = !DILocation(line: 33, column: 5, scope: !8)
!30 = !DILocation(line: 30, column: 38, scope: !8)
!31 = distinct !{!31, !18, !29}
!32 = !DILocation(line: 34, column: 3, scope: !8)
!33 = !DILocation(line: 29, column: 36, scope: !8)
!34 = distinct !{!34, !15, !32}
!35 = !DILocation(line: 36, column: 7, scope: !8)
!36 = !DILocation(line: 36, column: 43, scope: !8)
!37 = !DILocation(line: 38, column: 35, scope: !8)
!38 = !DILocation(line: 38, column: 5, scope: !8)
!39 = !DILocation(line: 40, column: 33, scope: !8)
!40 = !DILocation(line: 41, column: 1, scope: !8)
!41 = distinct !DISubprogram(name: "svp_simple_005_001_isr_1", scope: !9, file: !9, line: 43, type: !10, scopeLine: 43, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!42 = !DILocation(line: 44, column: 3, scope: !41)
!43 = !DILocation(line: 46, column: 12, scope: !41)
!44 = !DILocation(line: 47, column: 1, scope: !41)
