; ModuleID = 'svp_simple_007_001.c'
source_filename = "svp_simple_007_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_007_001_global_array = common global [5 x i32] zeroinitializer, align 16
@svp_simple_007_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_007_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  %4 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !11
  %5 = sext i32 %4 to i64, !dbg !12
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %5, !dbg !12
  store volatile i32 1, i32* %6, align 4, !dbg !13
  %7 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !14
  %8 = sext i32 %7 to i64, !dbg !15
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %8, !dbg !15
  %10 = load volatile i32, i32* %9, align 4, !dbg !15
  store i32 %10, i32* %2, align 4, !dbg !16
  %11 = call i32 (...) @rand(), !dbg !17
  store i32 %11, i32* %3, align 4, !dbg !18
  %12 = load i32, i32* %3, align 4, !dbg !19
  %13 = icmp eq i32 %12, 2, !dbg !20
  br i1 %13, label %14, label %18, !dbg !19

; <label>:14:                                     ; preds = %0
  %15 = load i32, i32* %3, align 4, !dbg !21
  %16 = sext i32 %15 to i64, !dbg !22
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %16, !dbg !22
  store volatile i32 2, i32* %17, align 4, !dbg !23
  br label %22, !dbg !22

; <label>:18:                                     ; preds = %0
  %19 = load i32, i32* %3, align 4, !dbg !24
  %20 = sext i32 %19 to i64, !dbg !25
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %20, !dbg !25
  store volatile i32 9, i32* %21, align 4, !dbg !26
  br label %22

; <label>:22:                                     ; preds = %18, %14
  %23 = load volatile i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !27
  store i32 %23, i32* %1, align 4, !dbg !28
  ret void, !dbg !29
}

declare void @init(...) #1

declare i32 @rand(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_007_001_isr_1() #0 !dbg !30 {
  call void (...) @idlerun(), !dbg !31
  store volatile i32 9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !32
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !33
  %2 = add nsw i32 %1, 1, !dbg !33
  store volatile i32 %2, i32* @svp_simple_007_001_global_var, align 4, !dbg !33
  %3 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !34
  %4 = sext i32 %3 to i64, !dbg !35
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %4, !dbg !35
  store volatile i32 9, i32* %5, align 4, !dbg !36
  ret void, !dbg !37
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_007_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_007")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_007_001_main", scope: !1, file: !1, line: 26, type: !9, isLocal: false, isDefinition: true, scopeLine: 26, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 27, column: 3, scope: !8)
!11 = !DILocation(line: 32, column: 35, scope: !8)
!12 = !DILocation(line: 32, column: 3, scope: !8)
!13 = !DILocation(line: 32, column: 66, scope: !8)
!14 = !DILocation(line: 34, column: 45, scope: !8)
!15 = !DILocation(line: 34, column: 13, scope: !8)
!16 = !DILocation(line: 34, column: 11, scope: !8)
!17 = !DILocation(line: 36, column: 11, scope: !8)
!18 = !DILocation(line: 36, column: 7, scope: !8)
!19 = !DILocation(line: 37, column: 7, scope: !8)
!20 = !DILocation(line: 37, column: 9, scope: !8)
!21 = !DILocation(line: 38, column: 37, scope: !8)
!22 = !DILocation(line: 38, column: 5, scope: !8)
!23 = !DILocation(line: 38, column: 40, scope: !8)
!24 = !DILocation(line: 40, column: 37, scope: !8)
!25 = !DILocation(line: 40, column: 5, scope: !8)
!26 = !DILocation(line: 40, column: 40, scope: !8)
!27 = !DILocation(line: 42, column: 13, scope: !8)
!28 = !DILocation(line: 42, column: 11, scope: !8)
!29 = !DILocation(line: 43, column: 1, scope: !8)
!30 = distinct !DISubprogram(name: "svp_simple_007_001_isr_1", scope: !1, file: !1, line: 45, type: !9, isLocal: false, isDefinition: true, scopeLine: 45, isOptimized: false, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 46, column: 3, scope: !30)
!32 = !DILocation(line: 47, column: 38, scope: !30)
!33 = !DILocation(line: 49, column: 33, scope: !30)
!34 = !DILocation(line: 50, column: 35, scope: !30)
!35 = !DILocation(line: 50, column: 3, scope: !30)
!36 = !DILocation(line: 50, column: 66, scope: !30)
!37 = !DILocation(line: 51, column: 1, scope: !30)
