; ModuleID = 'svp_simple_005_001-opt.bc'
source_filename = "./svp_simple_005_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_005_001_global_condition = dso_local global i32 0, align 4
@svp_simple_005_001_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_005_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  br label %1, !dbg !11

1:                                                ; preds = %11, %0
  %.0 = phi i32 [ 0, %0 ], [ %12, %11 ], !dbg !12
  %2 = icmp ult i32 %.0, 10000, !dbg !13
  br i1 %2, label %3, label %13, !dbg !14

3:                                                ; preds = %9, %1
  %.01 = phi i32 [ %10, %9 ], [ 0, %1 ], !dbg !12
  %4 = icmp ult i32 %.01, 10000, !dbg !15
  br i1 %4, label %5, label %11, !dbg !16

5:                                                ; preds = %3
  %6 = icmp eq i32 %.0, 9999, !dbg !17
  %7 = icmp eq i32 %.01, 1000, !dbg !18
  %or.cond = and i1 %6, %7, !dbg !19
  br i1 %or.cond, label %8, label %9, !dbg !19

8:                                                ; preds = %5
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !20, !tbaa !21
  br label %9, !dbg !25

9:                                                ; preds = %8, %5
  %10 = add nuw nsw i32 %.01, 1, !dbg !26
  br label %3, !dbg !16, !llvm.loop !27

11:                                               ; preds = %3
  %12 = add nuw nsw i32 %.0, 1, !dbg !29
  br label %1, !dbg !14, !llvm.loop !30

13:                                               ; preds = %1
  %14 = load volatile i32, i32* @svp_simple_005_001_global_condition, align 4, !dbg !32, !tbaa !21
  %15 = icmp eq i32 %14, 1, !dbg !33
  br i1 %15, label %16, label %17, !dbg !32

16:                                               ; preds = %13
  store volatile i32 9, i32* @svp_simple_005_001_global_var, align 4, !dbg !34, !tbaa !21
  br label %17, !dbg !35

17:                                               ; preds = %16, %13
  store volatile i32 5, i32* @svp_simple_005_001_global_var, align 4, !dbg !36, !tbaa !21
  ret void, !dbg !37
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_005_001_isr_1() #0 !dbg !38 {
  call void (...) @idlerun() #3, !dbg !39
  %1 = load volatile i32, i32* @svp_simple_005_001_global_var, align 4, !dbg !40, !tbaa !21
  ret void, !dbg !41
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
!1 = !DIFile(filename: "svp_simple_005_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_005")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_005_001_main", scope: !8, file: !8, line: 27, type: !9, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_005_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_005")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 3, scope: !7)
!11 = !DILocation(line: 29, column: 8, scope: !7)
!12 = !DILocation(line: 0, scope: !7)
!13 = !DILocation(line: 29, column: 21, scope: !7)
!14 = !DILocation(line: 29, column: 3, scope: !7)
!15 = !DILocation(line: 30, column: 23, scope: !7)
!16 = !DILocation(line: 30, column: 5, scope: !7)
!17 = !DILocation(line: 31, column: 14, scope: !7)
!18 = !DILocation(line: 31, column: 32, scope: !7)
!19 = !DILocation(line: 31, column: 26, scope: !7)
!20 = !DILocation(line: 32, column: 39, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 32, column: 9, scope: !7)
!26 = !DILocation(line: 30, column: 38, scope: !7)
!27 = distinct !{!27, !16, !28}
!28 = !DILocation(line: 33, column: 5, scope: !7)
!29 = !DILocation(line: 29, column: 36, scope: !7)
!30 = distinct !{!30, !14, !31}
!31 = !DILocation(line: 34, column: 3, scope: !7)
!32 = !DILocation(line: 36, column: 7, scope: !7)
!33 = !DILocation(line: 36, column: 43, scope: !7)
!34 = !DILocation(line: 38, column: 35, scope: !7)
!35 = !DILocation(line: 38, column: 5, scope: !7)
!36 = !DILocation(line: 40, column: 33, scope: !7)
!37 = !DILocation(line: 41, column: 1, scope: !7)
!38 = distinct !DISubprogram(name: "svp_simple_005_001_isr_1", scope: !8, file: !8, line: 43, type: !9, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 44, column: 3, scope: !38)
!40 = !DILocation(line: 46, column: 12, scope: !38)
!41 = !DILocation(line: 47, column: 1, scope: !38)
