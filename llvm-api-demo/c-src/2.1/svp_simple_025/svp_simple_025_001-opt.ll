; ModuleID = 'svp_simple_025_001-opt.bc'
source_filename = "./svp_simple_025_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_025_001_global_var = common global i32 0, align 4
@svp_simple_025_001_global_array = common global [100 x i32*] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_main() #0 !dbg !8 {
  %1 = call i32 (...) @rand() #2, !dbg !11
  store volatile i32 %1, i32* @svp_simple_025_001_global_var, align 4, !dbg !14, !tbaa !15
  call void (...) @init() #2, !dbg !19
  %2 = load i32, i32* @svp_simple_025_001_global_var, align 4, !dbg !20, !tbaa !15
  %3 = add nsw i32 %2, 1, !dbg !23
  store i32 %3, i32* @svp_simple_025_001_global_var, align 4, !dbg !24, !tbaa !15
  ret void, !dbg !25
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_func_1(i32*) #0 !dbg !21 {
  %2 = load i32, i32* %0, align 4, !dbg !26, !tbaa !15
  %3 = add nsw i32 %2, 1, !dbg !27
  store i32 %3, i32* %0, align 4, !dbg !28, !tbaa !15
  ret void, !dbg !29
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_init() #0 !dbg !12 {
  %1 = call i32 (...) @rand(), !dbg !30
  store volatile i32 %1, i32* @svp_simple_025_001_global_var, align 4, !dbg !31, !tbaa !15
  call void (...) @init(), !dbg !32
  ret void, !dbg !33
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_isr_1() #0 !dbg !34 {
  store volatile i32 0, i32* @svp_simple_025_001_global_var, align 4, !dbg !35, !tbaa !15
  ret void, !dbg !36
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_025_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_025")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_025_001_main", scope: !9, file: !9, line: 24, type: !10, scopeLine: 24, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_025_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_025")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 35, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "svp_simple_025_001_init", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = distinct !DILocation(line: 25, column: 3, scope: !8)
!14 = !DILocation(line: 29, column: 33, scope: !12, inlinedAt: !13)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 31, column: 3, scope: !12, inlinedAt: !13)
!20 = !DILocation(line: 35, column: 14, scope: !21, inlinedAt: !22)
!21 = distinct !DISubprogram(name: "svp_simple_025_001_func_1", scope: !9, file: !9, line: 34, type: !10, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!22 = distinct !DILocation(line: 26, column: 3, scope: !8)
!23 = !DILocation(line: 35, column: 23, scope: !21, inlinedAt: !22)
!24 = !DILocation(line: 35, column: 12, scope: !21, inlinedAt: !22)
!25 = !DILocation(line: 27, column: 1, scope: !8)
!26 = !DILocation(line: 35, column: 14, scope: !21)
!27 = !DILocation(line: 35, column: 23, scope: !21)
!28 = !DILocation(line: 35, column: 12, scope: !21)
!29 = !DILocation(line: 36, column: 1, scope: !21)
!30 = !DILocation(line: 29, column: 35, scope: !12)
!31 = !DILocation(line: 29, column: 33, scope: !12)
!32 = !DILocation(line: 31, column: 3, scope: !12)
!33 = !DILocation(line: 32, column: 1, scope: !12)
!34 = distinct !DISubprogram(name: "svp_simple_025_001_isr_1", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 38, column: 33, scope: !34)
!36 = !DILocation(line: 39, column: 1, scope: !34)
