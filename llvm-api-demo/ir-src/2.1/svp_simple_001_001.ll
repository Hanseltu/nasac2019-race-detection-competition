; ModuleID = 'svp_simple_001_001.c'
source_filename = "svp_simple_001_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_001_001_global_flag = global i32 0, align 4
@svp_simple_001_001_global_array = common global [10000 x i32] zeroinitializer, align 16
@svp_simple_001_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_001_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  call void @disable_isr(i32 2), !dbg !11
  call void (...) @idlerun(), !dbg !12
  store i32 0, i32* %1, align 4, !dbg !13
  br label %3, !dbg !14

; <label>:3:                                      ; preds = %10, %0
  %4 = load i32, i32* %1, align 4, !dbg !15
  %5 = icmp slt i32 %4, 10000, !dbg !16
  br i1 %5, label %6, label %13, !dbg !17

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %1, align 4, !dbg !18
  %8 = sext i32 %7 to i64, !dbg !19
  %9 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %8, !dbg !19
  store volatile i32 0, i32* %9, align 4, !dbg !20
  br label %10, !dbg !19

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %1, align 4, !dbg !21
  %12 = add nsw i32 %11, 1, !dbg !21
  store i32 %12, i32* %1, align 4, !dbg !21
  br label %3, !dbg !17, !llvm.loop !22

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %2, align 4, !dbg !24
  br label %14, !dbg !25

; <label>:14:                                     ; preds = %25, %13
  %15 = load i32, i32* %2, align 4, !dbg !26
  %16 = icmp slt i32 %15, 10000, !dbg !27
  br i1 %16, label %17, label %28, !dbg !28

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %2, align 4, !dbg !29
  %19 = icmp eq i32 %18, 9999, !dbg !30
  br i1 %19, label %20, label %24, !dbg !29

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %2, align 4, !dbg !31
  %22 = sext i32 %21 to i64, !dbg !32
  %23 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %22, !dbg !32
  store volatile i32 1, i32* %23, align 4, !dbg !33
  br label %24, !dbg !32

; <label>:24:                                     ; preds = %20, %17
  br label %25, !dbg !34

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %2, align 4, !dbg !35
  %27 = add nsw i32 %26, 1, !dbg !35
  store i32 %27, i32* %2, align 4, !dbg !35
  br label %14, !dbg !28, !llvm.loop !36

; <label>:28:                                     ; preds = %14
  ret void, !dbg !37
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

declare void @idlerun(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_001_001_isr_1() #0 !dbg !38 {
  call void (...) @idlerun(), !dbg !39
  store volatile i32 1, i32* @svp_simple_001_001_global_flag, align 4, !dbg !40
  store volatile i32 0, i32* @svp_simple_001_001_global_var, align 4, !dbg !41
  store volatile i32 1, i32* @svp_simple_001_001_global_var, align 4, !dbg !42
  call void @enable_isr(i32 2), !dbg !43
  call void (...) @idlerun(), !dbg !44
  ret void, !dbg !45
}

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_001_001_isr_2() #0 !dbg !46 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load volatile i32, i32* @svp_simple_001_001_global_flag, align 4, !dbg !47
  %5 = icmp eq i32 %4, 1, !dbg !48
  br i1 %5, label %6, label %8, !dbg !47

; <label>:6:                                      ; preds = %0
  %7 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 9999), align 4, !dbg !49
  store i32 %7, i32* %1, align 4, !dbg !50
  br label %10, !dbg !51

; <label>:8:                                      ; preds = %0
  %9 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 0), align 16, !dbg !52
  store i32 %9, i32* %1, align 4, !dbg !53
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 1000), align 16, !dbg !54
  store i32 %11, i32* %2, align 4, !dbg !55
  %12 = load volatile i32, i32* @svp_simple_001_001_global_var, align 4, !dbg !56
  store i32 %12, i32* %3, align 4, !dbg !57
  ret void, !dbg !58
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_001_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_001")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_001_001_main", scope: !1, file: !1, line: 25, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !8)
!11 = !DILocation(line: 28, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 3, scope: !8)
!13 = !DILocation(line: 32, column: 12, scope: !8)
!14 = !DILocation(line: 32, column: 8, scope: !8)
!15 = !DILocation(line: 32, column: 19, scope: !8)
!16 = !DILocation(line: 32, column: 21, scope: !8)
!17 = !DILocation(line: 32, column: 3, scope: !8)
!18 = !DILocation(line: 32, column: 67, scope: !8)
!19 = !DILocation(line: 32, column: 35, scope: !8)
!20 = !DILocation(line: 32, column: 70, scope: !8)
!21 = !DILocation(line: 32, column: 31, scope: !8)
!22 = distinct !{!22, !17, !23}
!23 = !DILocation(line: 32, column: 72, scope: !8)
!24 = !DILocation(line: 34, column: 12, scope: !8)
!25 = !DILocation(line: 34, column: 8, scope: !8)
!26 = !DILocation(line: 34, column: 19, scope: !8)
!27 = !DILocation(line: 34, column: 21, scope: !8)
!28 = !DILocation(line: 34, column: 3, scope: !8)
!29 = !DILocation(line: 35, column: 9, scope: !8)
!30 = !DILocation(line: 35, column: 11, scope: !8)
!31 = !DILocation(line: 35, column: 55, scope: !8)
!32 = !DILocation(line: 35, column: 23, scope: !8)
!33 = !DILocation(line: 35, column: 58, scope: !8)
!34 = !DILocation(line: 36, column: 3, scope: !8)
!35 = !DILocation(line: 34, column: 31, scope: !8)
!36 = distinct !{!36, !28, !34}
!37 = !DILocation(line: 37, column: 1, scope: !8)
!38 = distinct !DISubprogram(name: "svp_simple_001_001_isr_1", scope: !1, file: !1, line: 39, type: !9, isLocal: false, isDefinition: true, scopeLine: 39, isOptimized: false, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 40, column: 3, scope: !38)
!40 = !DILocation(line: 41, column: 34, scope: !38)
!41 = !DILocation(line: 43, column: 33, scope: !38)
!42 = !DILocation(line: 44, column: 33, scope: !38)
!43 = !DILocation(line: 46, column: 3, scope: !38)
!44 = !DILocation(line: 48, column: 3, scope: !38)
!45 = !DILocation(line: 49, column: 1, scope: !38)
!46 = distinct !DISubprogram(name: "svp_simple_001_001_isr_2", scope: !1, file: !1, line: 51, type: !9, isLocal: false, isDefinition: true, scopeLine: 51, isOptimized: false, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 53, column: 7, scope: !46)
!48 = !DILocation(line: 53, column: 38, scope: !46)
!49 = !DILocation(line: 55, column: 15, scope: !46)
!50 = !DILocation(line: 55, column: 13, scope: !46)
!51 = !DILocation(line: 55, column: 5, scope: !46)
!52 = !DILocation(line: 58, column: 9, scope: !46)
!53 = !DILocation(line: 57, column: 13, scope: !46)
!54 = !DILocation(line: 60, column: 13, scope: !46)
!55 = !DILocation(line: 60, column: 11, scope: !46)
!56 = !DILocation(line: 64, column: 13, scope: !46)
!57 = !DILocation(line: 64, column: 11, scope: !46)
!58 = !DILocation(line: 65, column: 1, scope: !46)
