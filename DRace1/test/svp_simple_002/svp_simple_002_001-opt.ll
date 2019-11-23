; ModuleID = 'svp_simple_002_001-opt.bc'
source_filename = "./svp_simple_002_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_002_001_global_array = common dso_local global [10000 x i32] zeroinitializer, align 16
@casee2_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_002_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  call void (...) @idlerun() #3, !dbg !11
  ret void, !dbg !12
}

declare dso_local void @init(...) #1

declare dso_local void @idlerun(...) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_002_001_isr_1() #0 !dbg !13 {
  br label %1, !dbg !14

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ], !dbg !15
  %2 = icmp ult i32 %.0, 10000, !dbg !16
  br i1 %2, label %3, label %8, !dbg !17

3:                                                ; preds = %1
  switch i32 %.0, label %6 [
    i32 9999, label %4
    i32 10001, label %5
  ], !dbg !18

4:                                                ; preds = %3
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !19, !tbaa !20
  br label %6, !dbg !24

5:                                                ; preds = %3
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !25, !tbaa !20
  br label %6, !dbg !26

6:                                                ; preds = %5, %4, %3
  %7 = add nuw nsw i32 %.0, 1, !dbg !27
  br label %1, !dbg !17, !llvm.loop !28

8:                                                ; preds = %1
  %9 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !30, !tbaa !20
  %10 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 0), align 16, !dbg !31, !tbaa !20
  ret void, !dbg !32
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_002_001_isr_2() #0 !dbg !33 {
  call void (...) @idlerun() #3, !dbg !34
  store volatile i32 999, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !35, !tbaa !20
  ret void, !dbg !36
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_002_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_002")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_002_001_main", scope: !8, file: !8, line: 25, type: !9, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_002_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_002")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !7)
!11 = !DILocation(line: 27, column: 3, scope: !7)
!12 = !DILocation(line: 28, column: 1, scope: !7)
!13 = distinct !DISubprogram(name: "svp_simple_002_001_isr_1", scope: !8, file: !8, line: 30, type: !9, scopeLine: 30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 32, column: 8, scope: !13)
!15 = !DILocation(line: 0, scope: !13)
!16 = !DILocation(line: 32, column: 21, scope: !13)
!17 = !DILocation(line: 32, column: 3, scope: !13)
!18 = !DILocation(line: 33, column: 9, scope: !13)
!19 = !DILocation(line: 33, column: 64, scope: !13)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 34, column: 9, scope: !13)
!25 = !DILocation(line: 35, column: 48, scope: !13)
!26 = !DILocation(line: 35, column: 7, scope: !13)
!27 = !DILocation(line: 32, column: 36, scope: !13)
!28 = distinct !{!28, !17, !29}
!29 = !DILocation(line: 36, column: 3, scope: !13)
!30 = !DILocation(line: 37, column: 13, scope: !13)
!31 = !DILocation(line: 39, column: 12, scope: !13)
!32 = !DILocation(line: 40, column: 1, scope: !13)
!33 = distinct !DISubprogram(name: "svp_simple_002_001_isr_2", scope: !8, file: !8, line: 42, type: !9, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 43, column: 3, scope: !33)
!35 = !DILocation(line: 44, column: 44, scope: !33)
!36 = !DILocation(line: 46, column: 1, scope: !33)
