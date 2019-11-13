; ModuleID = 'svp_simple_003_001.c'
source_filename = "svp_simple_003_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_003_001_global_flag = global i32 0, align 4
@svp_simple_003_001_global_var2 = common global i32 0, align 4
@svp_simple_003_001_global_var1 = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_003_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  call void (...) @idlerun(), !dbg !11
  call void @disable_isr(i32 1), !dbg !12
  call void @disable_isr(i32 2), !dbg !13
  store i32 0, i32* %5, align 4, !dbg !14
  br label %9, !dbg !15

; <label>:9:                                      ; preds = %18, %0
  %10 = load i32, i32* %5, align 4, !dbg !16
  %11 = icmp slt i32 %10, 10000, !dbg !17
  br i1 %11, label %12, label %21, !dbg !18

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %5, align 4, !dbg !19
  %14 = icmp eq i32 %13, 9999, !dbg !20
  br i1 %14, label %15, label %17, !dbg !19

; <label>:15:                                     ; preds = %12
  %16 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !21
  store i32 %16, i32* %3, align 4, !dbg !22
  br label %17, !dbg !23

; <label>:17:                                     ; preds = %15, %12
  br label %18, !dbg !24

; <label>:18:                                     ; preds = %17
  %19 = load i32, i32* %5, align 4, !dbg !25
  %20 = add nsw i32 %19, 1, !dbg !25
  store i32 %20, i32* %5, align 4, !dbg !25
  br label %9, !dbg !18, !llvm.loop !26

; <label>:21:                                     ; preds = %9
  store i32 10000, i32* %6, align 4, !dbg !27
  br label %22, !dbg !28

; <label>:22:                                     ; preds = %31, %21
  %23 = load i32, i32* %6, align 4, !dbg !29
  %24 = icmp sgt i32 %23, 0, !dbg !30
  br i1 %24, label %25, label %34, !dbg !31

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %6, align 4, !dbg !32
  %27 = icmp eq i32 %26, 9999, !dbg !33
  br i1 %27, label %28, label %30, !dbg !32

; <label>:28:                                     ; preds = %25
  %29 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !34
  store i32 %29, i32* %4, align 4, !dbg !35
  br label %30, !dbg !36

; <label>:30:                                     ; preds = %28, %25
  br label %31, !dbg !37

; <label>:31:                                     ; preds = %30
  %32 = load i32, i32* %6, align 4, !dbg !38
  %33 = add nsw i32 %32, -1, !dbg !38
  store i32 %33, i32* %6, align 4, !dbg !38
  br label %22, !dbg !31, !llvm.loop !39

; <label>:34:                                     ; preds = %22
  call void @enable_isr(i32 1), !dbg !40
  store i32 0, i32* %7, align 4, !dbg !41
  br label %35, !dbg !42

; <label>:35:                                     ; preds = %44, %34
  %36 = load i32, i32* %7, align 4, !dbg !43
  %37 = icmp slt i32 %36, 10000, !dbg !44
  br i1 %37, label %38, label %47, !dbg !45

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %7, align 4, !dbg !46
  %40 = icmp eq i32 %39, 9999, !dbg !47
  br i1 %40, label %41, label %43, !dbg !46

; <label>:41:                                     ; preds = %38
  %42 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !48
  store i32 %42, i32* %1, align 4, !dbg !49
  br label %43, !dbg !50

; <label>:43:                                     ; preds = %41, %38
  br label %44, !dbg !51

; <label>:44:                                     ; preds = %43
  %45 = load i32, i32* %7, align 4, !dbg !52
  %46 = add nsw i32 %45, 1, !dbg !52
  store i32 %46, i32* %7, align 4, !dbg !52
  br label %35, !dbg !45, !llvm.loop !53

; <label>:47:                                     ; preds = %35
  store i32 10000, i32* %8, align 4, !dbg !54
  br label %48, !dbg !55

