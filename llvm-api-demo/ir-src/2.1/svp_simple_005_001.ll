; ModuleID = 'svp_simple_005_001.c'
source_filename = "svp_simple_005_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_005_001_global_condition = global i32 0, align 4
@svp_simple_005_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_005_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store i32 0, i32* %1, align 4, !dbg !11
  br label %3, !dbg !12

; <label>:3:                                      ; preds = %22, %0
  %4 = load i32, i32* %1, align 4, !dbg !13
  %5 = icmp slt i32 %4, 10000, !dbg !14
  br i1 %5, label %6, label %25, !dbg !15

; <label>:6:                                      ; preds = %3
  store i32 0, i32* %2, align 4, !dbg !16
  br label %7, !dbg !17

; <label>:7:                                      ; preds = %18, %6
  %8 = load i32, i32* %2, align 4, !dbg !18
  %9 = icmp slt i32 %8, 10000, !dbg !19
  br i1 %9, label %10, label %21, !dbg !20

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %1, align 4, !dbg !21
  %12 = icmp eq i32 %11, 9999, !dbg !22
  br i1 %12, label %13, label %17, !dbg !23

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4, !dbg !24
  %15 = icmp eq i32 %14, 1000, !dbg !25
  br i1 %15, label %16, label %17, !dbg !26

; <label>:16:                                     ; preds = %13
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !27
  br label %17, !dbg !28

; <label>:17:                                     ; preds = %16, %13, %10
  br label %18, !dbg !29

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %2, align 4, !dbg !30
  %20 = add nsw i32 %19, 1, !dbg !30
  store i32 %20, i32* %2, align 4, !dbg !30
  br label %7, !dbg !20, !llvm.loop !31

; <label>:21:                                     ; preds = %7
  br label %22, !dbg !32

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %1, align 4, !dbg !33
  %24 = add nsw i32 %23, 1, !dbg !33
  store i32 %24, i32* %1, align 4, !dbg !33
  br label %3, !dbg !15, !llvm.loop !34

; <label>:25:                                     ; preds = %3
  %26 = load volatile i32, i32* @svp_simple_005_001_global_condition, align 4, !dbg !35
  %27 = icmp eq i32 %26, 1, !dbg !36
  br i1 %27, label %28, label %29, !dbg !35

; <label>:28:                                     ; preds = %25
  store volatile i32 9, i32* @svp_simple_005_001_global_var, align 4, !dbg !37
  br label %29, !dbg !38

; <label>:29:                                     ; preds = %28, %25
  store volatile i32 5, i32* @svp_simple_005_001_global_var, align 4, !dbg !39
  ret void, !dbg !40
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_005_001_isr_1() #0 !dbg !41 {
  %1 = alloca i32, align 4
  call void (...) @idlerun(), !dbg !42
  %2 = load volatile i32, i32* @svp_simple_005_001_global_var, align 4, !dbg !43
  store i32 %2, i32* %1, align 4, !dbg !44
  ret void, !dbg !45
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_005_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_005")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_005_001_main", scope: !1, file: !1, line: 27, type: !9, isLocal: false, isDefinition: true, scopeLine: 27, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 3, scope: !8)
!11 = !DILocation(line: 29, column: 12, scope: !8)
!12 = !DILocation(line: 29, column: 8, scope: !8)
!13 = !DILocation(line: 29, column: 19, scope: !8)
!14 = !DILocation(line: 29, column: 21, scope: !8)
!15 = !DILocation(line: 29, column: 3, scope: !8)
!16 = !DILocation(line: 30, column: 14, scope: !8)
!17 = !DILocation(line: 30, column: 10, scope: !8)
!18 = !DILocation(line: 30, column: 21, scope: !8)
!19 = !DILocation(line: 30, column: 23, scope: !8)
!20 = !DILocation(line: 30, column: 5, scope: !8)
!21 = !DILocation(line: 31, column: 12, scope: !8)
!22 = !DILocation(line: 31, column: 14, scope: !8)
!23 = !DILocation(line: 31, column: 26, scope: !8)
!24 = !DILocation(line: 31, column: 30, scope: !8)
!25 = !DILocation(line: 31, column: 32, scope: !8)
!26 = !DILocation(line: 31, column: 11, scope: !8)
!27 = !DILocation(line: 32, column: 39, scope: !8)
!28 = !DILocation(line: 32, column: 9, scope: !8)
!29 = !DILocation(line: 33, column: 5, scope: !8)
!30 = !DILocation(line: 30, column: 38, scope: !8)
!31 = distinct !{!31, !20, !29}
!32 = !DILocation(line: 34, column: 3, scope: !8)
!33 = !DILocation(line: 29, column: 36, scope: !8)
!34 = distinct !{!34, !15, !32}
!35 = !DILocation(line: 36, column: 7, scope: !8)
!36 = !DILocation(line: 36, column: 43, scope: !8)
!37 = !DILocation(line: 38, column: 35, scope: !8)
!38 = !DILocation(line: 38, column: 5, scope: !8)
!39 = !DILocation(line: 40, column: 33, scope: !8)
!40 = !DILocation(line: 41, column: 1, scope: !8)
!41 = distinct !DISubprogram(name: "svp_simple_005_001_isr_1", scope: !1, file: !1, line: 43, type: !9, isLocal: false, isDefinition: true, scopeLine: 43, isOptimized: false, unit: !0, retainedNodes: !2)
!42 = !DILocation(line: 44, column: 3, scope: !41)
!43 = !DILocation(line: 46, column: 12, scope: !41)
!44 = !DILocation(line: 46, column: 10, scope: !41)
!45 = !DILocation(line: 47, column: 1, scope: !41)
