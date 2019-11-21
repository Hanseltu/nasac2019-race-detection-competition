; ModuleID = 'svp_simple_015_001.c'
source_filename = "svp_simple_015_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_015_001_global_var1 = common global i32 0, align 4
@svp_simple_015_001_global_var2 = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_015_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  %5 = call i32 (...) @rand(), !dbg !11
  store i32 %5, i32* %1, align 4, !dbg !12
  %6 = call i32 (...) @rand(), !dbg !13
  store i32 %6, i32* %2, align 4, !dbg !14
  %7 = call i32 (...) @rand(), !dbg !15
  store i32 %7, i32* %4, align 4, !dbg !16
  %8 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !17
  %9 = load i32, i32* %2, align 4, !dbg !18
  %10 = icmp slt i32 %8, %9, !dbg !19
  br i1 %10, label %11, label %19, !dbg !20

; <label>:11:                                     ; preds = %0
  %12 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !21
  %13 = load i32, i32* %1, align 4, !dbg !22
  %14 = icmp sgt i32 %12, %13, !dbg !23
  br i1 %14, label %15, label %19, !dbg !24

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %1, align 4, !dbg !25
  %17 = load i32, i32* %2, align 4, !dbg !26
  %18 = add nsw i32 %16, %17, !dbg !27
  store i32 %18, i32* %3, align 4, !dbg !28
  br label %19, !dbg !29

; <label>:19:                                     ; preds = %15, %11, %0
  %20 = load i32, i32* %4, align 4, !dbg !30
  %21 = icmp eq i32 %20, 1, !dbg !31
  br i1 %21, label %22, label %24, !dbg !30

; <label>:22:                                     ; preds = %19
  %23 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !32
  br label %26, !dbg !30

; <label>:24:                                     ; preds = %19
  %25 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !33
  br label %26, !dbg !30

; <label>:26:                                     ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ], !dbg !30
  ret void, !dbg !34
}

declare void @init(...) #1

declare i32 @rand(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_015_001_isr_1() #0 !dbg !35 {
  call void (...) @idlerun(), !dbg !36
  store volatile i32 5, i32* @svp_simple_015_001_global_var1, align 4, !dbg !37
  store volatile i32 5, i32* @svp_simple_015_001_global_var2, align 4, !dbg !38
  ret void, !dbg !39
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_015_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_015")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_015_001_main", scope: !1, file: !1, line: 22, type: !9, isLocal: false, isDefinition: true, scopeLine: 22, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 23, column: 3, scope: !8)
!11 = !DILocation(line: 25, column: 11, scope: !8)
!12 = !DILocation(line: 25, column: 7, scope: !8)
!13 = !DILocation(line: 26, column: 11, scope: !8)
!14 = !DILocation(line: 26, column: 7, scope: !8)
!15 = !DILocation(line: 28, column: 11, scope: !8)
!16 = !DILocation(line: 28, column: 7, scope: !8)
!17 = !DILocation(line: 30, column: 8, scope: !8)
!18 = !DILocation(line: 30, column: 41, scope: !8)
!19 = !DILocation(line: 30, column: 39, scope: !8)
!20 = !DILocation(line: 30, column: 44, scope: !8)
!21 = !DILocation(line: 31, column: 8, scope: !8)
!22 = !DILocation(line: 31, column: 41, scope: !8)
!23 = !DILocation(line: 31, column: 39, scope: !8)
!24 = !DILocation(line: 30, column: 7, scope: !8)
!25 = !DILocation(line: 32, column: 9, scope: !8)
!26 = !DILocation(line: 32, column: 13, scope: !8)
!27 = !DILocation(line: 32, column: 11, scope: !8)
!28 = !DILocation(line: 32, column: 7, scope: !8)
!29 = !DILocation(line: 32, column: 5, scope: !8)
!30 = !DILocation(line: 34, column: 3, scope: !8)
!31 = !DILocation(line: 34, column: 5, scope: !8)
!32 = !DILocation(line: 34, column: 12, scope: !8)
!33 = !DILocation(line: 34, column: 45, scope: !8)
!34 = !DILocation(line: 35, column: 1, scope: !8)
!35 = distinct !DISubprogram(name: "svp_simple_015_001_isr_1", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 37, isOptimized: false, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 38, column: 3, scope: !35)
!37 = !DILocation(line: 39, column: 34, scope: !35)
!38 = !DILocation(line: 40, column: 34, scope: !35)
!39 = !DILocation(line: 41, column: 1, scope: !35)
