; ModuleID = 'svp_simple_015_001.c'
source_filename = "svp_simple_015_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_015_001_global_var1 = common global i32 0, align 4
@svp_simple_015_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_015_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #2, !dbg !10
  %1 = tail call i32 (...) @rand() #2, !dbg !11
  %2 = tail call i32 (...) @rand() #2, !dbg !12
  %3 = tail call i32 (...) @rand() #2, !dbg !13
  %4 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !14, !tbaa !15
  %5 = icmp slt i32 %4, %2, !dbg !19
  br i1 %5, label %6, label %8, !dbg !20

; <label>:6:                                      ; preds = %0
  %7 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !21, !tbaa !15
  br label %8, !dbg !22

; <label>:8:                                      ; preds = %6, %0
  %9 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !23, !tbaa !15
  ret void, !dbg !24
}

declare void @init(...) local_unnamed_addr #1

declare i32 @rand(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_015_001_isr_1() local_unnamed_addr #0 !dbg !25 {
  tail call void (...) @idlerun() #2, !dbg !26
  store volatile i32 5, i32* @svp_simple_015_001_global_var1, align 4, !dbg !27, !tbaa !15
  store volatile i32 5, i32* @svp_simple_015_001_global_var2, align 4, !dbg !28, !tbaa !15
  ret void, !dbg !29
}

declare void @idlerun(...) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_015_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_015")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_015_001_main", scope: !1, file: !1, line: 22, type: !9, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 23, column: 3, scope: !8)
!11 = !DILocation(line: 25, column: 11, scope: !8)
!12 = !DILocation(line: 26, column: 11, scope: !8)
!13 = !DILocation(line: 28, column: 11, scope: !8)
!14 = !DILocation(line: 30, column: 8, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 30, column: 39, scope: !8)
!20 = !DILocation(line: 30, column: 44, scope: !8)
!21 = !DILocation(line: 31, column: 8, scope: !8)
!22 = !DILocation(line: 30, column: 7, scope: !8)
!23 = !DILocation(line: 0, scope: !8)
!24 = !DILocation(line: 35, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "svp_simple_015_001_isr_1", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 38, column: 3, scope: !25)
!27 = !DILocation(line: 39, column: 34, scope: !25)
!28 = !DILocation(line: 40, column: 34, scope: !25)
!29 = !DILocation(line: 41, column: 1, scope: !25)
