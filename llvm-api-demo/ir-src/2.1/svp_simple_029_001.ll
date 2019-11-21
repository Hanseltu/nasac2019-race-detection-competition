; ModuleID = 'svp_simple_029_001.c'
source_filename = "svp_simple_029_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_029_001_ptr_SetSelfCtrlFlag = common global void (i32, i8, i8)* null, align 8
@svp_simple_029_001_tm_blocks = common global [4096 x i8] zeroinitializer, align 16
@svp_simple_029_001_average_adjust_flag = common global i8 0, align 1
@svp_simple_029_001_ptr_SetTmData = common global void (i32, i8)* null, align 8
@svp_simple_029_001_ptr_GetTmData = common global i8 (i32)* null, align 8
@svp_simple_029_001_average_adjust_count = common global i8 0, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_029_001_main() #0 !dbg !8 {
  %1 = alloca i8, align 1
  store i8 1, i8* %1, align 1, !dbg !10
  call void @svp_simple_029_001_init(), !dbg !11
  call void @svp_simple_029_001_TmOrgFuncMap(), !dbg !12
  %2 = load i8, i8* %1, align 1, !dbg !13
  %3 = zext i8 %2 to i32, !dbg !13
  %4 = icmp eq i32 %3, 1, !dbg !14
  br i1 %4, label %5, label %7, !dbg !13

; <label>:5:                                      ; preds = %0
  %6 = load void (i32, i8, i8)*, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !15
  call void %6(i32 36, i8 zeroext -1, i8 zeroext 0), !dbg !15
  br label %7, !dbg !16

; <label>:7:                                      ; preds = %5, %0
  ret void, !dbg !17
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_029_001_init() #0 !dbg !18 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4, !dbg !19
  br label %2, !dbg !20

; <label>:2:                                      ; preds = %11, %0
  %3 = load i32, i32* %1, align 4, !dbg !21
  %4 = icmp slt i32 %3, 4096, !dbg !22
  br i1 %4, label %5, label %14, !dbg !23

; <label>:5:                                      ; preds = %2
  %6 = call i32 (...) @rand(), !dbg !24
  %7 = trunc i32 %6 to i8, !dbg !24
  %8 = load i32, i32* %1, align 4, !dbg !25
  %9 = sext i32 %8 to i64, !dbg !26
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %9, !dbg !26
  store volatile i8 %7, i8* %10, align 1, !dbg !27
  br label %11, !dbg !28

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %1, align 4, !dbg !29
  %13 = add nsw i32 %12, 1, !dbg !29
  store i32 %13, i32* %1, align 4, !dbg !29
  br label %2, !dbg !23, !llvm.loop !30

; <label>:14:                                     ; preds = %2
  store volatile i8 -1, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !31
  call void (...) @init(), !dbg !32
  ret void, !dbg !33
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_029_001_TmOrgFuncMap() #0 !dbg !34 {
  store void (i32, i8)* @svp_simple_029_001_SetTmData, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !35
  store i8 (i32)* @svp_simple_029_001_GetTmData, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !36
  store void (i32, i8, i8)* @svp_simple_029_001_SetSelfCtrlFlag, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_029_001_SetTmData(i32, i8 zeroext) #0 !dbg !39 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1, !dbg !40
  %6 = load i32, i32* %3, align 4, !dbg !41
  %7 = zext i32 %6 to i64, !dbg !42
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %7, !dbg !42
  store volatile i8 %5, i8* %8, align 1, !dbg !43
  ret void, !dbg !44
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i8 @svp_simple_029_001_GetTmData(i32) #0 !dbg !45 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4, !dbg !46
  %4 = zext i32 %3 to i64, !dbg !47
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %4, !dbg !47
  %6 = load volatile i8, i8* %5, align 1, !dbg !47
  ret i8 %6, !dbg !48
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_029_001_SetSelfCtrlFlag(i32, i8 zeroext, i8 zeroext) #0 !dbg !49 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %10 = load i8, i8* %5, align 1, !dbg !50
  %11 = zext i8 %10 to i32, !dbg !50
  %12 = icmp sgt i32 %11, 128, !dbg !51
  br i1 %12, label %13, label %14, !dbg !50

; <label>:13:                                     ; preds = %3
  store i8 1, i8* %7, align 1, !dbg !52
  br label %15, !dbg !53

; <label>:14:                                     ; preds = %3
  store i8 0, i8* %7, align 1, !dbg !54
  br label %15

