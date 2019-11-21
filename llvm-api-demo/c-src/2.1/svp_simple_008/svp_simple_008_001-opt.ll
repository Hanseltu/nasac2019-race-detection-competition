; ModuleID = 'svp_simple_008_001-opt.bc'
source_filename = "./svp_simple_008_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_008_001_global_array = common global [100 x i32] zeroinitializer, align 16
@svp_simple_008_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  store volatile i32 9, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 3), align 4, !dbg !12, !tbaa !13
  store volatile i32 1, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !17, !tbaa !13
  %1 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 4, !dbg !18, !tbaa !13
  %2 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 4), align 4, !dbg !21, !tbaa !13
  ret void, !dbg !22
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_func_1() #0 !dbg !19 {
  %1 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 4, !dbg !23, !tbaa !13
  %2 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 4), align 4, !dbg !24, !tbaa !13
  ret void, !dbg !25
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_isr_1() #0 !dbg !26 {
  br label %1, !dbg !27

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ], !dbg !28
  %2 = icmp slt i32 %.0, 100, !dbg !29
  br i1 %2, label %4, label %3, !dbg !30

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  %5 = sext i32 %.0 to i64, !dbg !31
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %5, !dbg !31
  store volatile i32 5, i32* %6, align 4, !dbg !32, !tbaa !13
  br label %7, !dbg !31

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, 1, !dbg !33
  br label %1, !dbg !30, !llvm.loop !34

9:                                                ; preds = %3
  ret void, !dbg !36
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_008_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_008")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_008_001_main", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_008_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_008")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 33, column: 42, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 35, column: 39, scope: !8)
!18 = !DILocation(line: 46, column: 13, scope: !19, inlinedAt: !20)
!19 = distinct !DISubprogram(name: "svp_simple_008_001_func_1", scope: !9, file: !9, line: 40, type: !10, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!20 = distinct !DILocation(line: 37, column: 3, scope: !8)
!21 = !DILocation(line: 48, column: 13, scope: !19, inlinedAt: !20)
!22 = !DILocation(line: 38, column: 1, scope: !8)
!23 = !DILocation(line: 46, column: 13, scope: !19)
!24 = !DILocation(line: 48, column: 13, scope: !19)
!25 = !DILocation(line: 49, column: 1, scope: !19)
!26 = distinct !DISubprogram(name: "svp_simple_008_001_isr_1", scope: !9, file: !9, line: 51, type: !10, scopeLine: 51, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!27 = !DILocation(line: 52, column: 8, scope: !26)
!28 = !DILocation(line: 0, scope: !26)
!29 = !DILocation(line: 52, column: 21, scope: !26)
!30 = !DILocation(line: 52, column: 3, scope: !26)
!31 = !DILocation(line: 52, column: 33, scope: !26)
!32 = !DILocation(line: 52, column: 68, scope: !26)
!33 = !DILocation(line: 52, column: 29, scope: !26)
!34 = distinct !{!34, !30, !35}
!35 = !DILocation(line: 52, column: 70, scope: !26)
!36 = !DILocation(line: 53, column: 1, scope: !26)
