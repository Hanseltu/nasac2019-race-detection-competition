; ModuleID = 'svp_simple_003_001-opt.bc'
source_filename = "./svp_simple_003_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_003_001_global_flag = global i32 0, align 4
@svp_simple_003_001_global_flag1 = global i32 0, align 4
@svp_simple_003_001_global_var2 = common global i32 0, align 4
@svp_simple_003_001_global_var1 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void (...) @idlerun(), !dbg !12
  call void @disable_isr(i32 1), !dbg !13
  call void @disable_isr(i32 2), !dbg !14
  br label %1, !dbg !15

1:                                                ; preds = %9, %0
  %.03 = phi i32 [ 0, %0 ], [ %10, %9 ], !dbg !16
  %2 = icmp slt i32 %.03, 10000, !dbg !17
  br i1 %2, label %4, label %3, !dbg !18

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  %5 = icmp eq i32 %.03, 9999, !dbg !19
  br i1 %5, label %6, label %8, !dbg !20

6:                                                ; preds = %4
  %7 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !21, !tbaa !22
  br label %8, !dbg !26

8:                                                ; preds = %6, %4
  br label %9, !dbg !27

9:                                                ; preds = %8
  %10 = add nsw i32 %.03, 1, !dbg !28
  br label %1, !dbg !18, !llvm.loop !29

11:                                               ; preds = %3
  br label %12, !dbg !30

12:                                               ; preds = %20, %11
  %.02 = phi i32 [ 10000, %11 ], [ %21, %20 ], !dbg !16
  %13 = icmp sgt i32 %.02, 0, !dbg !31
  br i1 %13, label %15, label %14, !dbg !32

14:                                               ; preds = %12
  br label %22

15:                                               ; preds = %12
  %16 = icmp eq i32 %.02, 9999, !dbg !33
  br i1 %16, label %17, label %19, !dbg !34

17:                                               ; preds = %15
  %18 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !35, !tbaa !22
  br label %19, !dbg !36

19:                                               ; preds = %17, %15
  br label %20, !dbg !37

20:                                               ; preds = %19
  %21 = add nsw i32 %.02, -1, !dbg !38
  br label %12, !dbg !32, !llvm.loop !39

22:                                               ; preds = %14
  call void @enable_isr(i32 1), !dbg !40
  br label %23, !dbg !41

23:                                               ; preds = %31, %22
  %.01 = phi i32 [ 0, %22 ], [ %32, %31 ], !dbg !16
  %24 = icmp slt i32 %.01, 10000, !dbg !42
  br i1 %24, label %26, label %25, !dbg !43

25:                                               ; preds = %23
  br label %33

26:                                               ; preds = %23
  %27 = icmp eq i32 %.01, 9999, !dbg !44
  br i1 %27, label %28, label %30, !dbg !45

28:                                               ; preds = %26
  %29 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !46, !tbaa !22
  br label %30, !dbg !47

30:                                               ; preds = %28, %26
  br label %31, !dbg !48

31:                                               ; preds = %30
  %32 = add nsw i32 %.01, 1, !dbg !49
  br label %23, !dbg !43, !llvm.loop !50

33:                                               ; preds = %25
  br label %34, !dbg !51

34:                                               ; preds = %42, %33
  %.0 = phi i32 [ 10000, %33 ], [ %43, %42 ], !dbg !16
  %35 = icmp sgt i32 %.0, 0, !dbg !52
  br i1 %35, label %37, label %36, !dbg !53

36:                                               ; preds = %34
  br label %44

37:                                               ; preds = %34
  %38 = icmp eq i32 %.0, 9999, !dbg !54
  br i1 %38, label %39, label %41, !dbg !55

39:                                               ; preds = %37
  %40 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !56, !tbaa !22
  br label %41, !dbg !57

41:                                               ; preds = %39, %37
  br label %42, !dbg !58

42:                                               ; preds = %41
  %43 = add nsw i32 %.0, -1, !dbg !59
  br label %34, !dbg !53, !llvm.loop !60

44:                                               ; preds = %36
  ret void, !dbg !61
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
define void @svp_simple_003_001_isr_1() #0 !dbg !62 {
  call void @enable_isr(i32 2), !dbg !63
  store volatile i32 999, i32* @svp_simple_003_001_global_var2, align 4, !dbg !64, !tbaa !22
  %1 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !65, !tbaa !22
  %2 = icmp eq i32 %1, 1, !dbg !66
  br i1 %2, label %3, label %4, !dbg !65

3:                                                ; preds = %0
  store volatile i32 999, i32* @svp_simple_003_001_global_var1, align 4, !dbg !67, !tbaa !22
  br label %9, !dbg !68

4:                                                ; preds = %0
  %5 = load volatile i32, i32* @svp_simple_003_001_global_flag1, align 4, !dbg !69, !tbaa !22
  %6 = icmp eq i32 %5, 2, !dbg !70
  br i1 %6, label %7, label %8, !dbg !69

