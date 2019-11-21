; ModuleID = 'svp_simple_025_001.c'
source_filename = "svp_simple_025_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_025_001_global_var = common global i32 0, align 4
@svp_simple_025_001_global_array = common global [100 x i32*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_025_001_main() #0 !dbg !8 {
  call void @svp_simple_025_001_init(), !dbg !10
  call void @svp_simple_025_001_func_1(i32* @svp_simple_025_001_global_var), !dbg !11
  ret void, !dbg !12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_025_001_func_1(i32*) #0 !dbg !13 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8, !dbg !14
  %4 = load i32, i32* %3, align 4, !dbg !15
  %5 = add nsw i32 %4, 1, !dbg !16
  %6 = load i32*, i32** %2, align 8, !dbg !17
  store i32 %5, i32* %6, align 4, !dbg !18
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_025_001_init() #0 !dbg !20 {
  %1 = call i32 (...) @rand(), !dbg !21
  store volatile i32 %1, i32* @svp_simple_025_001_global_var, align 4, !dbg !22
  call void (...) @init(), !dbg !23
  ret void, !dbg !24
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_025_001_isr_1() #0 !dbg !25 {
  store volatile i32 0, i32* @svp_simple_025_001_global_var, align 4, !dbg !26
  ret void, !dbg !27
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_025_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_025")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_025_001_main", scope: !1, file: !1, line: 24, type: !9, isLocal: false, isDefinition: true, scopeLine: 24, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 25, column: 3, scope: !8)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "svp_simple_025_001_func_1", scope: !1, file: !1, line: 34, type: !9, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 35, column: 15, scope: !13)
!15 = !DILocation(line: 35, column: 14, scope: !13)
!16 = !DILocation(line: 35, column: 23, scope: !13)
!17 = !DILocation(line: 35, column: 4, scope: !13)
!18 = !DILocation(line: 35, column: 12, scope: !13)
!19 = !DILocation(line: 36, column: 1, scope: !13)
!20 = distinct !DISubprogram(name: "svp_simple_025_001_init", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 29, column: 35, scope: !20)
!22 = !DILocation(line: 29, column: 33, scope: !20)
!23 = !DILocation(line: 31, column: 3, scope: !20)
!24 = !DILocation(line: 32, column: 1, scope: !20)
!25 = distinct !DISubprogram(name: "svp_simple_025_001_isr_1", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 37, isOptimized: false, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 38, column: 33, scope: !25)
!27 = !DILocation(line: 39, column: 1, scope: !25)
