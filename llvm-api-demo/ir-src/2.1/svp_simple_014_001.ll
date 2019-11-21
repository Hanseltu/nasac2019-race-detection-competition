; ModuleID = 'svp_simple_014_001.c'
source_filename = "svp_simple_014_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_014_001_global_var1 = global i32 1, align 4
@svp_simple_014_001_global_var2 = global i32 2, align 4
@svp_simple_014_001_global_flag1 = global i32 0, align 4
@svp_simple_014_001_global_flag2 = global i32 1, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_014_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !10
  call void (...) @idlerun(), !dbg !11
  ret void, !dbg !12
}

declare void @init(...) #1

declare void @idlerun(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_014_001_isr_1() #0 !dbg !13 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @disable_isr(i32 3), !dbg !14
  store i32 0, i32* %5, align 4, !dbg !15
  br label %6, !dbg !16

; <label>:6:                                      ; preds = %15, %0
  %7 = load i32, i32* %5, align 4, !dbg !17
  %8 = icmp slt i32 %7, 100, !dbg !18
  br i1 %8, label %9, label %18, !dbg !19

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %5, align 4, !dbg !20
  %11 = icmp eq i32 %10, 99, !dbg !21
  br i1 %11, label %12, label %14, !dbg !20

; <label>:12:                                     ; preds = %9
  %13 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !22
  store i32 %13, i32* %1, align 4, !dbg !23
  br label %14, !dbg !24

; <label>:14:                                     ; preds = %12, %9
  br label %15, !dbg !25

; <label>:15:                                     ; preds = %14
  %16 = load i32, i32* %5, align 4, !dbg !26
  %17 = add nsw i32 %16, 1, !dbg !26
  store i32 %17, i32* %5, align 4, !dbg !26
  br label %6, !dbg !19, !llvm.loop !27

; <label>:18:                                     ; preds = %6
  %19 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !28
  store i32 %19, i32* %2, align 4, !dbg !29
  %20 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !30
  store i32 %20, i32* %3, align 4, !dbg !31
  %21 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !32
  store i32 %21, i32* %4, align 4, !dbg !33
  ret void, !dbg !34
}

declare void @disable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_014_001_isr_2() #0 !dbg !35 {
  store i32 1, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !36
  store i32 0, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !37
  call void @enable_isr(i32 3), !dbg !38
  call void (...) @idlerun(), !dbg !39
  ret void, !dbg !40
}

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_014_001_isr_3() #0 !dbg !41 {
  %1 = load i32, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !42
  %2 = icmp eq i32 %1, 1, !dbg !43
  br i1 %2, label %3, label %4, !dbg !42

; <label>:3:                                      ; preds = %0
  store volatile i32 9, i32* @svp_simple_014_001_global_var1, align 4, !dbg !44
  br label %4, !dbg !45

; <label>:4:                                      ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !46
  %6 = icmp eq i32 %5, 1, !dbg !47
  br i1 %6, label %7, label %8, !dbg !46

; <label>:7:                                      ; preds = %4
  store volatile i32 9, i32* @svp_simple_014_001_global_var2, align 4, !dbg !48
  br label %8, !dbg !49

; <label>:8:                                      ; preds = %7, %4
  ret void, !dbg !50
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_014_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_014")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_014_001_main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !8)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 31, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "svp_simple_014_001_isr_1", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, isOptimized: false, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 34, column: 3, scope: !13)
!15 = !DILocation(line: 38, column: 12, scope: !13)
!16 = !DILocation(line: 38, column: 8, scope: !13)
!17 = !DILocation(line: 38, column: 19, scope: !13)
!18 = !DILocation(line: 38, column: 21, scope: !13)
!19 = !DILocation(line: 38, column: 3, scope: !13)
!20 = !DILocation(line: 39, column: 9, scope: !13)
!21 = !DILocation(line: 39, column: 11, scope: !13)
!22 = !DILocation(line: 39, column: 33, scope: !13)
!23 = !DILocation(line: 39, column: 31, scope: !13)
!24 = !DILocation(line: 39, column: 23, scope: !13)
!25 = !DILocation(line: 39, column: 14, scope: !13)
!26 = !DILocation(line: 38, column: 36, scope: !13)
!27 = distinct !{!27, !19, !22}
!28 = !DILocation(line: 41, column: 13, scope: !13)
!29 = !DILocation(line: 41, column: 11, scope: !13)
!30 = !DILocation(line: 43, column: 13, scope: !13)
!31 = !DILocation(line: 43, column: 11, scope: !13)
!32 = !DILocation(line: 45, column: 13, scope: !13)
!33 = !DILocation(line: 45, column: 11, scope: !13)
!34 = !DILocation(line: 46, column: 1, scope: !13)
!35 = distinct !DISubprogram(name: "svp_simple_014_001_isr_2", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, isOptimized: false, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 49, column: 35, scope: !35)
!37 = !DILocation(line: 50, column: 35, scope: !35)
!38 = !DILocation(line: 52, column: 3, scope: !35)
!39 = !DILocation(line: 54, column: 3, scope: !35)
!40 = !DILocation(line: 55, column: 1, scope: !35)
!41 = distinct !DISubprogram(name: "svp_simple_014_001_isr_3", scope: !1, file: !1, line: 57, type: !9, isLocal: false, isDefinition: true, scopeLine: 57, isOptimized: false, unit: !0, retainedNodes: !2)
!42 = !DILocation(line: 58, column: 7, scope: !41)
!43 = !DILocation(line: 58, column: 39, scope: !41)
!44 = !DILocation(line: 58, column: 76, scope: !41)
!45 = !DILocation(line: 58, column: 45, scope: !41)
!46 = !DILocation(line: 59, column: 7, scope: !41)
!47 = !DILocation(line: 59, column: 39, scope: !41)
!48 = !DILocation(line: 59, column: 76, scope: !41)
!49 = !DILocation(line: 59, column: 45, scope: !41)
!50 = !DILocation(line: 60, column: 1, scope: !41)
