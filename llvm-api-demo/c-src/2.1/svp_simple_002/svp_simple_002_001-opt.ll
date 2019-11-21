; ModuleID = 'svp_simple_002_001-opt.bc'
source_filename = "./svp_simple_002_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_002_001_global_array = common global [10000 x i32] zeroinitializer, align 16
@casee2_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_002_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void (...) @idlerun(), !dbg !12
  ret void, !dbg !13
}

declare void @init(...) #1

declare void @idlerun(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_002_001_isr_1() #0 !dbg !14 {
  br label %1, !dbg !15

1:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %12, %11 ], !dbg !16
  %2 = icmp slt i32 %.0, 10000, !dbg !17
  br i1 %2, label %4, label %3, !dbg !18

3:                                                ; preds = %1
  br label %13

4:                                                ; preds = %1
  %5 = icmp eq i32 %.0, 9999, !dbg !19
  br i1 %5, label %6, label %7, !dbg !20

6:                                                ; preds = %4
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !21, !tbaa !22
  br label %7, !dbg !26

7:                                                ; preds = %6, %4
  %8 = icmp eq i32 %.0, 10001, !dbg !27
  br i1 %8, label %9, label %10, !dbg !28

9:                                                ; preds = %7
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !29, !tbaa !22
  br label %10, !dbg !30

10:                                               ; preds = %9, %7
  br label %11, !dbg !31

11:                                               ; preds = %10
  %12 = add nsw i32 %.0, 1, !dbg !32
  br label %1, !dbg !18, !llvm.loop !33

13:                                               ; preds = %3
  %14 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !34, !tbaa !22
  %15 = sub nsw i32 %14, 10, !dbg !35
  %16 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 0), align 16, !dbg !36, !tbaa !22
  %17 = add nsw i32 %16, 10, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_002_001_isr_2() #0 !dbg !39 {
  call void (...) @idlerun(), !dbg !40
  store volatile i32 999, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !41, !tbaa !22
  ret void, !dbg !42
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_002_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_002")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_002_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_002_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_002")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 28, column: 1, scope: !8)
!14 = distinct !DISubprogram(name: "svp_simple_002_001_isr_1", scope: !9, file: !9, line: 30, type: !10, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 32, column: 8, scope: !14)
!16 = !DILocation(line: 0, scope: !14)
!17 = !DILocation(line: 32, column: 21, scope: !14)
!18 = !DILocation(line: 32, column: 3, scope: !14)
!19 = !DILocation(line: 33, column: 11, scope: !14)
!20 = !DILocation(line: 33, column: 9, scope: !14)
!21 = !DILocation(line: 33, column: 64, scope: !14)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 33, column: 23, scope: !14)
!27 = !DILocation(line: 34, column: 11, scope: !14)
!28 = !DILocation(line: 34, column: 9, scope: !14)
!29 = !DILocation(line: 35, column: 48, scope: !14)
!30 = !DILocation(line: 35, column: 7, scope: !14)
!31 = !DILocation(line: 36, column: 3, scope: !14)
!32 = !DILocation(line: 32, column: 36, scope: !14)
!33 = distinct !{!33, !18, !31}
!34 = !DILocation(line: 37, column: 13, scope: !14)
!35 = !DILocation(line: 37, column: 54, scope: !14)
!36 = !DILocation(line: 39, column: 12, scope: !14)
!37 = !DILocation(line: 39, column: 47, scope: !14)
!38 = !DILocation(line: 40, column: 1, scope: !14)
!39 = distinct !DISubprogram(name: "svp_simple_002_001_isr_2", scope: !9, file: !9, line: 42, type: !10, scopeLine: 42, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!40 = !DILocation(line: 43, column: 3, scope: !39)
!41 = !DILocation(line: 44, column: 44, scope: !39)
!42 = !DILocation(line: 46, column: 1, scope: !39)
