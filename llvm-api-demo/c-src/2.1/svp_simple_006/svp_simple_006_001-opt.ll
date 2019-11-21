; ModuleID = 'svp_simple_006_001-opt.bc'
source_filename = "./svp_simple_006_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@flag = global i8 85, align 1
@svp_simple_006_001_global_var1 = common global i32 0, align 4
@svp_simple_006_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_006_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  br label %1, !dbg !12

1:                                                ; preds = %29, %0
  %.01 = phi i32 [ 0, %0 ], [ %30, %29 ], !dbg !13
  %2 = icmp slt i32 %.01, 5, !dbg !14
  br i1 %2, label %4, label %3, !dbg !15

3:                                                ; preds = %1
  br label %31

4:                                                ; preds = %1
  br label %5, !dbg !16

5:                                                ; preds = %26, %4
  %.02 = phi i32 [ 0, %4 ], [ %27, %26 ], !dbg !13
  %6 = icmp slt i32 %.01, 5, !dbg !17
  br i1 %6, label %8, label %7, !dbg !18

7:                                                ; preds = %5
  br label %28

8:                                                ; preds = %5
  %9 = icmp eq i32 %.01, %.02, !dbg !19
  br i1 %9, label %10, label %25, !dbg !20

10:                                               ; preds = %8
  %11 = icmp eq i32 %.01, 0, !dbg !21
  br i1 %11, label %12, label %14, !dbg !22

12:                                               ; preds = %10
  %13 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !23, !tbaa !24
  br label %24, !dbg !28

14:                                               ; preds = %10
  %15 = icmp eq i32 %.01, 4, !dbg !29
  br i1 %15, label %16, label %18, !dbg !30

16:                                               ; preds = %14
  %17 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !31, !tbaa !24
  br label %23, !dbg !32

18:                                               ; preds = %14
  %19 = icmp eq i32 %.01, 6, !dbg !33
  br i1 %19, label %20, label %22, !dbg !34

20:                                               ; preds = %18
  %21 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !35, !tbaa !24
  br label %22, !dbg !36

22:                                               ; preds = %20, %18
  br label %23

23:                                               ; preds = %22, %16
  br label %24

24:                                               ; preds = %23, %12
  br label %25, !dbg !37

25:                                               ; preds = %24, %8
  br label %26, !dbg !38

26:                                               ; preds = %25
  %27 = add nsw i32 %.02, 1, !dbg !39
  br label %5, !dbg !18, !llvm.loop !40

28:                                               ; preds = %7
  br label %29, !dbg !38

29:                                               ; preds = %28
  %30 = add nsw i32 %.01, 1, !dbg !41
  br label %1, !dbg !15, !llvm.loop !42

31:                                               ; preds = %3
  br label %32, !dbg !43

32:                                               ; preds = %49, %31
  %.03 = phi i32 [ 0, %31 ], [ %50, %49 ], !dbg !13
  %33 = icmp slt i32 %.03, 5, !dbg !44
  br i1 %33, label %35, label %34, !dbg !45

34:                                               ; preds = %32
  br label %51

35:                                               ; preds = %32
  br label %36, !dbg !46

36:                                               ; preds = %46, %35
  %.0 = phi i32 [ 0, %35 ], [ %47, %46 ], !dbg !13
  %37 = icmp slt i32 %.0, 5, !dbg !47
  br i1 %37, label %39, label %38, !dbg !48

38:                                               ; preds = %36
  br label %48

39:                                               ; preds = %36
  %40 = add nsw i32 %.03, %.0, !dbg !49
  %41 = icmp eq i32 %40, 6, !dbg !50
  br i1 %41, label %42, label %45, !dbg !51

42:                                               ; preds = %39
  %43 = icmp slt i32 %.03, %.0, !dbg !52
  br i1 %43, label %44, label %45, !dbg !53

44:                                               ; preds = %42
  store volatile i32 2, i32* @svp_simple_006_001_global_var2, align 4, !dbg !54, !tbaa !24
  br label %45, !dbg !55

45:                                               ; preds = %44, %42, %39
  br label %46, !dbg !56

