; ModuleID = 'svp_simple_002_001.c'
source_filename = "svp_simple_002_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_002_001_global_array = common global [10000 x i32] zeroinitializer, align 16
@casee2_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_002_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !10
  call void (...) @idlerun(), !dbg !11
  ret void, !dbg !12
}

declare void @init(...) #1

declare void @idlerun(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_002_001_isr_1() #0 !dbg !13 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4, !dbg !14
  br label %4, !dbg !15

; <label>:4:                                      ; preds = %16, %0
  %5 = load i32, i32* %3, align 4, !dbg !16
  %6 = icmp slt i32 %5, 10000, !dbg !17
  br i1 %6, label %7, label %19, !dbg !18

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %3, align 4, !dbg !19
  %9 = icmp eq i32 %8, 9999, !dbg !20
  br i1 %9, label %10, label %11, !dbg !19

; <label>:10:                                     ; preds = %7
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !21
  br label %11, !dbg !22

; <label>:11:                                     ; preds = %10, %7
  %12 = load i32, i32* %3, align 4, !dbg !23
  %13 = icmp eq i32 %12, 10001, !dbg !24
  br i1 %13, label %14, label %15, !dbg !23

; <label>:14:                                     ; preds = %11
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !25
  br label %15, !dbg !26

; <label>:15:                                     ; preds = %14, %11
  br label %16, !dbg !27

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %3, align 4, !dbg !28
  %18 = add nsw i32 %17, 1, !dbg !28
  store i32 %18, i32* %3, align 4, !dbg !28
  br label %4, !dbg !18, !llvm.loop !29

; <label>:19:                                     ; preds = %4
  %20 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !30
  %21 = sub nsw i32 %20, 10, !dbg !31
  store i32 %21, i32* %1, align 4, !dbg !32
  %22 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 0), align 16, !dbg !33
  %23 = add nsw i32 %22, 10, !dbg !34
  store i32 %23, i32* %2, align 4, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_002_001_isr_2() #0 !dbg !37 {
  call void (...) @idlerun(), !dbg !38
  store volatile i32 999, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !39
  ret void, !dbg !40
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_002_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_002")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_002_001_main", scope: !1, file: !1, line: 25, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !8)
!11 = !DILocation(line: 27, column: 3, scope: !8)
!12 = !DILocation(line: 28, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "svp_simple_002_001_isr_1", scope: !1, file: !1, line: 30, type: !9, isLocal: false, isDefinition: true, scopeLine: 30, isOptimized: false, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 32, column: 12, scope: !13)
!15 = !DILocation(line: 32, column: 8, scope: !13)
!16 = !DILocation(line: 32, column: 19, scope: !13)
!17 = !DILocation(line: 32, column: 21, scope: !13)
!18 = !DILocation(line: 32, column: 3, scope: !13)
!19 = !DILocation(line: 33, column: 9, scope: !13)
!20 = !DILocation(line: 33, column: 11, scope: !13)
!21 = !DILocation(line: 33, column: 64, scope: !13)
!22 = !DILocation(line: 33, column: 23, scope: !13)
!23 = !DILocation(line: 34, column: 9, scope: !13)
!24 = !DILocation(line: 34, column: 11, scope: !13)
!25 = !DILocation(line: 35, column: 48, scope: !13)
!26 = !DILocation(line: 35, column: 7, scope: !13)
!27 = !DILocation(line: 36, column: 3, scope: !13)
!28 = !DILocation(line: 32, column: 36, scope: !13)
!29 = distinct !{!29, !18, !27}
!30 = !DILocation(line: 37, column: 13, scope: !13)
!31 = !DILocation(line: 37, column: 54, scope: !13)
!32 = !DILocation(line: 37, column: 11, scope: !13)
!33 = !DILocation(line: 39, column: 12, scope: !13)
!34 = !DILocation(line: 39, column: 47, scope: !13)
!35 = !DILocation(line: 39, column: 10, scope: !13)
!36 = !DILocation(line: 40, column: 1, scope: !13)
!37 = distinct !DISubprogram(name: "svp_simple_002_001_isr_2", scope: !1, file: !1, line: 42, type: !9, isLocal: false, isDefinition: true, scopeLine: 42, isOptimized: false, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 43, column: 3, scope: !37)
!39 = !DILocation(line: 44, column: 44, scope: !37)
!40 = !DILocation(line: 46, column: 1, scope: !37)
