; ModuleID = 'svp_simple_006_001-opt.bc'
source_filename = "./svp_simple_006_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@flag = dso_local global i8 85, align 1
@svp_simple_006_001_global_var1 = common dso_local global i32 0, align 4
@svp_simple_006_001_global_var2 = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_006_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  br label %1, !dbg !11

1:                                                ; preds = %16, %0
  %.01 = phi i32 [ 0, %0 ], [ %17, %16 ], !dbg !12
  %2 = icmp ult i32 %.01, 5, !dbg !13
  br i1 %2, label %3, label %18, !dbg !14

3:                                                ; preds = %14, %1
  %.02 = phi i32 [ %15, %14 ], [ 0, %1 ], !dbg !12
  %4 = icmp ult i32 %.01, 5, !dbg !15
  br i1 %4, label %5, label %16, !dbg !16

5:                                                ; preds = %3
  %6 = icmp eq i32 %.01, %.02, !dbg !17
  br i1 %6, label %7, label %14, !dbg !18

7:                                                ; preds = %5
  switch i32 %.01, label %14 [
    i32 0, label %8
    i32 4, label %10
    i32 6, label %12
  ], !dbg !19

8:                                                ; preds = %7
  %9 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !20, !tbaa !21
  br label %14, !dbg !25

10:                                               ; preds = %7
  %11 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !26, !tbaa !21
  br label %14, !dbg !27

12:                                               ; preds = %7
  %13 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !28, !tbaa !21
  br label %14, !dbg !29

14:                                               ; preds = %12, %10, %8, %7, %5
  %15 = add nuw nsw i32 %.02, 1, !dbg !30
  br label %3, !dbg !16, !llvm.loop !31

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.01, 1, !dbg !33
  br label %1, !dbg !14, !llvm.loop !34

18:                                               ; preds = %29, %1
  %.03 = phi i32 [ %30, %29 ], [ 0, %1 ], !dbg !12
  %19 = icmp ult i32 %.03, 5, !dbg !35
  br i1 %19, label %20, label %31, !dbg !36

20:                                               ; preds = %27, %18
  %.0 = phi i32 [ %28, %27 ], [ 0, %18 ], !dbg !12
  %21 = icmp ult i32 %.0, 5, !dbg !37
  br i1 %21, label %22, label %29, !dbg !38

22:                                               ; preds = %20
  %23 = add nuw nsw i32 %.0, %.03, !dbg !39
  %24 = icmp eq i32 %23, 6, !dbg !40
  %25 = icmp ult i32 %.03, %.0, !dbg !41
  %or.cond = and i1 %24, %25, !dbg !42
  br i1 %or.cond, label %26, label %27, !dbg !42

26:                                               ; preds = %22
  store volatile i32 2, i32* @svp_simple_006_001_global_var2, align 4, !dbg !43, !tbaa !21
  br label %27, !dbg !44

27:                                               ; preds = %26, %22
  %28 = add nuw nsw i32 %.0, 1, !dbg !45
  br label %20, !dbg !38, !llvm.loop !46

29:                                               ; preds = %20
  %30 = add nuw nsw i32 %.03, 1, !dbg !48
  br label %18, !dbg !36, !llvm.loop !49

31:                                               ; preds = %18
  ret void, !dbg !50
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_006_001_isr_1() #0 !dbg !51 {
  call void (...) @idlerun() #3, !dbg !52
  store volatile i32 0, i32* @svp_simple_006_001_global_var1, align 4, !dbg !53, !tbaa !21
  %1 = load volatile i32, i32* @svp_simple_006_001_global_var2, align 4, !dbg !54, !tbaa !21
  ret void, !dbg !55
}

declare dso_local void @idlerun(...) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_006_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_006")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_006_001_main", scope: !8, file: !8, line: 25, type: !9, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_006_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_006")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !7)
!11 = !DILocation(line: 29, column: 8, scope: !7)
!12 = !DILocation(line: 0, scope: !7)
!13 = !DILocation(line: 29, column: 21, scope: !7)
!14 = !DILocation(line: 29, column: 3, scope: !7)
!15 = !DILocation(line: 30, column: 23, scope: !7)
!16 = !DILocation(line: 30, column: 5, scope: !7)
!17 = !DILocation(line: 31, column: 13, scope: !7)
!18 = !DILocation(line: 31, column: 11, scope: !7)
!19 = !DILocation(line: 32, column: 13, scope: !7)
!20 = !DILocation(line: 33, column: 21, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 33, column: 11, scope: !7)
!26 = !DILocation(line: 35, column: 21, scope: !7)
!27 = !DILocation(line: 35, column: 11, scope: !7)
!28 = !DILocation(line: 37, column: 21, scope: !7)
!29 = !DILocation(line: 37, column: 11, scope: !7)
!30 = !DILocation(line: 30, column: 29, scope: !7)
!31 = distinct !{!31, !16, !32}
!32 = !DILocation(line: 39, column: 5, scope: !7)
!33 = !DILocation(line: 29, column: 27, scope: !7)
!34 = distinct !{!34, !14, !32}
!35 = !DILocation(line: 41, column: 21, scope: !7)
!36 = !DILocation(line: 41, column: 3, scope: !7)
!37 = !DILocation(line: 42, column: 23, scope: !7)
!38 = !DILocation(line: 42, column: 5, scope: !7)
!39 = !DILocation(line: 43, column: 15, scope: !7)
!40 = !DILocation(line: 43, column: 20, scope: !7)
!41 = !DILocation(line: 43, column: 32, scope: !7)
!42 = !DILocation(line: 43, column: 26, scope: !7)
!43 = !DILocation(line: 44, column: 40, scope: !7)
!44 = !DILocation(line: 44, column: 9, scope: !7)
!45 = !DILocation(line: 42, column: 29, scope: !7)
!46 = distinct !{!46, !38, !47}
!47 = !DILocation(line: 45, column: 5, scope: !7)
!48 = !DILocation(line: 41, column: 27, scope: !7)
!49 = distinct !{!49, !36, !47}
!50 = !DILocation(line: 46, column: 1, scope: !7)
!51 = distinct !DISubprogram(name: "svp_simple_006_001_isr_1", scope: !8, file: !8, line: 48, type: !9, scopeLine: 48, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!52 = !DILocation(line: 50, column: 3, scope: !51)
!53 = !DILocation(line: 52, column: 34, scope: !51)
!54 = !DILocation(line: 53, column: 13, scope: !51)
!55 = !DILocation(line: 54, column: 1, scope: !51)
