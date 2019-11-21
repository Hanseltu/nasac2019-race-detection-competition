; ModuleID = 'svp_simple_017_001.c'
source_filename = "svp_simple_017_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_017_001_global_var = common global i32 0, align 4
@svp_simple_017_001_local_array = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_017_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store i32 0, i32* %1, align 4, !dbg !11
  store volatile i32 0, i32* @svp_simple_017_001_global_var, align 4, !dbg !12
  br label %2, !dbg !13

; <label>:2:                                      ; preds = %11, %0
  %3 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !14
  %4 = icmp slt i32 %3, 100, !dbg !15
  br i1 %4, label %5, label %14, !dbg !16

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !17
  %7 = add nsw i32 %6, 1, !dbg !17
  store i32 %7, i32* %1, align 4, !dbg !17
  %8 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !18
  %9 = sext i32 %8 to i64, !dbg !19
  %10 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_017_001_local_array, i64 0, i64 %9, !dbg !19
  store volatile i32 %6, i32* %10, align 4, !dbg !20
  br label %11, !dbg !21

; <label>:11:                                     ; preds = %5
  %12 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !22
  %13 = add nsw i32 %12, 1, !dbg !22
  store volatile i32 %13, i32* @svp_simple_017_001_global_var, align 4, !dbg !22
  br label %2, !dbg !16, !llvm.loop !23

; <label>:14:                                     ; preds = %2
  ret void, !dbg !24
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_017_001_isr_1() #0 !dbg !25 {
  call void (...) @idlerun(), !dbg !26
  store volatile i32 50, i32* @svp_simple_017_001_global_var, align 4, !dbg !27
  %1 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !28
  %2 = sext i32 %1 to i64, !dbg !29
  %3 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_017_001_local_array, i64 0, i64 %2, !dbg !29
  store volatile i32 0, i32* %3, align 4, !dbg !30
  ret void, !dbg !31
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_017_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_017")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_017_001_main", scope: !1, file: !1, line: 25, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !8)
!11 = !DILocation(line: 27, column: 7, scope: !8)
!12 = !DILocation(line: 29, column: 38, scope: !8)
!13 = !DILocation(line: 29, column: 8, scope: !8)
!14 = !DILocation(line: 29, column: 43, scope: !8)
!15 = !DILocation(line: 29, column: 73, scope: !8)
!16 = !DILocation(line: 29, column: 3, scope: !8)
!17 = !DILocation(line: 32, column: 70, scope: !8)
!18 = !DILocation(line: 32, column: 36, scope: !8)
!19 = !DILocation(line: 32, column: 5, scope: !8)
!20 = !DILocation(line: 32, column: 67, scope: !8)
!21 = !DILocation(line: 33, column: 3, scope: !8)
!22 = !DILocation(line: 30, column: 37, scope: !8)
!23 = distinct !{!23, !16, !21}
!24 = !DILocation(line: 34, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "svp_simple_017_001_isr_1", scope: !1, file: !1, line: 36, type: !9, isLocal: false, isDefinition: true, scopeLine: 36, isOptimized: false, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 37, column: 3, scope: !25)
!27 = !DILocation(line: 39, column: 33, scope: !25)
!28 = !DILocation(line: 41, column: 34, scope: !25)
!29 = !DILocation(line: 41, column: 3, scope: !25)
!30 = !DILocation(line: 41, column: 65, scope: !25)
!31 = !DILocation(line: 42, column: 1, scope: !25)
