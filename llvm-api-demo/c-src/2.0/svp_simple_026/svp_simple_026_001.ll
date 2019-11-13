; ModuleID = 'svp_simple_026_001.c'
source_filename = "svp_simple_026_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_026_001_gloable_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_026_001_main() local_unnamed_addr #0 !dbg !8 {
  %1 = tail call i32 (...) @rand() #3, !dbg !10
  store volatile i32 %1, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !13, !tbaa !14
  tail call void (...) @init() #3, !dbg !18
  tail call void @disable_isr(i32 1) #3, !dbg !19
  %2 = load volatile i32, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !20, !tbaa !14
  %3 = icmp sgt i32 %2, 12, !dbg !21
  br i1 %3, label %4, label %5, !dbg !20

; <label>:4:                                      ; preds = %0
  store volatile i32 0, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !22, !tbaa !14
  br label %5, !dbg !23

; <label>:5:                                      ; preds = %4, %0
  tail call void @enable_isr(i32 1) #3, !dbg !24
  ret i32 0, !dbg !25
}

declare void @disable_isr(i32) local_unnamed_addr #1

declare void @enable_isr(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_026_001_init() local_unnamed_addr #0 !dbg !11 {
  %1 = tail call i32 (...) @rand() #3, !dbg !26
  store volatile i32 %1, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !27, !tbaa !14
  tail call void (...) @init() #3, !dbg !28
  ret void, !dbg !29
}

declare i32 @rand(...) local_unnamed_addr #1

declare void @init(...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_026_001_isr_1() local_unnamed_addr #2 !dbg !30 {
  %1 = load volatile i32, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !31, !tbaa !14
  %2 = add nsw i32 %1, 1, !dbg !31
  store volatile i32 %2, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !31, !tbaa !14
  ret void, !dbg !32
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_026_001_isr_2() local_unnamed_addr #2 !dbg !33 {
  %1 = load volatile i32, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !34, !tbaa !14
  %2 = add nsw i32 %1, -1, !dbg !34
  store volatile i32 %2, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !34, !tbaa !14
  ret void, !dbg !35
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_026_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_026")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_026_001_main", scope: !1, file: !1, line: 22, type: !9, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 34, column: 36, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "svp_simple_026_001_init", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 23, column: 3, scope: !8)
!13 = !DILocation(line: 34, column: 34, scope: !11, inlinedAt: !12)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 36, column: 3, scope: !11, inlinedAt: !12)
!19 = !DILocation(line: 25, column: 3, scope: !8)
!20 = !DILocation(line: 26, column: 7, scope: !8)
!21 = !DILocation(line: 26, column: 38, scope: !8)
!22 = !DILocation(line: 27, column: 36, scope: !8)
!23 = !DILocation(line: 28, column: 3, scope: !8)
!24 = !DILocation(line: 29, column: 3, scope: !8)
!25 = !DILocation(line: 31, column: 3, scope: !8)
!26 = !DILocation(line: 34, column: 36, scope: !11)
!27 = !DILocation(line: 34, column: 34, scope: !11)
!28 = !DILocation(line: 36, column: 3, scope: !11)
!29 = !DILocation(line: 37, column: 1, scope: !11)
!30 = distinct !DISubprogram(name: "svp_simple_026_001_isr_1", scope: !1, file: !1, line: 39, type: !9, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 40, column: 33, scope: !30)
!32 = !DILocation(line: 41, column: 1, scope: !30)
!33 = distinct !DISubprogram(name: "svp_simple_026_001_isr_2", scope: !1, file: !1, line: 42, type: !9, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 43, column: 33, scope: !33)
!35 = !DILocation(line: 44, column: 1, scope: !33)
