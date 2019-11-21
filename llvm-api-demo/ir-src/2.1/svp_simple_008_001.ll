; ModuleID = 'svp_simple_008_001.c'
source_filename = "svp_simple_008_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_008_001_global_array = common global [100 x i32] zeroinitializer, align 16
@svp_simple_008_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_008_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store i32 1, i32* %1, align 4, !dbg !11
  store i32 2, i32* %2, align 4, !dbg !12
  %3 = load i32, i32* %1, align 4, !dbg !13
  %4 = load i32, i32* %2, align 4, !dbg !14
  %5 = add nsw i32 %3, %4, !dbg !15
  %6 = sext i32 %5 to i64, !dbg !16
  %7 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %6, !dbg !16
  store volatile i32 9, i32* %7, align 4, !dbg !17
  store volatile i32 1, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !18
  call void @svp_simple_008_001_func_1(), !dbg !19
  ret void, !dbg !20
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_008_001_func_1() #0 !dbg !21 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 1, i32* %3, align 4, !dbg !22
  store i32 2, i32* %4, align 4, !dbg !23
  store i32 1, i32* %5, align 4, !dbg !24
  store i32 3, i32* %6, align 4, !dbg !25
  %7 = load i32, i32* %3, align 4, !dbg !26
  %8 = mul nsw i32 %7, 20, !dbg !27
  %9 = load i32, i32* %4, align 4, !dbg !28
  %10 = mul nsw i32 %9, 10, !dbg !29
  %11 = add nsw i32 %8, %10, !dbg !30
  %12 = sext i32 %11 to i64, !dbg !31
  %13 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %12, !dbg !31
  %14 = load volatile i32, i32* %13, align 4, !dbg !31
  store i32 %14, i32* %1, align 4, !dbg !32
  %15 = load i32, i32* %5, align 4, !dbg !33
  %16 = load i32, i32* %6, align 4, !dbg !34
  %17 = add nsw i32 %15, %16, !dbg !35
  %18 = sext i32 %17 to i64, !dbg !36
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %18, !dbg !36
  %20 = load volatile i32, i32* %19, align 4, !dbg !36
  store i32 %20, i32* %2, align 4, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_008_001_isr_1() #0 !dbg !39 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4, !dbg !40
  br label %2, !dbg !41

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !42
  %4 = icmp slt i32 %3, 100, !dbg !43
  br i1 %4, label %5, label %12, !dbg !44

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !45
  %7 = sext i32 %6 to i64, !dbg !46
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %7, !dbg !46
  store volatile i32 5, i32* %8, align 4, !dbg !47
  br label %9, !dbg !46

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !48
  %11 = add nsw i32 %10, 1, !dbg !48
  store i32 %11, i32* %1, align 4, !dbg !48
  br label %2, !dbg !44, !llvm.loop !49

; <label>:12:                                     ; preds = %2
  ret void, !dbg !51
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_008_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_008")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_008_001_main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !8)
!11 = !DILocation(line: 30, column: 7, scope: !8)
!12 = !DILocation(line: 31, column: 7, scope: !8)
!13 = !DILocation(line: 33, column: 35, scope: !8)
!14 = !DILocation(line: 33, column: 39, scope: !8)
!15 = !DILocation(line: 33, column: 37, scope: !8)
!16 = !DILocation(line: 33, column: 3, scope: !8)
!17 = !DILocation(line: 33, column: 42, scope: !8)
!18 = !DILocation(line: 35, column: 39, scope: !8)
!19 = !DILocation(line: 37, column: 3, scope: !8)
!20 = !DILocation(line: 38, column: 1, scope: !8)
!21 = distinct !DISubprogram(name: "svp_simple_008_001_func_1", scope: !1, file: !1, line: 40, type: !9, isLocal: false, isDefinition: true, scopeLine: 40, isOptimized: false, unit: !0, retainedNodes: !2)
!22 = !DILocation(line: 42, column: 7, scope: !21)
!23 = !DILocation(line: 43, column: 7, scope: !21)
!24 = !DILocation(line: 44, column: 7, scope: !21)
!25 = !DILocation(line: 45, column: 7, scope: !21)
!26 = !DILocation(line: 46, column: 45, scope: !21)
!27 = !DILocation(line: 46, column: 47, scope: !21)
!28 = !DILocation(line: 46, column: 54, scope: !21)
!29 = !DILocation(line: 46, column: 56, scope: !21)
!30 = !DILocation(line: 46, column: 52, scope: !21)
!31 = !DILocation(line: 46, column: 13, scope: !21)
!32 = !DILocation(line: 46, column: 11, scope: !21)
!33 = !DILocation(line: 48, column: 45, scope: !21)
!34 = !DILocation(line: 48, column: 49, scope: !21)
!35 = !DILocation(line: 48, column: 47, scope: !21)
!36 = !DILocation(line: 48, column: 13, scope: !21)
!37 = !DILocation(line: 48, column: 11, scope: !21)
!38 = !DILocation(line: 49, column: 1, scope: !21)
!39 = distinct !DISubprogram(name: "svp_simple_008_001_isr_1", scope: !1, file: !1, line: 51, type: !9, isLocal: false, isDefinition: true, scopeLine: 51, isOptimized: false, unit: !0, retainedNodes: !2)
!40 = !DILocation(line: 52, column: 12, scope: !39)
!41 = !DILocation(line: 52, column: 8, scope: !39)
!42 = !DILocation(line: 52, column: 19, scope: !39)
!43 = !DILocation(line: 52, column: 21, scope: !39)
!44 = !DILocation(line: 52, column: 3, scope: !39)
!45 = !DILocation(line: 52, column: 65, scope: !39)
!46 = !DILocation(line: 52, column: 33, scope: !39)
!47 = !DILocation(line: 52, column: 68, scope: !39)
!48 = !DILocation(line: 52, column: 29, scope: !39)
!49 = distinct !{!49, !44, !50}
!50 = !DILocation(line: 52, column: 70, scope: !39)
!51 = !DILocation(line: 53, column: 1, scope: !39)
