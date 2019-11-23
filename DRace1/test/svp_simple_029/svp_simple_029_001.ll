; ModuleID = 'svp_simple_029_001.bc'
source_filename = "./svp_simple_029_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_029_001_ptr_SetSelfCtrlFlag = common global void (i32, i8, i8)* null, align 8
@svp_simple_029_001_tm_blocks = common global [4096 x i8] zeroinitializer, align 16
@svp_simple_029_001_average_adjust_flag = common global i8 0, align 1
@svp_simple_029_001_ptr_SetTmData = common global void (i32, i8)* null, align 8
@svp_simple_029_001_ptr_GetTmData = common global i8 (i32)* null, align 8
@svp_simple_029_001_average_adjust_count = common global i8 0, align 1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_main() #0 !dbg !8 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %1) #3, !dbg !11
  store i8 1, i8* %1, align 1, !dbg !12, !tbaa !13
  call void @svp_simple_029_001_init(), !dbg !16
  call void @svp_simple_029_001_TmOrgFuncMap(), !dbg !17
  %2 = load i8, i8* %1, align 1, !dbg !18, !tbaa !13
  %3 = zext i8 %2 to i32, !dbg !18
  %4 = icmp eq i32 %3, 1, !dbg !19
  br i1 %4, label %5, label %7, !dbg !18

5:                                                ; preds = %0
  %6 = load void (i32, i8, i8)*, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !20, !tbaa !21
  call void %6(i32 36, i8 zeroext -1, i8 zeroext 0), !dbg !20
  br label %7, !dbg !23

7:                                                ; preds = %5, %0
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %1) #3, !dbg !24
  ret void, !dbg !24
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_init() #0 !dbg !25 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !26
  store i32 0, i32* %1, align 4, !dbg !27, !tbaa !28
  br label %3, !dbg !26

3:                                                ; preds = %14, %0
  %4 = load i32, i32* %1, align 4, !dbg !30, !tbaa !28
  %5 = icmp slt i32 %4, 4096, !dbg !31
  br i1 %5, label %8, label %6, !dbg !32

6:                                                ; preds = %3
  %7 = bitcast i32* %1 to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #3, !dbg !32
  br label %17

8:                                                ; preds = %3
  %9 = call i32 (...) @rand(), !dbg !33
  %10 = trunc i32 %9 to i8, !dbg !33
  %11 = load i32, i32* %1, align 4, !dbg !34, !tbaa !28
  %12 = sext i32 %11 to i64, !dbg !35
  %13 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %12, !dbg !35
  store volatile i8 %10, i8* %13, align 1, !dbg !36, !tbaa !13
  br label %14, !dbg !37

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4, !dbg !38, !tbaa !28
  %16 = add nsw i32 %15, 1, !dbg !38
  store i32 %16, i32* %1, align 4, !dbg !38, !tbaa !28
  br label %3, !dbg !32, !llvm.loop !39

17:                                               ; preds = %6
  store volatile i8 -1, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !40, !tbaa !13
  call void (...) @init(), !dbg !41
  ret void, !dbg !42
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_TmOrgFuncMap() #0 !dbg !43 {
  store void (i32, i8)* @svp_simple_029_001_SetTmData, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !44, !tbaa !21
  store i8 (i32)* @svp_simple_029_001_GetTmData, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !45, !tbaa !21
  store void (i32, i8, i8)* @svp_simple_029_001_SetSelfCtrlFlag, void (i32, i8, i8)** @svp_simple_029_001_ptr_SetSelfCtrlFlag, align 8, !dbg !46, !tbaa !21
  ret void, !dbg !47
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_SetTmData(i32, i8 zeroext) #0 !dbg !48 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4, !tbaa !28
  store i8 %1, i8* %4, align 1, !tbaa !13
  %5 = load i8, i8* %4, align 1, !dbg !49, !tbaa !13
  %6 = load i32, i32* %3, align 4, !dbg !50, !tbaa !28
  %7 = zext i32 %6 to i64, !dbg !51
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %7, !dbg !51
  store volatile i8 %5, i8* %8, align 1, !dbg !52, !tbaa !13
  ret void, !dbg !53
}

