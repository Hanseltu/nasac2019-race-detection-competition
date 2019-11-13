; ModuleID = 'svp_simple_023_001.c'
source_filename = "svp_simple_023_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_023_001_global_var = common global i32 0, align 4

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_023_001_main() local_unnamed_addr #0 !dbg !8 {
  %1 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !10, !tbaa !11
  %2 = add i32 %1, -1, !dbg !15
  %3 = icmp ult i32 %2, 11, !dbg !15
  br i1 %3, label %4, label %7, !dbg !15

; <label>:4:                                      ; preds = %0
  %5 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !18, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !19
  store volatile i32 %6, i32* @svp_simple_023_001_global_var, align 4, !dbg !20, !tbaa !11
  br label %7, !dbg !21

; <label>:7:                                      ; preds = %0, %4
  ret void, !dbg !22
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_023_001_func_1(i32) local_unnamed_addr #0 !dbg !16 {
  %2 = add i32 %0, -1, !dbg !23
  %3 = icmp ult i32 %2, 11, !dbg !23
  br i1 %3, label %4, label %7, !dbg !23

; <label>:4:                                      ; preds = %1
  %5 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !24, !tbaa !11
  %6 = add nsw i32 %5, 1, !dbg !25
  store volatile i32 %6, i32* @svp_simple_023_001_global_var, align 4, !dbg !26, !tbaa !11
  br label %7, !dbg !27

; <label>:7:                                      ; preds = %4, %1
  ret void, !dbg !28
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_init() local_unnamed_addr #1 !dbg !29 {
  %1 = tail call i32 (...) @rand() #3, !dbg !30
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !31, !tbaa !11
  tail call void (...) @init() #3, !dbg !32
  ret void, !dbg !33
}

declare i32 @rand(...) local_unnamed_addr #2

declare void @init(...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_023_001_isr_1() local_unnamed_addr #0 !dbg !34 {
  store volatile i32 0, i32* @svp_simple_023_001_global_var, align 4, !dbg !35, !tbaa !11
  ret void, !dbg !36
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_023_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_023")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_023_001_main", scope: !1, file: !1, line: 23, type: !9, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 24, column: 29, scope: !8)
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !13, i64 0}
!13 = !{!"omnipotent char", !14, i64 0}
!14 = !{!"Simple C/C++ TBAA"}
!15 = !DILocation(line: 33, column: 15, scope: !16, inlinedAt: !17)
!16 = distinct !DISubprogram(name: "svp_simple_023_001_func_1", scope: !1, file: !1, line: 32, type: !9, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!17 = distinct !DILocation(line: 24, column: 3, scope: !8)
!18 = !DILocation(line: 34, column: 37, scope: !16, inlinedAt: !17)
!19 = !DILocation(line: 34, column: 67, scope: !16, inlinedAt: !17)
!20 = !DILocation(line: 34, column: 35, scope: !16, inlinedAt: !17)
!21 = !DILocation(line: 35, column: 3, scope: !16, inlinedAt: !17)
!22 = !DILocation(line: 25, column: 1, scope: !8)
!23 = !DILocation(line: 33, column: 15, scope: !16)
!24 = !DILocation(line: 34, column: 37, scope: !16)
!25 = !DILocation(line: 34, column: 67, scope: !16)
!26 = !DILocation(line: 34, column: 35, scope: !16)
!27 = !DILocation(line: 35, column: 3, scope: !16)
!28 = !DILocation(line: 36, column: 1, scope: !16)
!29 = distinct !DISubprogram(name: "svp_simple_023_001_init", scope: !1, file: !1, line: 26, type: !9, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!30 = !DILocation(line: 27, column: 35, scope: !29)
!31 = !DILocation(line: 27, column: 33, scope: !29)
!32 = !DILocation(line: 29, column: 3, scope: !29)
!33 = !DILocation(line: 30, column: 1, scope: !29)
!34 = distinct !DISubprogram(name: "svp_simple_023_001_isr_1", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 38, column: 33, scope: !34)
!36 = !DILocation(line: 39, column: 1, scope: !34)
