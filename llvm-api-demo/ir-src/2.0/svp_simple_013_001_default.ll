; ModuleID = 'svp_simple_013_001.c'
source_filename = "svp_simple_013_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_013_001_global_flag1 = global i32 0, align 4
@svp_simple_013_001_global_flag2 = global i32 1, align 4
@svp_simple_013_001_global_var1 = common global i32 0, align 4
@svp_simple_013_001_global_var2 = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_013_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  call void @disable_isr(i32 2), !dbg !11
  call void @disable_isr(i32 3), !dbg !12
  store volatile i32 5, i32* @svp_simple_013_001_global_var1, align 4, !dbg !13
  store volatile i32 5, i32* @svp_simple_013_001_global_var2, align 4, !dbg !14
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
  %13 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !22
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
  %19 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !28
  store i32 %19, i32* %2, align 4, !dbg !29
  %20 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !30
  store i32 %20, i32* %3, align 4, !dbg !31
  %21 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !32
  store i32 %21, i32* %4, align 4, !dbg !33
  ret void, !dbg !34
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_013_001_isr_1() #0 !dbg !35 {
  call void (...) @idlerun(), !dbg !36
  call void @enable_isr(i32 2), !dbg !37
  call void (...) @idlerun(), !dbg !38
  ret void, !dbg !39
}

declare void @idlerun(...) #1

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_013_001_isr_2() #0 !dbg !40 {
  call void (...) @idlerun(), !dbg !41
  store i32 1, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !42
  store i32 0, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !43
  call void @enable_isr(i32 3), !dbg !44
  call void (...) @idlerun(), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_013_001_isr_3() #0 !dbg !47 {
  %1 = load i32, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !48
  %2 = icmp eq i32 %1, 1, !dbg !49
  br i1 %2, label %3, label %4, !dbg !48

; <label>:3:                                      ; preds = %0
  store volatile i32 1, i32* @svp_simple_013_001_global_var1, align 4, !dbg !50
  br label %4, !dbg !51

; <label>:4:                                      ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !52
  %6 = icmp eq i32 %5, 1, !dbg !53
  br i1 %6, label %7, label %8, !dbg !52

; <label>:7:                                      ; preds = %4
  store volatile i32 1, i32* @svp_simple_013_001_global_var2, align 4, !dbg !54
  br label %8, !dbg !55

; <label>:8:                                      ; preds = %7, %4
  ret void, !dbg !56
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_013")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_013_001_main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !8)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 31, column: 3, scope: !8)
!13 = !DILocation(line: 33, column: 34, scope: !8)
!14 = !DILocation(line: 34, column: 34, scope: !8)
!15 = !DILocation(line: 38, column: 12, scope: !8)
!16 = !DILocation(line: 38, column: 8, scope: !8)
!17 = !DILocation(line: 38, column: 19, scope: !8)
!18 = !DILocation(line: 38, column: 21, scope: !8)
!19 = !DILocation(line: 38, column: 3, scope: !8)
!20 = !DILocation(line: 39, column: 9, scope: !8)
!21 = !DILocation(line: 39, column: 11, scope: !8)
!22 = !DILocation(line: 39, column: 33, scope: !8)
!23 = !DILocation(line: 39, column: 31, scope: !8)
!24 = !DILocation(line: 39, column: 23, scope: !8)
!25 = !DILocation(line: 39, column: 14, scope: !8)
!26 = !DILocation(line: 38, column: 36, scope: !8)
!27 = distinct !{!27, !19, !22}
!28 = !DILocation(line: 41, column: 13, scope: !8)
!29 = !DILocation(line: 41, column: 11, scope: !8)
!30 = !DILocation(line: 43, column: 13, scope: !8)
!31 = !DILocation(line: 43, column: 11, scope: !8)
!32 = !DILocation(line: 45, column: 13, scope: !8)
!33 = !DILocation(line: 45, column: 11, scope: !8)
!34 = !DILocation(line: 46, column: 1, scope: !8)
!35 = distinct !DISubprogram(name: "svp_simple_013_001_isr_1", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, isOptimized: false, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 49, column: 3, scope: !35)
!37 = !DILocation(line: 50, column: 3, scope: !35)
!38 = !DILocation(line: 51, column: 3, scope: !35)
!39 = !DILocation(line: 52, column: 1, scope: !35)
!40 = distinct !DISubprogram(name: "svp_simple_013_001_isr_2", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, isOptimized: false, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 55, column: 3, scope: !40)
!42 = !DILocation(line: 56, column: 35, scope: !40)
!43 = !DILocation(line: 58, column: 35, scope: !40)
!44 = !DILocation(line: 60, column: 3, scope: !40)
!45 = !DILocation(line: 61, column: 3, scope: !40)
!46 = !DILocation(line: 62, column: 1, scope: !40)
!47 = distinct !DISubprogram(name: "svp_simple_013_001_isr_3", scope: !1, file: !1, line: 64, type: !9, isLocal: false, isDefinition: true, scopeLine: 64, isOptimized: false, unit: !0, retainedNodes: !2)
!48 = !DILocation(line: 65, column: 7, scope: !47)
!49 = !DILocation(line: 65, column: 39, scope: !47)
!50 = !DILocation(line: 65, column: 76, scope: !47)
!51 = !DILocation(line: 65, column: 45, scope: !47)
!52 = !DILocation(line: 66, column: 7, scope: !47)
!53 = !DILocation(line: 66, column: 39, scope: !47)
!54 = !DILocation(line: 66, column: 76, scope: !47)
!55 = !DILocation(line: 66, column: 45, scope: !47)
!56 = !DILocation(line: 67, column: 1, scope: !47)
