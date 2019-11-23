; ModuleID = 'svp_simple_003_001-opt.bc'
source_filename = "./svp_simple_003_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_003_001_global_flag = dso_local global i32 0, align 4
@svp_simple_003_001_global_flag1 = dso_local global i32 0, align 4
@svp_simple_003_001_global_var2 = common dso_local global i32 0, align 4
@svp_simple_003_001_global_var1 = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_003_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  call void (...) @idlerun() #3, !dbg !11
  call void @disable_isr(i32 1) #3, !dbg !12
  call void @disable_isr(i32 2) #3, !dbg !13
  br label %1, !dbg !14

1:                                                ; preds = %7, %0
  %.03 = phi i32 [ 0, %0 ], [ %8, %7 ], !dbg !15
  %2 = icmp ult i32 %.03, 10000, !dbg !16
  br i1 %2, label %3, label %9, !dbg !17

3:                                                ; preds = %1
  %4 = icmp eq i32 %.03, 9999, !dbg !18
  br i1 %4, label %5, label %7, !dbg !19

5:                                                ; preds = %3
  %6 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !20, !tbaa !21
  br label %7, !dbg !25

7:                                                ; preds = %5, %3
  %8 = add nuw nsw i32 %.03, 1, !dbg !26
  br label %1, !dbg !17, !llvm.loop !27

9:                                                ; preds = %15, %1
  %.02 = phi i32 [ %16, %15 ], [ 10000, %1 ], !dbg !15
  %10 = icmp sgt i32 %.02, 0, !dbg !29
  br i1 %10, label %11, label %17, !dbg !30

11:                                               ; preds = %9
  %12 = icmp eq i32 %.02, 9999, !dbg !31
  br i1 %12, label %13, label %15, !dbg !32

13:                                               ; preds = %11
  %14 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !33, !tbaa !21
  br label %15, !dbg !34

15:                                               ; preds = %13, %11
  %16 = add nsw i32 %.02, -1, !dbg !35
  br label %9, !dbg !30, !llvm.loop !36

17:                                               ; preds = %9
  call void @enable_isr(i32 1) #3, !dbg !38
  br label %18, !dbg !39

18:                                               ; preds = %24, %17
  %.01 = phi i32 [ 0, %17 ], [ %25, %24 ], !dbg !15
  %19 = icmp ult i32 %.01, 10000, !dbg !40
  br i1 %19, label %20, label %26, !dbg !41

20:                                               ; preds = %18
  %21 = icmp eq i32 %.01, 9999, !dbg !42
  br i1 %21, label %22, label %24, !dbg !43

22:                                               ; preds = %20
  %23 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !44, !tbaa !21
  br label %24, !dbg !45

24:                                               ; preds = %22, %20
  %25 = add nuw nsw i32 %.01, 1, !dbg !46
  br label %18, !dbg !41, !llvm.loop !47

26:                                               ; preds = %32, %18
  %.0 = phi i32 [ %33, %32 ], [ 10000, %18 ], !dbg !15
  %27 = icmp sgt i32 %.0, 0, !dbg !49
  br i1 %27, label %28, label %34, !dbg !50

28:                                               ; preds = %26
  %29 = icmp eq i32 %.0, 9999, !dbg !51
  br i1 %29, label %30, label %32, !dbg !52

30:                                               ; preds = %28
  %31 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !53, !tbaa !21
  br label %32, !dbg !54

32:                                               ; preds = %30, %28
  %33 = add nsw i32 %.0, -1, !dbg !55
  br label %26, !dbg !50, !llvm.loop !56

34:                                               ; preds = %26
  ret void, !dbg !58
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @idlerun(...) #1

