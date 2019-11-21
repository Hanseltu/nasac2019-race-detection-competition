; ModuleID = 'svp_simple_020_001.c'
source_filename = "svp_simple_020_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_020_001_global_flag = global i32 0, align 4
@svp_simple_020_001_global_para = common global i32 0, align 4
@svp_simple_020_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_020_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  call void @disable_isr(i32 2), !dbg !11
  %5 = call i32 (...) @rand(), !dbg !12
  store i32 %5, i32* %3, align 4, !dbg !13
  %6 = call i32 (...) @rand(), !dbg !14
  store i32 %6, i32* %4, align 4, !dbg !15
  %7 = load i32, i32* %3, align 4, !dbg !16
  %8 = load i32, i32* %4, align 4, !dbg !17
  %9 = add nsw i32 %7, %8, !dbg !18
  %10 = load volatile i32, i32* @svp_simple_020_001_global_para, align 4, !dbg !19
  %11 = icmp sgt i32 %9, %10, !dbg !20
  br i1 %11, label %12, label %14, !dbg !16

; <label>:12:                                     ; preds = %0
  %13 = load volatile i32, i32* @svp_simple_020_001_global_var, align 4, !dbg !21
  store i32 %13, i32* %1, align 4, !dbg !22
  br label %14, !dbg !23

; <label>:14:                                     ; preds = %12, %0
  %15 = load i32, i32* %3, align 4, !dbg !24
  %16 = load i32, i32* %4, align 4, !dbg !25
  %17 = add nsw i32 %15, %16, !dbg !26
  %18 = load volatile i32, i32* @svp_simple_020_001_global_para, align 4, !dbg !27
  %19 = icmp slt i32 %17, %18, !dbg !28
  br i1 %19, label %20, label %22, !dbg !24

; <label>:20:                                     ; preds = %14
  %21 = load volatile i32, i32* @svp_simple_020_001_global_var, align 4, !dbg !29
  store i32 %21, i32* %2, align 4, !dbg !30
  br label %22, !dbg !31

; <label>:22:                                     ; preds = %20, %14
  ret void, !dbg !32
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

declare i32 @rand(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_020_001_isr_1() #0 !dbg !33 {
  store volatile i32 1, i32* @svp_simple_020_001_global_var, align 4, !dbg !34
  store volatile i32 1, i32* @svp_simple_020_001_global_flag, align 4, !dbg !35
  call void @enable_isr(i32 2), !dbg !36
  ret void, !dbg !37
}

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_020_001_isr_2() #0 !dbg !38 {
  %1 = load volatile i32, i32* @svp_simple_020_001_global_flag, align 4, !dbg !39
  %2 = icmp eq i32 %1, 1, !dbg !40
  br i1 %2, label %3, label %4, !dbg !39

; <label>:3:                                      ; preds = %0
  store volatile i32 11, i32* @svp_simple_020_001_global_para, align 4, !dbg !41
  store volatile i32 5, i32* @svp_simple_020_001_global_var, align 4, !dbg !42
  br label %4, !dbg !43

; <label>:4:                                      ; preds = %3, %0
  ret void, !dbg !44
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_020_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_020")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_020_001_main", scope: !1, file: !1, line: 25, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !8)
!11 = !DILocation(line: 27, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 35, scope: !8)
!13 = !DILocation(line: 30, column: 33, scope: !8)
!14 = !DILocation(line: 31, column: 35, scope: !8)
!15 = !DILocation(line: 31, column: 33, scope: !8)
!16 = !DILocation(line: 36, column: 7, scope: !8)
!17 = !DILocation(line: 36, column: 39, scope: !8)
!18 = !DILocation(line: 36, column: 37, scope: !8)
!19 = !DILocation(line: 36, column: 71, scope: !8)
!20 = !DILocation(line: 36, column: 69, scope: !8)
!21 = !DILocation(line: 37, column: 15, scope: !8)
!22 = !DILocation(line: 37, column: 13, scope: !8)
!23 = !DILocation(line: 37, column: 5, scope: !8)
!24 = !DILocation(line: 39, column: 7, scope: !8)
!25 = !DILocation(line: 39, column: 39, scope: !8)
!26 = !DILocation(line: 39, column: 37, scope: !8)
!27 = !DILocation(line: 39, column: 71, scope: !8)
!28 = !DILocation(line: 39, column: 69, scope: !8)
!29 = !DILocation(line: 40, column: 15, scope: !8)
!30 = !DILocation(line: 40, column: 13, scope: !8)
!31 = !DILocation(line: 40, column: 5, scope: !8)
!32 = !DILocation(line: 41, column: 1, scope: !8)
!33 = distinct !DISubprogram(name: "svp_simple_020_001_isr_1", scope: !1, file: !1, line: 43, type: !9, isLocal: false, isDefinition: true, scopeLine: 43, isOptimized: false, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 44, column: 33, scope: !33)
!35 = !DILocation(line: 46, column: 34, scope: !33)
!36 = !DILocation(line: 47, column: 3, scope: !33)
!37 = !DILocation(line: 48, column: 1, scope: !33)
!38 = distinct !DISubprogram(name: "svp_simple_020_001_isr_2", scope: !1, file: !1, line: 50, type: !9, isLocal: false, isDefinition: true, scopeLine: 50, isOptimized: false, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 51, column: 7, scope: !38)
!40 = !DILocation(line: 51, column: 38, scope: !38)
!41 = !DILocation(line: 52, column: 36, scope: !38)
!42 = !DILocation(line: 53, column: 35, scope: !38)
!43 = !DILocation(line: 54, column: 3, scope: !38)
!44 = !DILocation(line: 55, column: 1, scope: !38)
