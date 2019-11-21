; ModuleID = 'svp_simple_022_001.c'
source_filename = "svp_simple_022_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_022_001_global_var1 = common global i32 0, align 4
@svp_simple_022_001_global_array = common global [256 x i32] zeroinitializer, align 16
@svp_simple_022_001_global_var3 = common global i32 0, align 4
@svp_simple_022_001_global_var2 = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  call void @svp_simple_022_001_init(), !dbg !10
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !11
  call void @svp_simple_022_001_func_1(), !dbg !12
  store i32 0, i32* %1, align 4, !dbg !13
  br label %2, !dbg !14

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !15
  %4 = icmp slt i32 %3, 256, !dbg !16
  br i1 %4, label %5, label %12, !dbg !17

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !18
  %7 = sext i32 %6 to i64, !dbg !19
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* @svp_simple_022_001_global_array, i64 0, i64 %7, !dbg !19
  store volatile i32 0, i32* %8, align 4, !dbg !20
  br label %9, !dbg !21

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !22
  %11 = add nsw i32 %10, 1, !dbg !22
  store i32 %11, i32* %1, align 4, !dbg !22
  br label %2, !dbg !17, !llvm.loop !23

; <label>:12:                                     ; preds = %2
  call void @svp_simple_022_001_func_2(), !dbg !24
  %13 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !25
  store volatile i32 %13, i32* @svp_simple_022_001_global_var3, align 4, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_init() #0 !dbg !28 {
  %1 = call i32 (...) @rand(), !dbg !29
  store volatile i32 %1, i32* @svp_simple_022_001_global_var1, align 4, !dbg !30
  %2 = call i32 (...) @rand(), !dbg !31
  store volatile i32 %2, i32* @svp_simple_022_001_global_var2, align 4, !dbg !32
  %3 = call i32 (...) @rand(), !dbg !33
  store volatile i32 %3, i32* @svp_simple_022_001_global_var3, align 4, !dbg !34
  call void (...) @init(), !dbg !35
  ret void, !dbg !36
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_func_1() #0 !dbg !37 {
  call void @svp_simple_022_001_func_3(), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_func_2() #0 !dbg !40 {
  call void @svp_simple_022_001_func_4(), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_func_3() #0 !dbg !43 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !44
  %2 = icmp sge i32 %1, 12, !dbg !45
  br i1 %2, label %3, label %4, !dbg !44

; <label>:3:                                      ; preds = %0
  store volatile i32 12, i32* @svp_simple_022_001_global_var1, align 4, !dbg !46
  br label %5, !dbg !47

; <label>:4:                                      ; preds = %0
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !48
  br label %5

; <label>:5:                                      ; preds = %4, %3
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_func_4() #0 !dbg !50 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !51
  store volatile i32 %1, i32* @svp_simple_022_001_global_var3, align 4, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_022_001_isr_1() #0 !dbg !54 {
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !55
  ret void, !dbg !56
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_022_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_022")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_022_001_main", scope: !1, file: !1, line: 29, type: !9, isLocal: false, isDefinition: true, scopeLine: 29, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 30, column: 3, scope: !8)
!11 = !DILocation(line: 32, column: 34, scope: !8)
!12 = !DILocation(line: 33, column: 3, scope: !8)
!13 = !DILocation(line: 35, column: 10, scope: !8)
!14 = !DILocation(line: 35, column: 8, scope: !8)
!15 = !DILocation(line: 35, column: 15, scope: !8)
!16 = !DILocation(line: 35, column: 17, scope: !8)
!17 = !DILocation(line: 35, column: 3, scope: !8)
!18 = !DILocation(line: 36, column: 37, scope: !8)
!19 = !DILocation(line: 36, column: 5, scope: !8)
!20 = !DILocation(line: 36, column: 40, scope: !8)
!21 = !DILocation(line: 37, column: 3, scope: !8)
!22 = !DILocation(line: 35, column: 25, scope: !8)
!23 = distinct !{!23, !17, !21}
!24 = !DILocation(line: 38, column: 3, scope: !8)
!25 = !DILocation(line: 39, column: 36, scope: !8)
!26 = !DILocation(line: 39, column: 34, scope: !8)
!27 = !DILocation(line: 40, column: 1, scope: !8)
!28 = distinct !DISubprogram(name: "svp_simple_022_001_init", scope: !1, file: !1, line: 42, type: !9, isLocal: false, isDefinition: true, scopeLine: 42, isOptimized: false, unit: !0, retainedNodes: !2)
!29 = !DILocation(line: 43, column: 36, scope: !28)
!30 = !DILocation(line: 43, column: 34, scope: !28)
!31 = !DILocation(line: 44, column: 36, scope: !28)
!32 = !DILocation(line: 44, column: 34, scope: !28)
!33 = !DILocation(line: 45, column: 36, scope: !28)
!34 = !DILocation(line: 45, column: 34, scope: !28)
!35 = !DILocation(line: 47, column: 3, scope: !28)
!36 = !DILocation(line: 48, column: 1, scope: !28)
!37 = distinct !DISubprogram(name: "svp_simple_022_001_func_1", scope: !1, file: !1, line: 50, type: !9, isLocal: false, isDefinition: true, scopeLine: 50, isOptimized: false, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 50, column: 36, scope: !37)
!39 = !DILocation(line: 50, column: 65, scope: !37)
!40 = distinct !DISubprogram(name: "svp_simple_022_001_func_2", scope: !1, file: !1, line: 52, type: !9, isLocal: false, isDefinition: true, scopeLine: 52, isOptimized: false, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 52, column: 36, scope: !40)
!42 = !DILocation(line: 52, column: 65, scope: !40)
!43 = distinct !DISubprogram(name: "svp_simple_022_001_func_3", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, isOptimized: false, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 55, column: 7, scope: !43)
!45 = !DILocation(line: 55, column: 38, scope: !43)
!46 = !DILocation(line: 56, column: 36, scope: !43)
!47 = !DILocation(line: 57, column: 3, scope: !43)
!48 = !DILocation(line: 58, column: 36, scope: !43)
!49 = !DILocation(line: 60, column: 1, scope: !43)
!50 = distinct !DISubprogram(name: "svp_simple_022_001_func_4", scope: !1, file: !1, line: 62, type: !9, isLocal: false, isDefinition: true, scopeLine: 62, isOptimized: false, unit: !0, retainedNodes: !2)
!51 = !DILocation(line: 63, column: 36, scope: !50)
!52 = !DILocation(line: 63, column: 34, scope: !50)
!53 = !DILocation(line: 64, column: 1, scope: !50)
!54 = distinct !DISubprogram(name: "svp_simple_022_001_isr_1", scope: !1, file: !1, line: 65, type: !9, isLocal: false, isDefinition: true, scopeLine: 65, isOptimized: false, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 66, column: 34, scope: !54)
!56 = !DILocation(line: 67, column: 1, scope: !54)
