; ModuleID = 'svp_simple_023_001.c'
source_filename = "svp_simple_023_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_023_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_main() #0 !dbg !8 {
  %1 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !10
  call void @svp_simple_023_001_func_1(i32 %1), !dbg !11
  ret void, !dbg !12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_func_1(i32) #0 !dbg !13 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4, !dbg !14
  %4 = icmp sgt i32 %3, 0, !dbg !15
  br i1 %4, label %5, label %11, !dbg !16

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !17
  %7 = icmp slt i32 %6, 12, !dbg !18
  br i1 %7, label %8, label %11, !dbg !14

; <label>:8:                                      ; preds = %5
  %9 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !19
  %10 = add nsw i32 %9, 1, !dbg !20
  store volatile i32 %10, i32* @svp_simple_023_001_global_var, align 4, !dbg !21
  br label %11, !dbg !22

; <label>:11:                                     ; preds = %8, %5, %1
  ret void, !dbg !23
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_init() #0 !dbg !24 {
  %1 = call i32 (...) @rand(), !dbg !25
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !26
  call void (...) @init(), !dbg !27
  ret void, !dbg !28
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_023_001_isr_1() #0 !dbg !29 {
  store volatile i32 0, i32* @svp_simple_023_001_global_var, align 4, !dbg !30
  ret void, !dbg !31
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_023_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_023")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_023_001_main", scope: !1, file: !1, line: 23, type: !9, isLocal: false, isDefinition: true, scopeLine: 23, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 24, column: 29, scope: !8)
!11 = !DILocation(line: 24, column: 3, scope: !8)
!12 = !DILocation(line: 25, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "svp_simple_023_001_func_1", scope: !1, file: !1, line: 32, type: !9, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 33, column: 7, scope: !13)
!15 = !DILocation(line: 33, column: 11, scope: !13)
!16 = !DILocation(line: 33, column: 15, scope: !13)
!17 = !DILocation(line: 33, column: 18, scope: !13)
!18 = !DILocation(line: 33, column: 22, scope: !13)
!19 = !DILocation(line: 34, column: 37, scope: !13)
!20 = !DILocation(line: 34, column: 67, scope: !13)
!21 = !DILocation(line: 34, column: 35, scope: !13)
!22 = !DILocation(line: 35, column: 3, scope: !13)
!23 = !DILocation(line: 36, column: 1, scope: !13)
!24 = distinct !DISubprogram(name: "svp_simple_023_001_init", scope: !1, file: !1, line: 26, type: !9, isLocal: false, isDefinition: true, scopeLine: 26, isOptimized: false, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 27, column: 35, scope: !24)
!26 = !DILocation(line: 27, column: 33, scope: !24)
!27 = !DILocation(line: 29, column: 3, scope: !24)
!28 = !DILocation(line: 30, column: 1, scope: !24)
!29 = distinct !DISubprogram(name: "svp_simple_023_001_isr_1", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 37, isOptimized: false, unit: !0, retainedNodes: !2)
!30 = !DILocation(line: 38, column: 33, scope: !29)
!31 = !DILocation(line: 39, column: 1, scope: !29)
