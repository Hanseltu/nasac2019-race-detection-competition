; ModuleID = 'svp_simple_009_001.c'
source_filename = "svp_simple_009_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_009_001_p = common global i32* null, align 8
@svp_simple_009_001_q = common global i32* null, align 8
@svp_simple_009_001_m = common global i32* null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_009_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store i32 1, i32* %1, align 4, !dbg !11
  store i32 9, i32* %2, align 4, !dbg !12
  store i32* %1, i32** @svp_simple_009_001_p, align 8, !dbg !13
  store i32* %1, i32** @svp_simple_009_001_q, align 8, !dbg !14
  %3 = load i32*, i32** @svp_simple_009_001_p, align 8, !dbg !15
  store volatile i32 2, i32* %3, align 4, !dbg !16
  %4 = load i32*, i32** @svp_simple_009_001_q, align 8, !dbg !17
  store volatile i32 3, i32* %4, align 4, !dbg !18
  store i32* %2, i32** @svp_simple_009_001_m, align 8, !dbg !19
  %5 = load i32*, i32** @svp_simple_009_001_m, align 8, !dbg !20
  store volatile i32 6, i32* %5, align 4, !dbg !21
  %6 = load i32*, i32** @svp_simple_009_001_m, align 8, !dbg !22
  store volatile i32 6, i32* %6, align 4, !dbg !23
  ret void, !dbg !24
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_009_001_isr_1() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void (...) @idlerun(), !dbg !26
  %4 = load i32*, i32** @svp_simple_009_001_p, align 8, !dbg !27
  %5 = load volatile i32, i32* %4, align 4, !dbg !28
  store i32 %5, i32* %1, align 4, !dbg !29
  store i32 8, i32* %3, align 4, !dbg !30
  store i32* %3, i32** @svp_simple_009_001_m, align 8, !dbg !31
  %6 = load i32*, i32** @svp_simple_009_001_m, align 8, !dbg !32
  %7 = load volatile i32, i32* %6, align 4, !dbg !33
  store i32 %7, i32* %2, align 4, !dbg !34
  ret void, !dbg !35
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_009_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_009")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_009_001_main", scope: !1, file: !1, line: 24, type: !9, isLocal: false, isDefinition: true, scopeLine: 24, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 25, column: 3, scope: !8)
!11 = !DILocation(line: 26, column: 7, scope: !8)
!12 = !DILocation(line: 27, column: 7, scope: !8)
!13 = !DILocation(line: 29, column: 24, scope: !8)
!14 = !DILocation(line: 30, column: 24, scope: !8)
!15 = !DILocation(line: 32, column: 4, scope: !8)
!16 = !DILocation(line: 32, column: 25, scope: !8)
!17 = !DILocation(line: 33, column: 4, scope: !8)
!18 = !DILocation(line: 33, column: 25, scope: !8)
!19 = !DILocation(line: 35, column: 24, scope: !8)
!20 = !DILocation(line: 37, column: 4, scope: !8)
!21 = !DILocation(line: 37, column: 25, scope: !8)
!22 = !DILocation(line: 38, column: 4, scope: !8)
!23 = !DILocation(line: 38, column: 25, scope: !8)
!24 = !DILocation(line: 39, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "svp_simple_009_001_isr_1", scope: !1, file: !1, line: 41, type: !9, isLocal: false, isDefinition: true, scopeLine: 41, isOptimized: false, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 43, column: 3, scope: !25)
!27 = !DILocation(line: 44, column: 14, scope: !25)
!28 = !DILocation(line: 44, column: 13, scope: !25)
!29 = !DILocation(line: 44, column: 11, scope: !25)
!30 = !DILocation(line: 45, column: 7, scope: !25)
!31 = !DILocation(line: 46, column: 24, scope: !25)
!32 = !DILocation(line: 47, column: 14, scope: !25)
!33 = !DILocation(line: 47, column: 13, scope: !25)
!34 = !DILocation(line: 47, column: 11, scope: !25)
!35 = !DILocation(line: 48, column: 1, scope: !25)
