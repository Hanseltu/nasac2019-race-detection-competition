; ModuleID = 'svp_simple_003_001.bc'
source_filename = "./svp_simple_003_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_003_001_global_flag = global i32 0, align 4
@svp_simple_003_001_global_flag1 = global i32 0, align 4
@svp_simple_003_001_global_var2 = common global i32 0, align 4
@svp_simple_003_001_global_var1 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %9 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !12
  %10 = bitcast i32* %2 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !12
  %11 = bitcast i32* %3 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !13
  %12 = bitcast i32* %4 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !13
  call void (...) @idlerun(), !dbg !14
  call void @disable_isr(i32 1), !dbg !15
  call void @disable_isr(i32 2), !dbg !16
  %13 = bitcast i32* %5 to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !17
  store i32 0, i32* %5, align 4, !dbg !18, !tbaa !19
  br label %14, !dbg !17

14:                                               ; preds = %25, %0
  %15 = load i32, i32* %5, align 4, !dbg !23, !tbaa !19
  %16 = icmp slt i32 %15, 10000, !dbg !24
  br i1 %16, label %19, label %17, !dbg !25

17:                                               ; preds = %14
  %18 = bitcast i32* %5 to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !25
  br label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4, !dbg !26, !tbaa !19
  %21 = icmp eq i32 %20, 9999, !dbg !27
  br i1 %21, label %22, label %24, !dbg !26

22:                                               ; preds = %19
  %23 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !28, !tbaa !19
  store i32 %23, i32* %3, align 4, !dbg !29, !tbaa !19
  br label %24, !dbg !30

24:                                               ; preds = %22, %19
  br label %25, !dbg !31

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4, !dbg !32, !tbaa !19
  %27 = add nsw i32 %26, 1, !dbg !32
  store i32 %27, i32* %5, align 4, !dbg !32, !tbaa !19
  br label %14, !dbg !25, !llvm.loop !33

28:                                               ; preds = %17
  %29 = bitcast i32* %6 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3, !dbg !34
  store i32 10000, i32* %6, align 4, !dbg !35, !tbaa !19
  br label %30, !dbg !34

30:                                               ; preds = %41, %28
  %31 = load i32, i32* %6, align 4, !dbg !36, !tbaa !19
  %32 = icmp sgt i32 %31, 0, !dbg !37
  br i1 %32, label %35, label %33, !dbg !38

33:                                               ; preds = %30
  %34 = bitcast i32* %6 to i8*, !dbg !38
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3, !dbg !38
  br label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4, !dbg !39, !tbaa !19
  %37 = icmp eq i32 %36, 9999, !dbg !40
  br i1 %37, label %38, label %40, !dbg !39

38:                                               ; preds = %35
  %39 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !41, !tbaa !19
  store i32 %39, i32* %4, align 4, !dbg !42, !tbaa !19
  br label %40, !dbg !43

40:                                               ; preds = %38, %35
  br label %41, !dbg !44

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4, !dbg !45, !tbaa !19
  %43 = add nsw i32 %42, -1, !dbg !45
  store i32 %43, i32* %6, align 4, !dbg !45, !tbaa !19
  br label %30, !dbg !38, !llvm.loop !46

44:                                               ; preds = %33
  call void @enable_isr(i32 1), !dbg !47
  %45 = bitcast i32* %7 to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #3, !dbg !48
  store i32 0, i32* %7, align 4, !dbg !49, !tbaa !19
  br label %46, !dbg !48

46:                                               ; preds = %57, %44
  %47 = load i32, i32* %7, align 4, !dbg !50, !tbaa !19
  %48 = icmp slt i32 %47, 10000, !dbg !51
  br i1 %48, label %51, label %49, !dbg !52

49:                                               ; preds = %46
  %50 = bitcast i32* %7 to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3, !dbg !52
  br label %60

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4, !dbg !53, !tbaa !19
  %53 = icmp eq i32 %52, 9999, !dbg !54
  br i1 %53, label %54, label %56, !dbg !53

54:                                               ; preds = %51
  %55 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !55, !tbaa !19
  store i32 %55, i32* %1, align 4, !dbg !56, !tbaa !19
  br label %56, !dbg !57