7:                                                ; preds = %4
  store volatile i32 888, i32* @svp_simple_003_001_global_var1, align 4, !dbg !71, !tbaa !22
  br label %8, !dbg !72

8:                                                ; preds = %7, %4
  br label %9

9:                                                ; preds = %8, %3
  ret void, !dbg !73
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_isr_2() #0 !dbg !74 {
  call void (...) @idlerun(), !dbg !75
  store volatile i32 1, i32* @svp_simple_003_001_global_flag, align 4, !dbg !76, !tbaa !22
  ret void, !dbg !77
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

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
!12 = !DILocation(line: 31, column: 3, scope: !8)
!13 = !DILocation(line: 33, column: 3, scope: !8)
!14 = !DILocation(line: 34, column: 3, scope: !8)
!15 = !DILocation(line: 36, column: 8, scope: !8)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 36, column: 21, scope: !8)
!18 = !DILocation(line: 36, column: 3, scope: !8)
!19 = !DILocation(line: 37, column: 11, scope: !8)
!20 = !DILocation(line: 37, column: 9, scope: !8)
!21 = !DILocation(line: 38, column: 17, scope: !8)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 39, column: 5, scope: !8)
!27 = !DILocation(line: 40, column: 3, scope: !8)
!28 = !DILocation(line: 36, column: 36, scope: !8)
!29 = distinct !{!29, !18, !27}
!30 = !DILocation(line: 41, column: 8, scope: !8)
!31 = !DILocation(line: 41, column: 30, scope: !8)
!32 = !DILocation(line: 41, column: 3, scope: !8)
!33 = !DILocation(line: 42, column: 11, scope: !8)
!34 = !DILocation(line: 42, column: 9, scope: !8)
!35 = !DILocation(line: 43, column: 17, scope: !8)
!36 = !DILocation(line: 44, column: 5, scope: !8)
!37 = !DILocation(line: 45, column: 3, scope: !8)
!38 = !DILocation(line: 41, column: 36, scope: !8)
!39 = distinct !{!39, !32, !37}
!40 = !DILocation(line: 47, column: 3, scope: !8)
!41 = !DILocation(line: 48, column: 8, scope: !8)
!42 = !DILocation(line: 48, column: 21, scope: !8)
!43 = !DILocation(line: 48, column: 3, scope: !8)
!44 = !DILocation(line: 49, column: 11, scope: !8)
!45 = !DILocation(line: 49, column: 9, scope: !8)
!46 = !DILocation(line: 50, column: 17, scope: !8)
!47 = !DILocation(line: 51, column: 5, scope: !8)
!48 = !DILocation(line: 52, column: 3, scope: !8)
!49 = !DILocation(line: 48, column: 36, scope: !8)
!50 = distinct !{!50, !43, !48}
!51 = !DILocation(line: 53, column: 8, scope: !8)
!52 = !DILocation(line: 53, column: 30, scope: !8)
!53 = !DILocation(line: 53, column: 3, scope: !8)
!54 = !DILocation(line: 54, column: 11, scope: !8)
!55 = !DILocation(line: 54, column: 9, scope: !8)
!56 = !DILocation(line: 55, column: 17, scope: !8)
!57 = !DILocation(line: 56, column: 5, scope: !8)
!58 = !DILocation(line: 57, column: 3, scope: !8)
!59 = !DILocation(line: 53, column: 36, scope: !8)
!60 = distinct !{!60, !53, !58}
!61 = !DILocation(line: 58, column: 1, scope: !8)
!62 = distinct !DISubprogram(name: "svp_simple_003_001_isr_1", scope: !9, file: !9, line: 60, type: !10, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!63 = !DILocation(line: 61, column: 3, scope: !62)
!64 = !DILocation(line: 62, column: 34, scope: !62)
!65 = !DILocation(line: 64, column: 7, scope: !62)
!66 = !DILocation(line: 64, column: 38, scope: !62)
!67 = !DILocation(line: 65, column: 36, scope: !62)
!68 = !DILocation(line: 66, column: 3, scope: !62)
!69 = !DILocation(line: 66, column: 14, scope: !62)
!70 = !DILocation(line: 66, column: 46, scope: !62)
!71 = !DILocation(line: 67, column: 36, scope: !62)
!72 = !DILocation(line: 68, column: 3, scope: !62)
!73 = !DILocation(line: 69, column: 1, scope: !62)
!74 = distinct !DISubprogram(name: "svp_simple_003_001_isr_2", scope: !9, file: !9, line: 71, type: !10, scopeLine: 71, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!75 = !DILocation(line: 72, column: 3, scope: !74)
!76 = !DILocation(line: 73, column: 34, scope: !74)
!77 = !DILocation(line: 74, column: 1, scope: !74)