declare dso_local void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @enable_isr(i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_003_001_isr_1() #0 !dbg !59 {
  call void @enable_isr(i32 2) #3, !dbg !60
  store volatile i32 999, i32* @svp_simple_003_001_global_var2, align 4, !dbg !61, !tbaa !21
  %1 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !62, !tbaa !21
  %2 = icmp eq i32 %1, 1, !dbg !63
  br i1 %2, label %3, label %4, !dbg !62

3:                                                ; preds = %0
  store volatile i32 999, i32* @svp_simple_003_001_global_var1, align 4, !dbg !64, !tbaa !21
  br label %8, !dbg !65

4:                                                ; preds = %0
  %5 = load volatile i32, i32* @svp_simple_003_001_global_flag1, align 4, !dbg !66, !tbaa !21
  %6 = icmp eq i32 %5, 2, !dbg !67
  br i1 %6, label %7, label %8, !dbg !66

7:                                                ; preds = %4
  store volatile i32 888, i32* @svp_simple_003_001_global_var1, align 4, !dbg !68, !tbaa !21
  br label %8, !dbg !69

8:                                                ; preds = %7, %4, %3
  ret void, !dbg !70
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_003_001_isr_2() #0 !dbg !71 {
  call void (...) @idlerun() #3, !dbg !72
  store volatile i32 1, i32* @svp_simple_003_001_global_flag, align 4, !dbg !73, !tbaa !21
  ret void, !dbg !74
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_003_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_003")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_003_001_main", scope: !8, file: !8, line: 27, type: !9, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_003_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_003")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 3, scope: !7)
!11 = !DILocation(line: 31, column: 3, scope: !7)
!12 = !DILocation(line: 33, column: 3, scope: !7)
!13 = !DILocation(line: 34, column: 3, scope: !7)
!14 = !DILocation(line: 36, column: 8, scope: !7)
!15 = !DILocation(line: 0, scope: !7)
!16 = !DILocation(line: 36, column: 21, scope: !7)
!17 = !DILocation(line: 36, column: 3, scope: !7)
!18 = !DILocation(line: 37, column: 11, scope: !7)
!19 = !DILocation(line: 37, column: 9, scope: !7)
!20 = !DILocation(line: 38, column: 17, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 39, column: 5, scope: !7)
!26 = !DILocation(line: 36, column: 36, scope: !7)
!27 = distinct !{!27, !17, !28}
!28 = !DILocation(line: 40, column: 3, scope: !7)
!29 = !DILocation(line: 41, column: 30, scope: !7)
!30 = !DILocation(line: 41, column: 3, scope: !7)
!31 = !DILocation(line: 42, column: 11, scope: !7)
!32 = !DILocation(line: 42, column: 9, scope: !7)
!33 = !DILocation(line: 43, column: 17, scope: !7)
!34 = !DILocation(line: 44, column: 5, scope: !7)
!35 = !DILocation(line: 41, column: 36, scope: !7)
!36 = distinct !{!36, !30, !37}
!37 = !DILocation(line: 45, column: 3, scope: !7)
!38 = !DILocation(line: 47, column: 3, scope: !7)
!39 = !DILocation(line: 48, column: 8, scope: !7)
!40 = !DILocation(line: 48, column: 21, scope: !7)
!41 = !DILocation(line: 48, column: 3, scope: !7)
!42 = !DILocation(line: 49, column: 11, scope: !7)
!43 = !DILocation(line: 49, column: 9, scope: !7)
!44 = !DILocation(line: 50, column: 17, scope: !7)
!45 = !DILocation(line: 51, column: 5, scope: !7)
!46 = !DILocation(line: 48, column: 36, scope: !7)
!47 = distinct !{!47, !41, !48}
!48 = !DILocation(line: 52, column: 3, scope: !7)
!49 = !DILocation(line: 53, column: 30, scope: !7)
!50 = !DILocation(line: 53, column: 3, scope: !7)
!51 = !DILocation(line: 54, column: 11, scope: !7)
!52 = !DILocation(line: 54, column: 9, scope: !7)
!53 = !DILocation(line: 55, column: 17, scope: !7)
!54 = !DILocation(line: 56, column: 5, scope: !7)
!55 = !DILocation(line: 53, column: 36, scope: !7)
!56 = distinct !{!56, !50, !57}
!57 = !DILocation(line: 57, column: 3, scope: !7)
!58 = !DILocation(line: 58, column: 1, scope: !7)
!59 = distinct !DISubprogram(name: "svp_simple_003_001_isr_1", scope: !8, file: !8, line: 60, type: !9, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!60 = !DILocation(line: 61, column: 3, scope: !59)
!61 = !DILocation(line: 62, column: 34, scope: !59)
!62 = !DILocation(line: 64, column: 7, scope: !59)
!63 = !DILocation(line: 64, column: 38, scope: !59)
!64 = !DILocation(line: 65, column: 36, scope: !59)
!65 = !DILocation(line: 66, column: 3, scope: !59)
!66 = !DILocation(line: 66, column: 14, scope: !59)
!67 = !DILocation(line: 66, column: 46, scope: !59)
!68 = !DILocation(line: 67, column: 36, scope: !59)
!69 = !DILocation(line: 68, column: 3, scope: !59)
!70 = !DILocation(line: 69, column: 1, scope: !59)
!71 = distinct !DISubprogram(name: "svp_simple_003_001_isr_2", scope: !8, file: !8, line: 71, type: !9, scopeLine: 71, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 72, column: 3, scope: !71)
!73 = !DILocation(line: 73, column: 34, scope: !71)
!74 = !DILocation(line: 74, column: 1, scope: !71)
