; ModuleID = 'svp_simple_012_001.c'
source_filename = "svp_simple_012_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_012_001_global_var = common global i32 0, align 4
@svp_simple_012_001_global_pointer = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_012_001_main() #0 !dbg !8 {
  %1 = alloca i32*, align 8
  call void (...) @init(), !dbg !10
  store i32* @svp_simple_012_001_global_var, i32** %1, align 8, !dbg !11
  store i32 1, i32* @svp_simple_012_001_global_var, align 4, !dbg !12
  %2 = load i32*, i32** %1, align 8, !dbg !13
  store i32 2, i32* %2, align 4, !dbg !14
  ret void, !dbg !15
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_012_001_isr_1() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @svp_simple_012_001_global_var, align 4, !dbg !17
  store i32 %2, i32* %1, align 4, !dbg !18
  ret void, !dbg !19
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_012_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_012")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_012_001_main", scope: !1, file: !1, line: 23, type: !9, isLocal: false, isDefinition: true, scopeLine: 23, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 24, column: 3, scope: !8)
!11 = !DILocation(line: 25, column: 8, scope: !8)
!12 = !DILocation(line: 27, column: 33, scope: !8)
!13 = !DILocation(line: 29, column: 4, scope: !8)
!14 = !DILocation(line: 29, column: 6, scope: !8)
!15 = !DILocation(line: 30, column: 1, scope: !8)
!16 = distinct !DISubprogram(name: "svp_simple_012_001_isr_1", scope: !1, file: !1, line: 32, type: !9, isLocal: false, isDefinition: true, scopeLine: 32, isOptimized: false, unit: !0, retainedNodes: !2)
!17 = !DILocation(line: 34, column: 13, scope: !16)
!18 = !DILocation(line: 34, column: 11, scope: !16)
!19 = !DILocation(line: 35, column: 1, scope: !16)
