; ModuleID = 'svp_simple_007_001.c'
source_filename = "svp_simple_007_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_007_001_global_var = common global i32 0, align 4
@svp_simple_007_001_global_array = common global [5 x i32] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_007_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #2, !dbg !10
  store volatile i32 1, i32* @svp_simple_007_001_global_var, align 4, !dbg !11, !tbaa !12
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !16, !tbaa !12
  %2 = sext i32 %1 to i64, !dbg !17
  %3 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %2, !dbg !17
  store volatile i32 1, i32* %3, align 4, !dbg !18, !tbaa !12
  %4 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !19, !tbaa !12
  %5 = sext i32 %4 to i64, !dbg !20
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %5, !dbg !20
  %7 = load volatile i32, i32* %6, align 4, !dbg !20, !tbaa !12
  %8 = tail call i32 (...) @rand() #2, !dbg !21
  %9 = icmp eq i32 %8, 2, !dbg !22
  %10 = sext i32 %8 to i64, !dbg !23
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %10, !dbg !23
  %12 = select i1 %9, i32 2, i32 9, !dbg !24
  store volatile i32 %12, i32* %11, align 4, !dbg !23, !tbaa !12
  %13 = load volatile i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !25, !tbaa !12
  ret void, !dbg !26
}

declare void @init(...) local_unnamed_addr #1

declare i32 @rand(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_007_001_isr_1() local_unnamed_addr #0 !dbg !27 {
  tail call void (...) @idlerun() #2, !dbg !28
  store volatile i32 9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !29, !tbaa !12
  store volatile i32 3, i32* @svp_simple_007_001_global_var, align 4, !dbg !30, !tbaa !12
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !31, !tbaa !12
  %2 = sext i32 %1 to i64, !dbg !32
  %3 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %2, !dbg !32
  store volatile i32 9, i32* %3, align 4, !dbg !33, !tbaa !12
  ret void, !dbg !34
}

declare void @idlerun(...) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_007_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_007")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_007_001_main", scope: !1, file: !1, line: 26, type: !9, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 27, column: 3, scope: !8)
!11 = !DILocation(line: 30, column: 33, scope: !8)
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 32, column: 35, scope: !8)
!17 = !DILocation(line: 32, column: 3, scope: !8)
!18 = !DILocation(line: 32, column: 66, scope: !8)
!19 = !DILocation(line: 34, column: 45, scope: !8)
!20 = !DILocation(line: 34, column: 13, scope: !8)
!21 = !DILocation(line: 36, column: 11, scope: !8)
!22 = !DILocation(line: 37, column: 9, scope: !8)
!23 = !DILocation(line: 0, scope: !8)
!24 = !DILocation(line: 37, column: 7, scope: !8)
!25 = !DILocation(line: 42, column: 13, scope: !8)
!26 = !DILocation(line: 43, column: 1, scope: !8)
!27 = distinct !DISubprogram(name: "svp_simple_007_001_isr_1", scope: !1, file: !1, line: 45, type: !9, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!28 = !DILocation(line: 46, column: 3, scope: !27)
!29 = !DILocation(line: 47, column: 38, scope: !27)
!30 = !DILocation(line: 49, column: 33, scope: !27)
!31 = !DILocation(line: 50, column: 35, scope: !27)
!32 = !DILocation(line: 50, column: 3, scope: !27)
!33 = !DILocation(line: 50, column: 66, scope: !27)
!34 = !DILocation(line: 51, column: 1, scope: !27)
