; ModuleID = 'svp_simple_014_001.c'
source_filename = "svp_simple_014_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_014_001_global_var1 = global i32 1, align 4
@svp_simple_014_001_global_var2 = global i32 2, align 4
@svp_simple_014_001_global_flag1 = local_unnamed_addr global i32 0, align 4
@svp_simple_014_001_global_flag2 = local_unnamed_addr global i32 1, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #3, !dbg !10
  tail call void (...) @idlerun() #3, !dbg !11
  ret void, !dbg !12
}

declare void @init(...) local_unnamed_addr #1

declare void @idlerun(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_isr_1() local_unnamed_addr #0 !dbg !13 {
  tail call void @disable_isr(i32 3) #3, !dbg !14
  %1 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !15, !tbaa !16
  %2 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !20, !tbaa !16
  %3 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !21, !tbaa !16
  %4 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !22, !tbaa !16
  ret void, !dbg !23
}

declare void @disable_isr(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_isr_2() local_unnamed_addr #0 !dbg !24 {
  store i32 1, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !25, !tbaa !16
  store i32 0, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !26, !tbaa !16
  tail call void @enable_isr(i32 3) #3, !dbg !27
  tail call void (...) @idlerun() #3, !dbg !28
  ret void, !dbg !29
}

declare void @enable_isr(i32) local_unnamed_addr #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_014_001_isr_3() local_unnamed_addr #2 !dbg !30 {
  %1 = load i32, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !31, !tbaa !16
  %2 = icmp eq i32 %1, 1, !dbg !32
  br i1 %2, label %3, label %4, !dbg !31

; <label>:3:                                      ; preds = %0
  store volatile i32 9, i32* @svp_simple_014_001_global_var1, align 4, !dbg !33, !tbaa !16
  br label %4, !dbg !34

; <label>:4:                                      ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !35, !tbaa !16
  %6 = icmp eq i32 %5, 1, !dbg !36
  br i1 %6, label %7, label %8, !dbg !35

; <label>:7:                                      ; preds = %4
  store volatile i32 9, i32* @svp_simple_014_001_global_var2, align 4, !dbg !37, !tbaa !16
  br label %8, !dbg !38

; <label>:8:                                      ; preds = %7, %4
  ret void, !dbg !39
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_014_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_014")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_014_001_main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !8)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 31, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "svp_simple_014_001_isr_1", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 34, column: 3, scope: !13)
!15 = !DILocation(line: 39, column: 33, scope: !13)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 41, column: 13, scope: !13)
!21 = !DILocation(line: 43, column: 13, scope: !13)
!22 = !DILocation(line: 45, column: 13, scope: !13)
!23 = !DILocation(line: 46, column: 1, scope: !13)
!24 = distinct !DISubprogram(name: "svp_simple_014_001_isr_2", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 49, column: 35, scope: !24)
!26 = !DILocation(line: 50, column: 35, scope: !24)
!27 = !DILocation(line: 52, column: 3, scope: !24)
!28 = !DILocation(line: 54, column: 3, scope: !24)
!29 = !DILocation(line: 55, column: 1, scope: !24)
!30 = distinct !DISubprogram(name: "svp_simple_014_001_isr_3", scope: !1, file: !1, line: 57, type: !9, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 58, column: 7, scope: !30)
!32 = !DILocation(line: 58, column: 39, scope: !30)
!33 = !DILocation(line: 58, column: 76, scope: !30)
!34 = !DILocation(line: 58, column: 45, scope: !30)
!35 = !DILocation(line: 59, column: 7, scope: !30)
!36 = !DILocation(line: 59, column: 39, scope: !30)
!37 = !DILocation(line: 59, column: 76, scope: !30)
!38 = !DILocation(line: 59, column: 45, scope: !30)
!39 = !DILocation(line: 60, column: 1, scope: !30)
