; ModuleID = 'svp_simple_004_001.c'
source_filename = "svp_simple_004_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_004_001_condition1 = global i32 1, align 4
@svp_simple_004_001_condition2 = global i32 1, align 4
@svp_simple_004_001_condition3 = global i32 1, align 4
@svp_simple_004_001_condition4 = global i32 1, align 4
@svp_simple_004_001_condition5 = global i32 1, align 4
@svp_simple_004_001_condition6 = global i32 1, align 4
@svp_simple_004_001_global_var1 = global i32 17, align 4
@svp_simple_004_001_global_var2 = global i32 34, align 4
@svp_simple_004_001_global_var3 = global i32 51, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_004_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  call void @disable_isr(i32 2), !dbg !11
  %7 = load volatile i32, i32* @svp_simple_004_001_condition1, align 4, !dbg !12
  %8 = icmp eq i32 %7, 1, !dbg !13
  br i1 %8, label %9, label %12, !dbg !12

; <label>:9:                                      ; preds = %0
  %10 = load volatile i32, i32* @svp_simple_004_001_global_var1, align 4, !dbg !14
  store i32 %10, i32* %1, align 4, !dbg !15
  %11 = load volatile i32, i32* @svp_simple_004_001_global_var3, align 4, !dbg !16
  store i32 %11, i32* %5, align 4, !dbg !17
  br label %12, !dbg !18

; <label>:12:                                     ; preds = %9, %0
  %13 = load volatile i32, i32* @svp_simple_004_001_condition2, align 4, !dbg !19
  %14 = icmp eq i32 %13, 1, !dbg !20
  br i1 %14, label %15, label %18, !dbg !19

; <label>:15:                                     ; preds = %12
  %16 = load volatile i32, i32* @svp_simple_004_001_global_var1, align 4, !dbg !21
  store i32 %16, i32* %2, align 4, !dbg !22
  %17 = load volatile i32, i32* @svp_simple_004_001_global_var3, align 4, !dbg !23
  store i32 %17, i32* %6, align 4, !dbg !24
  br label %18, !dbg !25

; <label>:18:                                     ; preds = %15, %12
  %19 = load volatile i32, i32* @svp_simple_004_001_condition4, align 4, !dbg !26
  %20 = icmp eq i32 %19, 1, !dbg !27
  br i1 %20, label %21, label %23, !dbg !26

; <label>:21:                                     ; preds = %18
  %22 = load volatile i32, i32* @svp_simple_004_001_global_var2, align 4, !dbg !28
  store i32 %22, i32* %3, align 4, !dbg !29
  br label %23, !dbg !30

; <label>:23:                                     ; preds = %21, %18
  %24 = load volatile i32, i32* @svp_simple_004_001_condition5, align 4, !dbg !31
  %25 = icmp eq i32 %24, 1, !dbg !32
  br i1 %25, label %26, label %28, !dbg !31

; <label>:26:                                     ; preds = %23
  %27 = load volatile i32, i32* @svp_simple_004_001_global_var2, align 4, !dbg !33
  store i32 %27, i32* %4, align 4, !dbg !34
  br label %28, !dbg !35

; <label>:28:                                     ; preds = %26, %23
  ret void, !dbg !36
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_004_001_isr_1() #0 !dbg !37 {
  store volatile i32 0, i32* @svp_simple_004_001_condition6, align 4, !dbg !38
  %1 = load volatile i32, i32* @svp_simple_004_001_condition3, align 4, !dbg !39
  %2 = icmp eq i32 %1, 1, !dbg !40
  br i1 %2, label %3, label %4, !dbg !39

; <label>:3:                                      ; preds = %0
  store volatile i32 170, i32* @svp_simple_004_001_global_var1, align 4, !dbg !41
  br label %5, !dbg !42

; <label>:4:                                      ; preds = %0
  store volatile i32 204, i32* @svp_simple_004_001_global_var3, align 4, !dbg !43
  br label %5

; <label>:5:                                      ; preds = %4, %3
  call void @enable_isr(i32 2), !dbg !44
  ret void, !dbg !45
}

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_004_001_isr_2() #0 !dbg !46 {
  %1 = load volatile i32, i32* @svp_simple_004_001_condition6, align 4, !dbg !47
  %2 = icmp eq i32 %1, 1, !dbg !48
  br i1 %2, label %3, label %4, !dbg !47

; <label>:3:                                      ; preds = %0
  store volatile i32 34, i32* @svp_simple_004_001_global_var2, align 4, !dbg !49
  br label %4, !dbg !50

; <label>:4:                                      ; preds = %3, %0
  ret void, !dbg !51
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_004_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_004")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_004_001_main", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 34, column: 3, scope: !8)
!11 = !DILocation(line: 38, column: 3, scope: !8)
!12 = !DILocation(line: 40, column: 7, scope: !8)
!13 = !DILocation(line: 40, column: 37, scope: !8)
!14 = !DILocation(line: 41, column: 15, scope: !8)
!15 = !DILocation(line: 41, column: 13, scope: !8)
!16 = !DILocation(line: 42, column: 15, scope: !8)
!17 = !DILocation(line: 42, column: 13, scope: !8)
!18 = !DILocation(line: 43, column: 3, scope: !8)
!19 = !DILocation(line: 45, column: 7, scope: !8)
!20 = !DILocation(line: 45, column: 37, scope: !8)
!21 = !DILocation(line: 46, column: 15, scope: !8)
!22 = !DILocation(line: 46, column: 13, scope: !8)
!23 = !DILocation(line: 47, column: 15, scope: !8)
!24 = !DILocation(line: 47, column: 13, scope: !8)
!25 = !DILocation(line: 48, column: 3, scope: !8)
!26 = !DILocation(line: 50, column: 7, scope: !8)
!27 = !DILocation(line: 50, column: 37, scope: !8)
!28 = !DILocation(line: 50, column: 53, scope: !8)
!29 = !DILocation(line: 50, column: 51, scope: !8)
!30 = !DILocation(line: 50, column: 43, scope: !8)
!31 = !DILocation(line: 52, column: 7, scope: !8)
!32 = !DILocation(line: 52, column: 37, scope: !8)
!33 = !DILocation(line: 52, column: 53, scope: !8)
!34 = !DILocation(line: 52, column: 51, scope: !8)
!35 = !DILocation(line: 52, column: 43, scope: !8)
!36 = !DILocation(line: 53, column: 1, scope: !8)
!37 = distinct !DISubprogram(name: "svp_simple_004_001_isr_1", scope: !1, file: !1, line: 55, type: !9, isLocal: false, isDefinition: true, scopeLine: 55, isOptimized: false, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 56, column: 33, scope: !37)
!39 = !DILocation(line: 58, column: 7, scope: !37)
!40 = !DILocation(line: 58, column: 37, scope: !37)
!41 = !DILocation(line: 59, column: 36, scope: !37)
!42 = !DILocation(line: 59, column: 5, scope: !37)
!43 = !DILocation(line: 61, column: 36, scope: !37)
!44 = !DILocation(line: 63, column: 3, scope: !37)
!45 = !DILocation(line: 64, column: 1, scope: !37)
!46 = distinct !DISubprogram(name: "svp_simple_004_001_isr_2", scope: !1, file: !1, line: 66, type: !9, isLocal: false, isDefinition: true, scopeLine: 66, isOptimized: false, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 67, column: 7, scope: !46)
!48 = !DILocation(line: 67, column: 37, scope: !46)
!49 = !DILocation(line: 68, column: 36, scope: !46)
!50 = !DILocation(line: 68, column: 5, scope: !46)
!51 = !DILocation(line: 69, column: 1, scope: !46)