; <label>:15:                                     ; preds = %14, %13
  %16 = load i8, i8* %6, align 1, !dbg !55
  %17 = zext i8 %16 to i32, !dbg !55
  %18 = load i8, i8* %7, align 1, !dbg !56
  %19 = zext i8 %18 to i32, !dbg !56
  %20 = shl i32 %19, %17, !dbg !56
  %21 = trunc i32 %20 to i8, !dbg !56
  store i8 %21, i8* %7, align 1, !dbg !56
  store i8 1, i8* %8, align 1, !dbg !57
  %22 = load i8, i8* %8, align 1, !dbg !58
  %23 = zext i8 %22 to i32, !dbg !58
  %24 = xor i32 %23, -1, !dbg !59
  %25 = load i8, i8* %8, align 1, !dbg !60
  %26 = zext i8 %25 to i32, !dbg !60
  %27 = shl i32 %26, %24, !dbg !60
  %28 = trunc i32 %27 to i8, !dbg !60
  store i8 %28, i8* %8, align 1, !dbg !60
  %29 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !61
  %30 = load i32, i32* %4, align 4, !dbg !62
  %31 = call zeroext i8 %29(i32 %30), !dbg !61
  store i8 %31, i8* %9, align 1, !dbg !63
  %32 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !64
  %33 = load i32, i32* %4, align 4, !dbg !65
  %34 = add i32 %33, 1, !dbg !66
  %35 = call zeroext i8 %32(i32 %34), !dbg !64
  %36 = zext i8 %35 to i32, !dbg !64
  %37 = load i8, i8* %9, align 1, !dbg !67
  %38 = zext i8 %37 to i32, !dbg !67
  %39 = add nsw i32 %38, %36, !dbg !67
  %40 = trunc i32 %39 to i8, !dbg !67
  store i8 %40, i8* %9, align 1, !dbg !67
  %41 = load i8, i8* %7, align 1, !dbg !68
  %42 = zext i8 %41 to i32, !dbg !68
  %43 = load i8, i8* %9, align 1, !dbg !69
  %44 = zext i8 %43 to i32, !dbg !69
  %45 = or i32 %44, %42, !dbg !69
  %46 = trunc i32 %45 to i8, !dbg !69
  store i8 %46, i8* %9, align 1, !dbg !69
  %47 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !70
  %48 = load i32, i32* %4, align 4, !dbg !71
  %49 = load i8, i8* %9, align 1, !dbg !72
  call void %47(i32 %48, i8 zeroext %49), !dbg !70
  ret void, !dbg !73
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_029_001_isr_1() #0 !dbg !74 {
  %1 = load volatile i8, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !75
  %2 = zext i8 %1 to i32, !dbg !75
  %3 = icmp eq i32 %2, 255, !dbg !76
  br i1 %3, label %4, label %9, !dbg !75

; <label>:4:                                      ; preds = %0
  %5 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !77
  %6 = add i8 %5, 1, !dbg !77
  store volatile i8 %6, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !77
  %7 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !78
  %8 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !79
  call void %7(i32 36, i8 zeroext %8), !dbg !78
  br label %12, !dbg !80

; <label>:9:                                      ; preds = %0
  store volatile i8 0, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !81
  %10 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !82
  %11 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !83
  call void %10(i32 36, i8 zeroext %11), !dbg !82
  br label %12