56:                                               ; preds = %54, %51
  br label %57, !dbg !58

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4, !dbg !59, !tbaa !19
  %59 = add nsw i32 %58, 1, !dbg !59
  store i32 %59, i32* %7, align 4, !dbg !59, !tbaa !19
  br label %46, !dbg !52, !llvm.loop !60

60:                                               ; preds = %49
  %61 = bitcast i32* %8 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %61) #3, !dbg !61
  store i32 10000, i32* %8, align 4, !dbg !62, !tbaa !19
  br label %62, !dbg !61

62:                                               ; preds = %73, %60
  %63 = load i32, i32* %8, align 4, !dbg !63, !tbaa !19
  %64 = icmp sgt i32 %63, 0, !dbg !64
  br i1 %64, label %67, label %65, !dbg !65

65:                                               ; preds = %62
  %66 = bitcast i32* %8 to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !65
  br label %76

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4, !dbg !66, !tbaa !19
  %69 = icmp eq i32 %68, 9999, !dbg !67
  br i1 %69, label %70, label %72, !dbg !66

70:                                               ; preds = %67
  %71 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !68, !tbaa !19
  store i32 %71, i32* %2, align 4, !dbg !69, !tbaa !19
  br label %72, !dbg !70

72:                                               ; preds = %70, %67
  br label %73, !dbg !71

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4, !dbg !72, !tbaa !19
  %75 = add nsw i32 %74, -1, !dbg !72
  store i32 %75, i32* %8, align 4, !dbg !72, !tbaa !19
  br label %62, !dbg !65, !llvm.loop !73

