; ModuleID = 'svp_simple_008_001.c'
source_filename = "svp_simple_008_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_008_001_global_array = common global [100 x i32] zeroinitializer, align 16
@svp_simple_008_001_global_var = common local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #3, !dbg !10
  store volatile i32 9, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 3), align 4, !dbg !11, !tbaa !12
  store volatile i32 1, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !16, !tbaa !12
  %1 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !17, !tbaa !12
  %2 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 4), align 16, !dbg !20, !tbaa !12
  ret void, !dbg !21
}

declare void @init(...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_008_001_func_1() local_unnamed_addr #2 !dbg !18 {
  %1 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !22, !tbaa !12
  %2 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 4), align 16, !dbg !23, !tbaa !12
  ret void, !dbg !24
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_008_001_isr_1() local_unnamed_addr #2 !dbg !25 {
  br label %2, !dbg !26

; <label>:1:                                      ; preds = %2
  ret void, !dbg !27

; <label>:2:                                      ; preds = %2, %0
  %3 = phi i64 [ 0, %0 ], [ %13, %2 ]
  %4 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %3, !dbg !28
  store volatile i32 5, i32* %4, align 4, !dbg !29, !tbaa !12
  %5 = add nuw nsw i64 %3, 1, !dbg !30
  %6 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %5, !dbg !28
  store volatile i32 5, i32* %6, align 4, !dbg !29, !tbaa !12
  %7 = add nuw nsw i64 %3, 2, !dbg !30
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %7, !dbg !28
  store volatile i32 5, i32* %8, align 4, !dbg !29, !tbaa !12
  %9 = add nuw nsw i64 %3, 3, !dbg !30
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %9, !dbg !28
  store volatile i32 5, i32* %10, align 4, !dbg !29, !tbaa !12
  %11 = add nuw nsw i64 %3, 4, !dbg !30
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %11, !dbg !28
  store volatile i32 5, i32* %12, align 4, !dbg !29, !tbaa !12
  %13 = add nuw nsw i64 %3, 5, !dbg !30
  %14 = icmp eq i64 %13, 100, !dbg !31
  br i1 %14, label %1, label %2, !dbg !26, !llvm.loop !32
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_008_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_008")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_008_001_main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !8)
!11 = !DILocation(line: 33, column: 42, scope: !8)
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 35, column: 39, scope: !8)
!17 = !DILocation(line: 46, column: 13, scope: !18, inlinedAt: !19)
!18 = distinct !DISubprogram(name: "svp_simple_008_001_func_1", scope: !1, file: !1, line: 40, type: !9, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!19 = distinct !DILocation(line: 37, column: 3, scope: !8)
!20 = !DILocation(line: 48, column: 13, scope: !18, inlinedAt: !19)
!21 = !DILocation(line: 38, column: 1, scope: !8)
!22 = !DILocation(line: 46, column: 13, scope: !18)
!23 = !DILocation(line: 48, column: 13, scope: !18)
!24 = !DILocation(line: 49, column: 1, scope: !18)
!25 = distinct !DISubprogram(name: "svp_simple_008_001_isr_1", scope: !1, file: !1, line: 51, type: !9, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 52, column: 3, scope: !25)
!27 = !DILocation(line: 53, column: 1, scope: !25)
!28 = !DILocation(line: 52, column: 33, scope: !25)
!29 = !DILocation(line: 52, column: 68, scope: !25)
!30 = !DILocation(line: 52, column: 29, scope: !25)
!31 = !DILocation(line: 52, column: 21, scope: !25)
!32 = distinct !{!32, !26, !33}
!33 = !DILocation(line: 52, column: 70, scope: !25)