; Function Attrs: nounwind ssp uwtable
define zeroext i8 @svp_simple_029_001_GetTmData(i32) #0 !dbg !54 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !28
  %3 = load i32, i32* %2, align 4, !dbg !55, !tbaa !28
  %4 = zext i32 %3 to i64, !dbg !56
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* @svp_simple_029_001_tm_blocks, i64 0, i64 %4, !dbg !56
  %6 = load volatile i8, i8* %5, align 1, !dbg !56, !tbaa !13
  ret i8 %6, !dbg !57
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_SetSelfCtrlFlag(i32, i8 zeroext, i8 zeroext) #0 !dbg !58 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %4, align 4, !tbaa !28
  store i8 %1, i8* %5, align 1, !tbaa !13
  store i8 %2, i8* %6, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %7) #3, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %8) #3, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %9) #3, !dbg !61
  %10 = load i8, i8* %5, align 1, !dbg !62, !tbaa !13
  %11 = zext i8 %10 to i32, !dbg !62
  %12 = icmp sgt i32 %11, 128, !dbg !63
  br i1 %12, label %13, label %14, !dbg !62

13:                                               ; preds = %3
  store i8 1, i8* %7, align 1, !dbg !64, !tbaa !13
  br label %15, !dbg !65

14:                                               ; preds = %3
  store i8 0, i8* %7, align 1, !dbg !66, !tbaa !13
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i8, i8* %6, align 1, !dbg !67, !tbaa !13
  %17 = zext i8 %16 to i32, !dbg !67
  %18 = load i8, i8* %7, align 1, !dbg !68, !tbaa !13
  %19 = zext i8 %18 to i32, !dbg !68
  %20 = shl i32 %19, %17, !dbg !68
  %21 = trunc i32 %20 to i8, !dbg !68
  store i8 %21, i8* %7, align 1, !dbg !68, !tbaa !13
  store i8 1, i8* %8, align 1, !dbg !69, !tbaa !13
  %22 = load i8, i8* %8, align 1, !dbg !70, !tbaa !13
  %23 = zext i8 %22 to i32, !dbg !70
  %24 = xor i32 %23, -1, !dbg !71
  %25 = load i8, i8* %8, align 1, !dbg !72, !tbaa !13
  %26 = zext i8 %25 to i32, !dbg !72
  %27 = shl i32 %26, %24, !dbg !72
  %28 = trunc i32 %27 to i8, !dbg !72
  store i8 %28, i8* %8, align 1, !dbg !72, !tbaa !13
  %29 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !73, !tbaa !21
  %30 = load i32, i32* %4, align 4, !dbg !74, !tbaa !28
  %31 = call zeroext i8 %29(i32 %30), !dbg !73
  store i8 %31, i8* %9, align 1, !dbg !75, !tbaa !13
  %32 = load i8 (i32)*, i8 (i32)** @svp_simple_029_001_ptr_GetTmData, align 8, !dbg !76, !tbaa !21
  %33 = load i32, i32* %4, align 4, !dbg !77, !tbaa !28
  %34 = add i32 %33, 1, !dbg !78
  %35 = call zeroext i8 %32(i32 %34), !dbg !76
  %36 = zext i8 %35 to i32, !dbg !76
  %37 = load i8, i8* %9, align 1, !dbg !79, !tbaa !13
  %38 = zext i8 %37 to i32, !dbg !79
  %39 = add nsw i32 %38, %36, !dbg !79
  %40 = trunc i32 %39 to i8, !dbg !79
  store i8 %40, i8* %9, align 1, !dbg !79, !tbaa !13
  %41 = load i8, i8* %7, align 1, !dbg !80, !tbaa !13
  %42 = zext i8 %41 to i32, !dbg !80
  %43 = load i8, i8* %9, align 1, !dbg !81, !tbaa !13
  %44 = zext i8 %43 to i32, !dbg !81
  %45 = or i32 %44, %42, !dbg !81
  %46 = trunc i32 %45 to i8, !dbg !81
  store i8 %46, i8* %9, align 1, !dbg !81, !tbaa !13
  %47 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !82, !tbaa !21
  %48 = load i32, i32* %4, align 4, !dbg !83, !tbaa !28
  %49 = load i8, i8* %9, align 1, !dbg !84, !tbaa !13
  call void %47(i32 %48, i8 zeroext %49), !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #3, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %8) #3, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %7) #3, !dbg !85
  ret void, !dbg !85
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_029_001_isr_1() #0 !dbg !86 {
  %1 = load volatile i8, i8* @svp_simple_029_001_average_adjust_flag, align 1, !dbg !87, !tbaa !13
  %2 = zext i8 %1 to i32, !dbg !87
  %3 = icmp eq i32 %2, 255, !dbg !88
  br i1 %3, label %4, label %9, !dbg !87