76:                                               ; preds = %65
  %77 = bitcast i32* %4 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #3, !dbg !74
  %78 = bitcast i32* %3 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #3, !dbg !74
  %79 = bitcast i32* %2 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #3, !dbg !74
  %80 = bitcast i32* %1 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #3, !dbg !74
  ret void, !dbg !74
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @idlerun(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_isr_1() #0 !dbg !75 {
  call void @enable_isr(i32 2), !dbg !76
  store volatile i32 999, i32* @svp_simple_003_001_global_var2, align 4, !dbg !77, !tbaa !19
  %1 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !78, !tbaa !19
  %2 = icmp eq i32 %1, 1, !dbg !79
  br i1 %2, label %3, label %4, !dbg !78

3:                                                ; preds = %0
  store volatile i32 999, i32* @svp_simple_003_001_global_var1, align 4, !dbg !80, !tbaa !19
  br label %9, !dbg !81

4:                                                ; preds = %0
  %5 = load volatile i32, i32* @svp_simple_003_001_global_flag1, align 4, !dbg !82, !tbaa !19
  %6 = icmp eq i32 %5, 2, !dbg !83
  br i1 %6, label %7, label %8, !dbg !82

7:                                                ; preds = %4
  store volatile i32 888, i32* @svp_simple_003_001_global_var1, align 4, !dbg !84, !tbaa !19
  br label %8, !dbg !85

8:                                                ; preds = %7, %4
  br label %9

9:                                                ; preds = %8, %3
  ret void, !dbg !86
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_isr_2() #0 !dbg !87 {
  call void (...) @idlerun(), !dbg !88
  store volatile i32 1, i32* @svp_simple_003_001_global_flag, align 4, !dbg !89, !tbaa !19
  ret void, !dbg !90
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_003_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_003")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_003_001_main", scope: !9, file: !9, line: 27, type: !10, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_003_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_003")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 28, column: 3, scope: !8)
!12 = !DILocation(line: 29, column: 3, scope: !8)
!13 = !DILocation(line: 30, column: 3, scope: !8)
!14 = !DILocation(line: 31, column: 3, scope: !8)
!15 = !DILocation(line: 33, column: 3, scope: !8)
!16 = !DILocation(line: 34, column: 3, scope: !8)
!17 = !DILocation(line: 36, column: 8, scope: !8)
!18 = !DILocation(line: 36, column: 12, scope: !8)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 36, column: 19, scope: !8)
!24 = !DILocation(line: 36, column: 21, scope: !8)
!25 = !DILocation(line: 36, column: 3, scope: !8)
!26 = !DILocation(line: 37, column: 9, scope: !8)
!27 = !DILocation(line: 37, column: 11, scope: !8)
!28 = !DILocation(line: 38, column: 17, scope: !8)
!29 = !DILocation(line: 38, column: 15, scope: !8)
!30 = !DILocation(line: 39, column: 5, scope: !8)
!31 = !DILocation(line: 40, column: 3, scope: !8)
!32 = !DILocation(line: 36, column: 36, scope: !8)
!33 = distinct !{!33, !25, !31}
!34 = !DILocation(line: 41, column: 8, scope: !8)
!35 = !DILocation(line: 41, column: 12, scope: !8)
!36 = !DILocation(line: 41, column: 28, scope: !8)
!37 = !DILocation(line: 41, column: 30, scope: !8)
!38 = !DILocation(line: 41, column: 3, scope: !8)
!39 = !DILocation(line: 42, column: 9, scope: !8)
!40 = !DILocation(line: 42, column: 11, scope: !8)
!41 = !DILocation(line: 43, column: 17, scope: !8)
!42 = !DILocation(line: 43, column: 15, scope: !8)
!43 = !DILocation(line: 44, column: 5, scope: !8)
!44 = !DILocation(line: 45, column: 3, scope: !8)
!45 = !DILocation(line: 41, column: 36, scope: !8)
!46 = distinct !{!46, !38, !44}
!47 = !DILocation(line: 47, column: 3, scope: !8)
!48 = !DILocation(line: 48, column: 8, scope: !8)
!49 = !DILocation(line: 48, column: 12, scope: !8)
!50 = !DILocation(line: 48, column: 19, scope: !8)
!51 = !DILocation(line: 48, column: 21, scope: !8)
!52 = !DILocation(line: 48, column: 3, scope: !8)
!53 = !DILocation(line: 49, column: 9, scope: !8)
!54 = !DILocation(line: 49, column: 11, scope: !8)
!55 = !DILocation(line: 50, column: 17, scope: !8)
!56 = !DILocation(line: 50, column: 15, scope: !8)
!57 = !DILocation(line: 51, column: 5, scope: !8)
!58 = !DILocation(line: 52, column: 3, scope: !8)
!59 = !DILocation(line: 48, column: 36, scope: !8)
!60 = distinct !{!60, !52, !58}
!61 = !DILocation(line: 53, column: 8, scope: !8)
!62 = !DILocation(line: 53, column: 12, scope: !8)
!63 = !DILocation(line: 53, column: 28, scope: !8)
!64 = !DILocation(line: 53, column: 30, scope: !8)
!65 = !DILocation(line: 53, column: 3, scope: !8)
!66 = !DILocation(line: 54, column: 9, scope: !8)
!67 = !DILocation(line: 54, column: 11, scope: !8)
!68 = !DILocation(line: 55, column: 17, scope: !8)
!69 = !DILocation(line: 55, column: 15, scope: !8)
!70 = !DILocation(line: 56, column: 5, scope: !8)
!71 = !DILocation(line: 57, column: 3, scope: !8)
!72 = !DILocation(line: 53, column: 36, scope: !8)
!73 = distinct !{!73, !65, !71}
!74 = !DILocation(line: 58, column: 1, scope: !8)
!75 = distinct !DISubprogram(name: "svp_simple_003_001_isr_1", scope: !9, file: !9, line: 60, type: !10, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!76 = !DILocation(line: 61, column: 3, scope: !75)
!77 = !DILocation(line: 62, column: 34, scope: !75)
!78 = !DILocation(line: 64, column: 7, scope: !75)
!79 = !DILocation(line: 64, column: 38, scope: !75)
!80 = !DILocation(line: 65, column: 36, scope: !75)
!81 = !DILocation(line: 66, column: 3, scope: !75)
!82 = !DILocation(line: 66, column: 14, scope: !75)
!83 = !DILocation(line: 66, column: 46, scope: !75)
!84 = !DILocation(line: 67, column: 36, scope: !75)
!85 = !DILocation(line: 68, column: 3, scope: !75)
!86 = !DILocation(line: 69, column: 1, scope: !75)
!87 = distinct !DISubprogram(name: "svp_simple_003_001_isr_2", scope: !9, file: !9, line: 71, type: !10, scopeLine: 71, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!88 = !DILocation(line: 72, column: 3, scope: !87)
!89 = !DILocation(line: 73, column: 34, scope: !87)
!90 = !DILocation(line: 74, column: 1, scope: !87)
