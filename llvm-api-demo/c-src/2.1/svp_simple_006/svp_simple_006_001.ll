; ModuleID = 'svp_simple_006_001.bc'
source_filename = "./svp_simple_006_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@flag = global i8 85, align 1
@svp_simple_006_001_global_var1 = common global i32 0, align 4
@svp_simple_006_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_006_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %8 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !12
  %9 = bitcast i32* %2 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !12
  %10 = bitcast i32* %3 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !13
  store i32 0, i32* %3, align 4, !dbg !14, !tbaa !15
  br label %11, !dbg !13

11:                                               ; preds = %50, %0
  %12 = load i32, i32* %3, align 4, !dbg !19, !tbaa !15
  %13 = icmp slt i32 %12, 5, !dbg !20
  br i1 %13, label %16, label %14, !dbg !21

14:                                               ; preds = %11
  store i32 2, i32* %4, align 4
  %15 = bitcast i32* %3 to i8*, !dbg !21
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3, !dbg !21
  br label %53

16:                                               ; preds = %11
  %17 = bitcast i32* %5 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !22
  store i32 0, i32* %5, align 4, !dbg !23, !tbaa !15
  br label %18, !dbg !22

18:                                               ; preds = %46, %16
  %19 = load i32, i32* %3, align 4, !dbg !24, !tbaa !15
  %20 = icmp slt i32 %19, 5, !dbg !25
  br i1 %20, label %23, label %21, !dbg !26

21:                                               ; preds = %18
  store i32 5, i32* %4, align 4
  %22 = bitcast i32* %5 to i8*, !dbg !26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !26
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4, !dbg !27, !tbaa !15
  %25 = load i32, i32* %5, align 4, !dbg !28, !tbaa !15
  %26 = icmp eq i32 %24, %25, !dbg !29
  br i1 %26, label %27, label %45, !dbg !27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4, !dbg !30, !tbaa !15
  %29 = icmp eq i32 %28, 0, !dbg !31
  br i1 %29, label %30, label %32, !dbg !30

30:                                               ; preds = %27
  %31 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !32, !tbaa !15
  store i32 %31, i32* %1, align 4, !dbg !33, !tbaa !15
  br label %44, !dbg !34

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4, !dbg !35, !tbaa !15
  %34 = icmp eq i32 %33, 4, !dbg !36
  br i1 %34, label %35, label %37, !dbg !35

35:                                               ; preds = %32
  %36 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !37, !tbaa !15
  store i32 %36, i32* %2, align 4, !dbg !38, !tbaa !15
  br label %43, !dbg !39

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4, !dbg !40, !tbaa !15
  %39 = icmp eq i32 %38, 6, !dbg !41
  br i1 %39, label %40, label %42, !dbg !40

40:                                               ; preds = %37
  %41 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !42, !tbaa !15
  store i32 %41, i32* %2, align 4, !dbg !43, !tbaa !15
  br label %42, !dbg !44

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %30
  br label %45, !dbg !45

45:                                               ; preds = %44, %23
  br label %46, !dbg !46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4, !dbg !47, !tbaa !15
  %48 = add nsw i32 %47, 1, !dbg !47
  store i32 %48, i32* %5, align 4, !dbg !47, !tbaa !15
  br label %18, !dbg !26, !llvm.loop !48

49:                                               ; preds = %21
  br label %50, !dbg !46

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4, !dbg !49, !tbaa !15
  %52 = add nsw i32 %51, 1, !dbg !49
  store i32 %52, i32* %3, align 4, !dbg !49, !tbaa !15
  br label %11, !dbg !21, !llvm.loop !50

53:                                               ; preds = %14
  %54 = bitcast i32* %6 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %54) #3, !dbg !51
  store i32 0, i32* %6, align 4, !dbg !52, !tbaa !15
  br label %55, !dbg !51

55:                                               ; preds = %82, %53
  %56 = load i32, i32* %6, align 4, !dbg !53, !tbaa !15
  %57 = icmp slt i32 %56, 5, !dbg !54
  br i1 %57, label %60, label %58, !dbg !55

58:                                               ; preds = %55
  store i32 8, i32* %4, align 4
  %59 = bitcast i32* %6 to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #3, !dbg !55
  br label %85

60:                                               ; preds = %55
  %61 = bitcast i32* %7 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %61) #3, !dbg !56
  store i32 0, i32* %7, align 4, !dbg !57, !tbaa !15
  br label %62, !dbg !56

62:                                               ; preds = %78, %60
  %63 = load i32, i32* %7, align 4, !dbg !58, !tbaa !15
  %64 = icmp slt i32 %63, 5, !dbg !59
  br i1 %64, label %67, label %65, !dbg !60

65:                                               ; preds = %62
  store i32 11, i32* %4, align 4
  %66 = bitcast i32* %7 to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !60
  br label %81

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4, !dbg !61, !tbaa !15
  %69 = load i32, i32* %7, align 4, !dbg !62, !tbaa !15
  %70 = add nsw i32 %68, %69, !dbg !63
  %71 = icmp eq i32 %70, 6, !dbg !64
  br i1 %71, label %72, label %77, !dbg !65

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4, !dbg !66, !tbaa !15
  %74 = load i32, i32* %7, align 4, !dbg !67, !tbaa !15
  %75 = icmp slt i32 %73, %74, !dbg !68
  br i1 %75, label %76, label %77, !dbg !69

76:                                               ; preds = %72
  store volatile i32 2, i32* @svp_simple_006_001_global_var2, align 4, !dbg !70, !tbaa !15
  br label %77, !dbg !71

77:                                               ; preds = %76, %72, %67
  br label %78, !dbg !72

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4, !dbg !73, !tbaa !15
  %80 = add nsw i32 %79, 1, !dbg !73
  store i32 %80, i32* %7, align 4, !dbg !73, !tbaa !15
  br label %62, !dbg !60, !llvm.loop !74

