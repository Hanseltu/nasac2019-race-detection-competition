; ModuleID = 'svp_simple_025_001.bc'
source_filename = "./svp_simple_025_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_025_001_global_var = common global i32 0, align 4
@svp_simple_025_001_global_array = common global [100 x i32*] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_main() #0 !dbg !8 {
  call void @svp_simple_025_001_init(), !dbg !11
  call void @svp_simple_025_001_func_1(i32* @svp_simple_025_001_global_var), !dbg !12
  ret void, !dbg !13
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_func_1(i32*) #0 !dbg !14 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8, !tbaa !15
  %3 = load i32*, i32** %2, align 8, !dbg !19, !tbaa !15
  %4 = load i32, i32* %3, align 4, !dbg !20, !tbaa !21
  %5 = add nsw i32 %4, 1, !dbg !23
  %6 = load i32*, i32** %2, align 8, !dbg !24, !tbaa !15
  store i32 %5, i32* %6, align 4, !dbg !25, !tbaa !21
  ret void, !dbg !26
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_init() #0 !dbg !27 {
  %1 = call i32 (...) @rand(), !dbg !28
  store volatile i32 %1, i32* @svp_simple_025_001_global_var, align 4, !dbg !29, !tbaa !21
  call void (...) @init(), !dbg !30
  ret void, !dbg !31
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_025_001_isr_1() #0 !dbg !32 {
  store volatile i32 0, i32* @svp_simple_025_001_global_var, align 4, !dbg !33, !tbaa !21
  ret void, !dbg !34
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!11 = !DILocation(line: 25, column: 3, scope: !8)
!12 = !DILocation(line: 26, column: 3, scope: !8)
!13 = !DILocation(line: 27, column: 1, scope: !8)
!14 = distinct !DISubprogram(name: "svp_simple_025_001_func_1", scope: !9, file: !9, line: 34, type: !10, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 35, column: 15, scope: !14)
!20 = !DILocation(line: 35, column: 14, scope: !14)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !17, i64 0}
!23 = !DILocation(line: 35, column: 23, scope: !14)
!24 = !DILocation(line: 35, column: 4, scope: !14)
!25 = !DILocation(line: 35, column: 12, scope: !14)
!26 = !DILocation(line: 36, column: 1, scope: !14)
!27 = distinct !DISubprogram(name: "svp_simple_025_001_init", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!28 = !DILocation(line: 29, column: 35, scope: !27)
!29 = !DILocation(line: 29, column: 33, scope: !27)
!30 = !DILocation(line: 31, column: 3, scope: !27)
!31 = !DILocation(line: 32, column: 1, scope: !27)
!32 = distinct !DISubprogram(name: "svp_simple_025_001_isr_1", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!33 = !DILocation(line: 38, column: 33, scope: !32)
!34 = !DILocation(line: 39, column: 1, scope: !32)
