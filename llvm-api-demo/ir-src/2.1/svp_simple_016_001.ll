; ModuleID = 'svp_simple_016_001.c'
source_filename = "svp_simple_016_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_016_001_global_var1 = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_016_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store volatile i32 1, i32* @svp_simple_016_001_global_var1, align 4, !dbg !11
  %2 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !12
  %3 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !13
  %4 = add nsw i32 %2, %3, !dbg !14
  %5 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !15
  %6 = add nsw i32 %4, %5, !dbg !16
  store i32 %6, i32* %1, align 4, !dbg !17
  ret void, !dbg !18
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_016_001_isr_1() #0 !dbg !19 {
  call void (...) @idlerun(), !dbg !20
  store volatile i32 9, i32* @svp_simple_016_001_global_var1, align 4, !dbg !21
  ret void, !dbg !22
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_016_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_016")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_016_001_main", scope: !1, file: !1, line: 21, type: !9, isLocal: false, isDefinition: true, scopeLine: 21, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 22, column: 3, scope: !8)
!11 = !DILocation(line: 24, column: 34, scope: !8)
!12 = !DILocation(line: 25, column: 13, scope: !8)
!13 = !DILocation(line: 26, column: 13, scope: !8)
!14 = !DILocation(line: 25, column: 44, scope: !8)
!15 = !DILocation(line: 27, column: 13, scope: !8)
!16 = !DILocation(line: 26, column: 44, scope: !8)
!17 = !DILocation(line: 25, column: 11, scope: !8)
!18 = !DILocation(line: 29, column: 1, scope: !8)
!19 = distinct !DISubprogram(name: "svp_simple_016_001_isr_1", scope: !1, file: !1, line: 31, type: !9, isLocal: false, isDefinition: true, scopeLine: 31, isOptimized: false, unit: !0, retainedNodes: !2)
!20 = !DILocation(line: 32, column: 3, scope: !19)
!21 = !DILocation(line: 33, column: 34, scope: !19)
!22 = !DILocation(line: 34, column: 1, scope: !19)