4:                                                ; preds = %0
  %5 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !89, !tbaa !13
  %6 = add i8 %5, 1, !dbg !89
  store volatile i8 %6, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !89, !tbaa !13
  %7 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !90, !tbaa !21
  %8 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !91, !tbaa !13
  call void %7(i32 36, i8 zeroext %8), !dbg !90
  br label %12, !dbg !92

9:                                                ; preds = %0
  store volatile i8 0, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !93, !tbaa !13
  %10 = load void (i32, i8)*, void (i32, i8)** @svp_simple_029_001_ptr_SetTmData, align 8, !dbg !94, !tbaa !21
  %11 = load volatile i8, i8* @svp_simple_029_001_average_adjust_count, align 1, !dbg !95, !tbaa !13
  call void %10(i32 36, i8 zeroext %11), !dbg !94
  br label %12

12:                                               ; preds = %9, %4
  ret void, !dbg !96
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_029_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_029")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_029_001_main", scope: !9, file: !9, line: 34, type: !10, scopeLine: 34, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_029_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_029")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 35, column: 3, scope: !8)
!12 = !DILocation(line: 35, column: 13, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 36, column: 3, scope: !8)
!17 = !DILocation(line: 37, column: 3, scope: !8)
!18 = !DILocation(line: 39, column: 7, scope: !8)
!19 = !DILocation(line: 39, column: 39, scope: !8)
!20 = !DILocation(line: 40, column: 5, scope: !8)
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !14, i64 0}
!23 = !DILocation(line: 41, column: 3, scope: !8)
!24 = !DILocation(line: 42, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "svp_simple_029_001_init", scope: !9, file: !9, line: 43, type: !10, scopeLine: 43, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 44, column: 8, scope: !25)
!27 = !DILocation(line: 44, column: 12, scope: !25)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !14, i64 0}
!30 = !DILocation(line: 44, column: 19, scope: !25)
!31 = !DILocation(line: 44, column: 21, scope: !25)
!32 = !DILocation(line: 44, column: 3, scope: !25)
!33 = !DILocation(line: 45, column: 39, scope: !25)
!34 = !DILocation(line: 45, column: 34, scope: !25)
!35 = !DILocation(line: 45, column: 5, scope: !25)
!36 = !DILocation(line: 45, column: 37, scope: !25)
!37 = !DILocation(line: 46, column: 3, scope: !25)
!38 = !DILocation(line: 44, column: 30, scope: !25)
!39 = distinct !{!39, !32, !37}
!40 = !DILocation(line: 47, column: 42, scope: !25)
!41 = !DILocation(line: 49, column: 3, scope: !25)
!42 = !DILocation(line: 50, column: 1, scope: !25)
!43 = distinct !DISubprogram(name: "svp_simple_029_001_TmOrgFuncMap", scope: !9, file: !9, line: 52, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 53, column: 36, scope: !43)
!45 = !DILocation(line: 54, column: 36, scope: !43)
!46 = !DILocation(line: 55, column: 42, scope: !43)
!47 = !DILocation(line: 56, column: 1, scope: !43)
!48 = distinct !DISubprogram(name: "svp_simple_029_001_SetTmData", scope: !9, file: !9, line: 82, type: !10, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!49 = !DILocation(line: 83, column: 43, scope: !48)
!50 = !DILocation(line: 83, column: 32, scope: !48)
!51 = !DILocation(line: 83, column: 3, scope: !48)
!52 = !DILocation(line: 83, column: 41, scope: !48)
!53 = !DILocation(line: 84, column: 1, scope: !48)
!54 = distinct !DISubprogram(name: "svp_simple_029_001_GetTmData", scope: !9, file: !9, line: 79, type: !10, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 80, column: 39, scope: !54)
!56 = !DILocation(line: 80, column: 10, scope: !54)
!57 = !DILocation(line: 80, column: 3, scope: !54)
!58 = distinct !DISubprogram(name: "svp_simple_029_001_SetSelfCtrlFlag", scope: !9, file: !9, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!59 = !DILocation(line: 59, column: 3, scope: !58)
!60 = !DILocation(line: 60, column: 3, scope: !58)
!61 = !DILocation(line: 61, column: 3, scope: !58)
!62 = !DILocation(line: 63, column: 7, scope: !58)
!63 = !DILocation(line: 63, column: 17, scope: !58)
!64 = !DILocation(line: 64, column: 10, scope: !58)
!65 = !DILocation(line: 65, column: 3, scope: !58)
!66 = !DILocation(line: 66, column: 10, scope: !58)
!67 = !DILocation(line: 69, column: 12, scope: !58)
!68 = !DILocation(line: 69, column: 8, scope: !58)
!69 = !DILocation(line: 70, column: 8, scope: !58)
!70 = !DILocation(line: 71, column: 13, scope: !58)
!71 = !DILocation(line: 71, column: 12, scope: !58)
!72 = !DILocation(line: 71, column: 8, scope: !58)
!73 = !DILocation(line: 73, column: 14, scope: !58)
!74 = !DILocation(line: 73, column: 47, scope: !58)
!75 = !DILocation(line: 73, column: 12, scope: !58)
!76 = !DILocation(line: 74, column: 15, scope: !58)
!77 = !DILocation(line: 74, column: 48, scope: !58)
!78 = !DILocation(line: 74, column: 56, scope: !58)
!79 = !DILocation(line: 74, column: 12, scope: !58)
!80 = !DILocation(line: 75, column: 15, scope: !58)
!81 = !DILocation(line: 75, column: 12, scope: !58)
!82 = !DILocation(line: 77, column: 3, scope: !58)
!83 = !DILocation(line: 77, column: 36, scope: !58)
!84 = !DILocation(line: 77, column: 45, scope: !58)
!85 = !DILocation(line: 78, column: 1, scope: !58)
!86 = distinct !DISubprogram(name: "svp_simple_029_001_isr_1", scope: !9, file: !9, line: 86, type: !10, scopeLine: 86, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!87 = !DILocation(line: 87, column: 7, scope: !86)
!88 = !DILocation(line: 87, column: 46, scope: !86)
!89 = !DILocation(line: 88, column: 44, scope: !86)
!90 = !DILocation(line: 89, column: 5, scope: !86)
!91 = !DILocation(line: 90, column: 13, scope: !86)
!92 = !DILocation(line: 91, column: 3, scope: !86)
!93 = !DILocation(line: 92, column: 45, scope: !86)
!94 = !DILocation(line: 93, column: 5, scope: !86)
!95 = !DILocation(line: 93, column: 42, scope: !86)
!96 = !DILocation(line: 95, column: 1, scope: !86)