46:                                               ; preds = %45
  %47 = add nsw i32 %.0, 1, !dbg !57
  br label %36, !dbg !48, !llvm.loop !58

48:                                               ; preds = %38
  br label %49, !dbg !56

49:                                               ; preds = %48
  %50 = add nsw i32 %.03, 1, !dbg !59
  br label %32, !dbg !45, !llvm.loop !60

51:                                               ; preds = %34
  ret void, !dbg !61
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_006_001_isr_1() #0 !dbg !62 {
  call void (...) @idlerun(), !dbg !63
  store volatile i32 0, i32* @svp_simple_006_001_global_var1, align 4, !dbg !64, !tbaa !24
  %1 = load volatile i32, i32* @svp_simple_006_001_global_var2, align 4, !dbg !65, !tbaa !24
  ret void, !dbg !66
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

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
!12 = !DILocation(line: 29, column: 8, scope: !8)
!13 = !DILocation(line: 0, scope: !8)
!14 = !DILocation(line: 29, column: 21, scope: !8)
!15 = !DILocation(line: 29, column: 3, scope: !8)
!16 = !DILocation(line: 30, column: 10, scope: !8)
!17 = !DILocation(line: 30, column: 23, scope: !8)
!18 = !DILocation(line: 30, column: 5, scope: !8)
!19 = !DILocation(line: 31, column: 13, scope: !8)
!20 = !DILocation(line: 31, column: 11, scope: !8)
!21 = !DILocation(line: 32, column: 15, scope: !8)
!22 = !DILocation(line: 32, column: 13, scope: !8)
!23 = !DILocation(line: 33, column: 21, scope: !8)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 33, column: 11, scope: !8)
!29 = !DILocation(line: 34, column: 20, scope: !8)
!30 = !DILocation(line: 34, column: 18, scope: !8)
!31 = !DILocation(line: 35, column: 21, scope: !8)
!32 = !DILocation(line: 35, column: 11, scope: !8)
!33 = !DILocation(line: 36, column: 20, scope: !8)
!34 = !DILocation(line: 36, column: 18, scope: !8)
!35 = !DILocation(line: 37, column: 21, scope: !8)
!36 = !DILocation(line: 37, column: 11, scope: !8)
!37 = !DILocation(line: 38, column: 7, scope: !8)
!38 = !DILocation(line: 39, column: 5, scope: !8)
!39 = !DILocation(line: 30, column: 29, scope: !8)
!40 = distinct !{!40, !18, !38}
!41 = !DILocation(line: 29, column: 27, scope: !8)
!42 = distinct !{!42, !15, !38}
!43 = !DILocation(line: 41, column: 8, scope: !8)
!44 = !DILocation(line: 41, column: 21, scope: !8)
!45 = !DILocation(line: 41, column: 3, scope: !8)
!46 = !DILocation(line: 42, column: 10, scope: !8)
!47 = !DILocation(line: 42, column: 23, scope: !8)
!48 = !DILocation(line: 42, column: 5, scope: !8)
!49 = !DILocation(line: 43, column: 15, scope: !8)
!50 = !DILocation(line: 43, column: 20, scope: !8)
!51 = !DILocation(line: 43, column: 26, scope: !8)
!52 = !DILocation(line: 43, column: 32, scope: !8)
!53 = !DILocation(line: 43, column: 11, scope: !8)
!54 = !DILocation(line: 44, column: 40, scope: !8)
!55 = !DILocation(line: 44, column: 9, scope: !8)
!56 = !DILocation(line: 45, column: 5, scope: !8)
!57 = !DILocation(line: 42, column: 29, scope: !8)
!58 = distinct !{!58, !48, !56}
!59 = !DILocation(line: 41, column: 27, scope: !8)
!60 = distinct !{!60, !45, !56}
!61 = !DILocation(line: 46, column: 1, scope: !8)
!62 = distinct !DISubprogram(name: "svp_simple_006_001_isr_1", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!63 = !DILocation(line: 50, column: 3, scope: !62)
!64 = !DILocation(line: 52, column: 34, scope: !62)
!65 = !DILocation(line: 53, column: 13, scope: !62)
!66 = !DILocation(line: 54, column: 1, scope: !62)
