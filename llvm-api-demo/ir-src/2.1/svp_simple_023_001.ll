; ModuleID = 'svp_simple_023_001.c'
source_filename = "svp_simple_023_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_023_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_main() #0 !dbg !8 {
  call void @svp_simple_023_001_init(), !dbg !10
  %1 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !11
  call void @svp_simple_023_001_func_1(i32 %1), !dbg !12
  ret void, !dbg !13
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_func_1(i32) #0 !dbg !14 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4, !dbg !15
  %4 = icmp sgt i32 %3, 0, !dbg !16
  br i1 %4, label %5, label %11, !dbg !17

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !18
  %7 = icmp slt i32 %6, 12, !dbg !19
  br i1 %7, label %8, label %11, !dbg !15

; <label>:8:                                      ; preds = %5
  %9 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !20
  %10 = add nsw i32 %9, 1, !dbg !21
  store volatile i32 %10, i32* @svp_simple_023_001_global_var, align 4, !dbg !22
  br label %11, !dbg !23

; <label>:11:                                     ; preds = %8, %5, %1
  ret void, !dbg !24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_init() #0 !dbg !25 {
  %1 = call i32 (...) @rand(), !dbg !26
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !27
  call void (...) @init(), !dbg !28
  ret void, !dbg !29
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_isr_1() #0 !dbg !30 {
  store volatile i32 0, i32* @svp_simple_023_001_global_var, align 4, !dbg !31
  ret void, !dbg !32
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_023_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_023")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_023_001_main", scope: !1, file: !1, line: 23, type: !9, isLocal: false, isDefinition: true, scopeLine: 23, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 24, column: 3, scope: !8)
!11 = !DILocation(line: 25, column: 29, scope: !8)
!12 = !DILocation(line: 25, column: 3, scope: !8)
!13 = !DILocation(line: 26, column: 1, scope: !8)
!14 = distinct !DISubprogram(name: "svp_simple_023_001_func_1", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 34, column: 7, scope: !14)
!16 = !DILocation(line: 34, column: 11, scope: !14)
!17 = !DILocation(line: 34, column: 15, scope: !14)
!18 = !DILocation(line: 34, column: 18, scope: !14)
!19 = !DILocation(line: 34, column: 22, scope: !14)
!20 = !DILocation(line: 35, column: 37, scope: !14)
!21 = !DILocation(line: 35, column: 67, scope: !14)
!22 = !DILocation(line: 35, column: 35, scope: !14)
!23 = !DILocation(line: 36, column: 3, scope: !14)
!24 = !DILocation(line: 37, column: 1, scope: !14)
!25 = distinct !DISubprogram(name: "svp_simple_023_001_init", scope: !1, file: !1, line: 27, type: !9, isLocal: false, isDefinition: true, scopeLine: 27, isOptimized: false, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 28, column: 35, scope: !25)
!27 = !DILocation(line: 28, column: 33, scope: !25)
!28 = !DILocation(line: 30, column: 3, scope: !25)
!29 = !DILocation(line: 31, column: 1, scope: !25)
!30 = distinct !DISubprogram(name: "svp_simple_023_001_isr_1", scope: !1, file: !1, line: 38, type: !9, isLocal: false, isDefinition: true, scopeLine: 38, isOptimized: false, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 39, column: 33, scope: !30)
!32 = !DILocation(line: 40, column: 1, scope: !30)