; <label>:12:                                     ; preds = %9, %4
  ret void, !dbg !84
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_029_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_029")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_029_001_main", scope: !1, file: !1, line: 34, type: !9, isLocal: false, isDefinition: true, scopeLine: 34, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 35, column: 13, scope: !8)
!11 = !DILocation(line: 36, column: 3, scope: !8)
!12 = !DILocation(line: 37, column: 3, scope: !8)
!13 = !DILocation(line: 39, column: 7, scope: !8)
!14 = !DILocation(line: 39, column: 39, scope: !8)
!15 = !DILocation(line: 40, column: 5, scope: !8)
!16 = !DILocation(line: 41, column: 3, scope: !8)
!17 = !DILocation(line: 42, column: 1, scope: !8)
!18 = distinct !DISubprogram(name: "svp_simple_029_001_init", scope: !1, file: !1, line: 43, type: !9, isLocal: false, isDefinition: true, scopeLine: 43, isOptimized: false, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 44, column: 12, scope: !18)
!20 = !DILocation(line: 44, column: 8, scope: !18)
!21 = !DILocation(line: 44, column: 19, scope: !18)
!22 = !DILocation(line: 44, column: 21, scope: !18)
!23 = !DILocation(line: 44, column: 3, scope: !18)
!24 = !DILocation(line: 45, column: 39, scope: !18)
!25 = !DILocation(line: 45, column: 34, scope: !18)
!26 = !DILocation(line: 45, column: 5, scope: !18)
!27 = !DILocation(line: 45, column: 37, scope: !18)
!28 = !DILocation(line: 46, column: 3, scope: !18)
!29 = !DILocation(line: 44, column: 30, scope: !18)
!30 = distinct !{!30, !23, !28}
!31 = !DILocation(line: 47, column: 42, scope: !18)
!32 = !DILocation(line: 49, column: 3, scope: !18)
!33 = !DILocation(line: 50, column: 1, scope: !18)
!34 = distinct !DISubprogram(name: "svp_simple_029_001_TmOrgFuncMap", scope: !1, file: !1, line: 52, type: !9, isLocal: false, isDefinition: true, scopeLine: 52, isOptimized: false, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 53, column: 36, scope: !34)
!36 = !DILocation(line: 54, column: 36, scope: !34)
!37 = !DILocation(line: 55, column: 42, scope: !34)
!38 = !DILocation(line: 56, column: 1, scope: !34)
!39 = distinct !DISubprogram(name: "svp_simple_029_001_SetTmData", scope: !1, file: !1, line: 82, type: !9, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!40 = !DILocation(line: 83, column: 43, scope: !39)
!41 = !DILocation(line: 83, column: 32, scope: !39)
!42 = !DILocation(line: 83, column: 3, scope: !39)
!43 = !DILocation(line: 83, column: 41, scope: !39)
!44 = !DILocation(line: 84, column: 1, scope: !39)
!45 = distinct !DISubprogram(name: "svp_simple_029_001_GetTmData", scope: !1, file: !1, line: 79, type: !9, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 80, column: 39, scope: !45)
!47 = !DILocation(line: 80, column: 10, scope: !45)
!48 = !DILocation(line: 80, column: 3, scope: !45)
!49 = distinct !DISubprogram(name: "svp_simple_029_001_SetSelfCtrlFlag", scope: !1, file: !1, line: 57, type: !9, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 63, column: 7, scope: !49)
!51 = !DILocation(line: 63, column: 17, scope: !49)
!52 = !DILocation(line: 64, column: 10, scope: !49)
!53 = !DILocation(line: 65, column: 3, scope: !49)
!54 = !DILocation(line: 66, column: 10, scope: !49)
!55 = !DILocation(line: 69, column: 12, scope: !49)
!56 = !DILocation(line: 69, column: 8, scope: !49)
!57 = !DILocation(line: 70, column: 8, scope: !49)
!58 = !DILocation(line: 71, column: 13, scope: !49)
!59 = !DILocation(line: 71, column: 12, scope: !49)
!60 = !DILocation(line: 71, column: 8, scope: !49)
!61 = !DILocation(line: 73, column: 14, scope: !49)
!62 = !DILocation(line: 73, column: 47, scope: !49)
!63 = !DILocation(line: 73, column: 12, scope: !49)
!64 = !DILocation(line: 74, column: 15, scope: !49)
!65 = !DILocation(line: 74, column: 48, scope: !49)
!66 = !DILocation(line: 74, column: 56, scope: !49)
!67 = !DILocation(line: 74, column: 12, scope: !49)
!68 = !DILocation(line: 75, column: 15, scope: !49)
!69 = !DILocation(line: 75, column: 12, scope: !49)
!70 = !DILocation(line: 77, column: 3, scope: !49)
!71 = !DILocation(line: 77, column: 36, scope: !49)
!72 = !DILocation(line: 77, column: 45, scope: !49)
!73 = !DILocation(line: 78, column: 1, scope: !49)
!74 = distinct !DISubprogram(name: "svp_simple_029_001_isr_1", scope: !1, file: !1, line: 86, type: !9, isLocal: false, isDefinition: true, scopeLine: 86, isOptimized: false, unit: !0, retainedNodes: !2)
!75 = !DILocation(line: 87, column: 7, scope: !74)
!76 = !DILocation(line: 87, column: 46, scope: !74)
!77 = !DILocation(line: 88, column: 44, scope: !74)
!78 = !DILocation(line: 89, column: 5, scope: !74)
!79 = !DILocation(line: 90, column: 13, scope: !74)
!80 = !DILocation(line: 91, column: 3, scope: !74)
!81 = !DILocation(line: 92, column: 45, scope: !74)
!82 = !DILocation(line: 93, column: 5, scope: !74)
!83 = !DILocation(line: 93, column: 42, scope: !74)
!84 = !DILocation(line: 95, column: 1, scope: !74)