81:                                               ; preds = %65
  br label %82, !dbg !72

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4, !dbg !75, !tbaa !15
  %84 = add nsw i32 %83, 1, !dbg !75
  store i32 %84, i32* %6, align 4, !dbg !75, !tbaa !15
  br label %55, !dbg !55, !llvm.loop !76

85:                                               ; preds = %58
  %86 = bitcast i32* %2 to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %86) #3, !dbg !77
  %87 = bitcast i32* %1 to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #3, !dbg !77
  ret void, !dbg !77
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_006_001_isr_1() #0 !dbg !78 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !79
  call void (...) @idlerun(), !dbg !80
  store volatile i32 0, i32* @svp_simple_006_001_global_var1, align 4, !dbg !81, !tbaa !15
  %3 = load volatile i32, i32* @svp_simple_006_001_global_var2, align 4, !dbg !82, !tbaa !15
  store i32 %3, i32* %1, align 4, !dbg !83, !tbaa !15
  %4 = bitcast i32* %1 to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #3, !dbg !84
  ret void, !dbg !84
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_006_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_006")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_006_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_006_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_006")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 29, column: 8, scope: !8)
!14 = !DILocation(line: 29, column: 12, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 29, column: 19, scope: !8)
!20 = !DILocation(line: 29, column: 21, scope: !8)
!21 = !DILocation(line: 29, column: 3, scope: !8)
!22 = !DILocation(line: 30, column: 10, scope: !8)
!23 = !DILocation(line: 30, column: 14, scope: !8)
!24 = !DILocation(line: 30, column: 21, scope: !8)
!25 = !DILocation(line: 30, column: 23, scope: !8)
!26 = !DILocation(line: 30, column: 5, scope: !8)
!27 = !DILocation(line: 31, column: 11, scope: !8)
!28 = !DILocation(line: 31, column: 16, scope: !8)
!29 = !DILocation(line: 31, column: 13, scope: !8)
!30 = !DILocation(line: 32, column: 13, scope: !8)
!31 = !DILocation(line: 32, column: 15, scope: !8)
!32 = !DILocation(line: 33, column: 21, scope: !8)
!33 = !DILocation(line: 33, column: 19, scope: !8)
!34 = !DILocation(line: 33, column: 11, scope: !8)
!35 = !DILocation(line: 34, column: 18, scope: !8)
!36 = !DILocation(line: 34, column: 20, scope: !8)
!37 = !DILocation(line: 35, column: 21, scope: !8)
!38 = !DILocation(line: 35, column: 19, scope: !8)
!39 = !DILocation(line: 35, column: 11, scope: !8)
!40 = !DILocation(line: 36, column: 18, scope: !8)
!41 = !DILocation(line: 36, column: 20, scope: !8)
!42 = !DILocation(line: 37, column: 21, scope: !8)
!43 = !DILocation(line: 37, column: 19, scope: !8)
!44 = !DILocation(line: 37, column: 11, scope: !8)
!45 = !DILocation(line: 38, column: 7, scope: !8)
!46 = !DILocation(line: 39, column: 5, scope: !8)
!47 = !DILocation(line: 30, column: 29, scope: !8)
!48 = distinct !{!48, !26, !46}
!49 = !DILocation(line: 29, column: 27, scope: !8)
!50 = distinct !{!50, !21, !46}
!51 = !DILocation(line: 41, column: 8, scope: !8)
!52 = !DILocation(line: 41, column: 12, scope: !8)
!53 = !DILocation(line: 41, column: 19, scope: !8)
!54 = !DILocation(line: 41, column: 21, scope: !8)
!55 = !DILocation(line: 41, column: 3, scope: !8)
!56 = !DILocation(line: 42, column: 10, scope: !8)
!57 = !DILocation(line: 42, column: 14, scope: !8)
!58 = !DILocation(line: 42, column: 21, scope: !8)
!59 = !DILocation(line: 42, column: 23, scope: !8)
!60 = !DILocation(line: 42, column: 5, scope: !8)
!61 = !DILocation(line: 43, column: 13, scope: !8)
!62 = !DILocation(line: 43, column: 17, scope: !8)
!63 = !DILocation(line: 43, column: 15, scope: !8)
!64 = !DILocation(line: 43, column: 20, scope: !8)
!65 = !DILocation(line: 43, column: 26, scope: !8)
!66 = !DILocation(line: 43, column: 30, scope: !8)
!67 = !DILocation(line: 43, column: 34, scope: !8)
!68 = !DILocation(line: 43, column: 32, scope: !8)
!69 = !DILocation(line: 43, column: 11, scope: !8)
!70 = !DILocation(line: 44, column: 40, scope: !8)
!71 = !DILocation(line: 44, column: 9, scope: !8)
!72 = !DILocation(line: 45, column: 5, scope: !8)
!73 = !DILocation(line: 42, column: 29, scope: !8)
!74 = distinct !{!74, !60, !72}
!75 = !DILocation(line: 41, column: 27, scope: !8)
!76 = distinct !{!76, !55, !72}
!77 = !DILocation(line: 46, column: 1, scope: !8)
!78 = distinct !DISubprogram(name: "svp_simple_006_001_isr_1", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!79 = !DILocation(line: 49, column: 3, scope: !78)
!80 = !DILocation(line: 50, column: 3, scope: !78)
!81 = !DILocation(line: 52, column: 34, scope: !78)
!82 = !DILocation(line: 53, column: 13, scope: !78)
!83 = !DILocation(line: 53, column: 11, scope: !78)
!84 = !DILocation(line: 54, column: 1, scope: !78)