; <label>:48:                                     ; preds = %57, %47
  %49 = load i32, i32* %8, align 4, !dbg !56
  %50 = icmp sgt i32 %49, 0, !dbg !57
  br i1 %50, label %51, label %60, !dbg !58

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %8, align 4, !dbg !59
  %53 = icmp eq i32 %52, 9999, !dbg !60
  br i1 %53, label %54, label %56, !dbg !59

; <label>:54:                                     ; preds = %51
  %55 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !61
  store i32 %55, i32* %2, align 4, !dbg !62
  br label %56, !dbg !63

; <label>:56:                                     ; preds = %54, %51
  br label %57, !dbg !64

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %8, align 4, !dbg !65
  %59 = add nsw i32 %58, -1, !dbg !65
  store i32 %59, i32* %8, align 4, !dbg !65
  br label %48, !dbg !58, !llvm.loop !66

; <label>:60:                                     ; preds = %48
  ret void, !dbg !67
}

declare void @init(...) #1

declare void @idlerun(...) #1

declare void @disable_isr(i32) #1

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_003_001_isr_1() #0 !dbg !68 {
  call void @enable_isr(i32 2), !dbg !69
  store volatile i32 999, i32* @svp_simple_003_001_global_var2, align 4, !dbg !70
  %1 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !71
  %2 = icmp eq i32 %1, 1, !dbg !72
  br i1 %2, label %3, label %4, !dbg !71

; <label>:3:                                      ; preds = %0
  store volatile i32 999, i32* @svp_simple_003_001_global_var1, align 4, !dbg !73
  br label %9, !dbg !74

; <label>:4:                                      ; preds = %0
  %5 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !75
  %6 = icmp eq i32 %5, 2, !dbg !76
  br i1 %6, label %7, label %8, !dbg !75

; <label>:7:                                      ; preds = %4
  store volatile i32 888, i32* @svp_simple_003_001_global_var1, align 4, !dbg !77
  br label %8, !dbg !78

; <label>:8:                                      ; preds = %7, %4
  br label %9

; <label>:9:                                      ; preds = %8, %3
  ret void, !dbg !79
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_003_001_isr_2() #0 !dbg !80 {
  call void (...) @idlerun(), !dbg !81
  store volatile i32 1, i32* @svp_simple_003_001_global_flag, align 4, !dbg !82
  ret void, !dbg !83
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_003_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_003")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_003_001_main", scope: !1, file: !1, line: 27, type: !9, isLocal: false, isDefinition: true, scopeLine: 27, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 3, scope: !8)
!11 = !DILocation(line: 31, column: 3, scope: !8)
!12 = !DILocation(line: 33, column: 3, scope: !8)
!13 = !DILocation(line: 34, column: 3, scope: !8)
!14 = !DILocation(line: 36, column: 12, scope: !8)
!15 = !DILocation(line: 36, column: 8, scope: !8)
!16 = !DILocation(line: 36, column: 19, scope: !8)
!17 = !DILocation(line: 36, column: 21, scope: !8)
!18 = !DILocation(line: 36, column: 3, scope: !8)
!19 = !DILocation(line: 37, column: 9, scope: !8)
!20 = !DILocation(line: 37, column: 11, scope: !8)
!21 = !DILocation(line: 38, column: 17, scope: !8)
!22 = !DILocation(line: 38, column: 15, scope: !8)
!23 = !DILocation(line: 39, column: 5, scope: !8)
!24 = !DILocation(line: 40, column: 3, scope: !8)
!25 = !DILocation(line: 36, column: 36, scope: !8)
!26 = distinct !{!26, !18, !24}
!27 = !DILocation(line: 41, column: 12, scope: !8)
!28 = !DILocation(line: 41, column: 8, scope: !8)
!29 = !DILocation(line: 41, column: 28, scope: !8)
!30 = !DILocation(line: 41, column: 30, scope: !8)
!31 = !DILocation(line: 41, column: 3, scope: !8)
!32 = !DILocation(line: 42, column: 9, scope: !8)
!33 = !DILocation(line: 42, column: 11, scope: !8)
!34 = !DILocation(line: 43, column: 17, scope: !8)
!35 = !DILocation(line: 43, column: 15, scope: !8)
!36 = !DILocation(line: 44, column: 5, scope: !8)
!37 = !DILocation(line: 45, column: 3, scope: !8)
!38 = !DILocation(line: 41, column: 36, scope: !8)
!39 = distinct !{!39, !31, !37}
!40 = !DILocation(line: 47, column: 3, scope: !8)
!41 = !DILocation(line: 48, column: 12, scope: !8)
!42 = !DILocation(line: 48, column: 8, scope: !8)
!43 = !DILocation(line: 48, column: 19, scope: !8)
!44 = !DILocation(line: 48, column: 21, scope: !8)
!45 = !DILocation(line: 48, column: 3, scope: !8)
!46 = !DILocation(line: 49, column: 9, scope: !8)
!47 = !DILocation(line: 49, column: 11, scope: !8)
!48 = !DILocation(line: 50, column: 17, scope: !8)
!49 = !DILocation(line: 50, column: 15, scope: !8)
!50 = !DILocation(line: 51, column: 5, scope: !8)
!51 = !DILocation(line: 52, column: 3, scope: !8)
!52 = !DILocation(line: 48, column: 36, scope: !8)
!53 = distinct !{!53, !45, !51}
!54 = !DILocation(line: 53, column: 12, scope: !8)
!55 = !DILocation(line: 53, column: 8, scope: !8)
!56 = !DILocation(line: 53, column: 28, scope: !8)
!57 = !DILocation(line: 53, column: 30, scope: !8)
!58 = !DILocation(line: 53, column: 3, scope: !8)
!59 = !DILocation(line: 54, column: 9, scope: !8)
!60 = !DILocation(line: 54, column: 11, scope: !8)
!61 = !DILocation(line: 55, column: 17, scope: !8)
!62 = !DILocation(line: 55, column: 15, scope: !8)
!63 = !DILocation(line: 56, column: 5, scope: !8)
!64 = !DILocation(line: 57, column: 3, scope: !8)
!65 = !DILocation(line: 53, column: 36, scope: !8)
!66 = distinct !{!66, !58, !64}
!67 = !DILocation(line: 58, column: 1, scope: !8)
!68 = distinct !DISubprogram(name: "svp_simple_003_001_isr_1", scope: !1, file: !1, line: 60, type: !9, isLocal: false, isDefinition: true, scopeLine: 60, isOptimized: false, unit: !0, retainedNodes: !2)
!69 = !DILocation(line: 61, column: 3, scope: !68)
!70 = !DILocation(line: 62, column: 34, scope: !68)
!71 = !DILocation(line: 64, column: 7, scope: !68)
!72 = !DILocation(line: 64, column: 38, scope: !68)
!73 = !DILocation(line: 65, column: 36, scope: !68)
!74 = !DILocation(line: 66, column: 3, scope: !68)
!75 = !DILocation(line: 66, column: 14, scope: !68)
!76 = !DILocation(line: 66, column: 45, scope: !68)
!77 = !DILocation(line: 67, column: 36, scope: !68)
!78 = !DILocation(line: 68, column: 3, scope: !68)
!79 = !DILocation(line: 69, column: 1, scope: !68)
!80 = distinct !DISubprogram(name: "svp_simple_003_001_isr_2", scope: !1, file: !1, line: 71, type: !9, isLocal: false, isDefinition: true, scopeLine: 71, isOptimized: false, unit: !0, retainedNodes: !2)
!81 = !DILocation(line: 72, column: 3, scope: !80)
!82 = !DILocation(line: 73, column: 34, scope: !80)
!83 = !DILocation(line: 74, column: 1, scope: !80)
