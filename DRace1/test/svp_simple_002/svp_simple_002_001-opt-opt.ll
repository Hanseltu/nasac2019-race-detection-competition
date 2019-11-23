; ModuleID = 'svp_simple_002_001-opt-opt.bc'
source_filename = "./svp_simple_002_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_002_001_global_array = common dso_local global [10000 x i32] zeroinitializer, align 16
@casee2_global_var = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_002_001_main() local_unnamed_addr #0 !dbg !7 {
  tail call void (...) @init() #3, !dbg !10
  tail call void (...) @idlerun() #3, !dbg !11
  ret void, !dbg !12
}

declare dso_local void @init(...) local_unnamed_addr #1

declare dso_local void @idlerun(...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define dso_local void @svp_simple_002_001_isr_1() local_unnamed_addr #2 !dbg !13 {
  br label %4, !dbg !14

1:                                                ; preds = %4
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !15, !tbaa !16
  %2 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !20, !tbaa !16
  %3 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 0), align 16, !dbg !21, !tbaa !16
  ret void, !dbg !22

4:                                                ; preds = %4, %0
  %.09 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %cond.24 = icmp eq i32 %.09, 9975, !dbg !23
  %5 = add nuw nsw i32 %.09, 25, !dbg !24
  br i1 %cond.24, label %1, label %4, !dbg !23
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_002_001_isr_2() local_unnamed_addr #0 !dbg !25 {
  tail call void (...) @idlerun() #3, !dbg !26
  store volatile i32 999, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !27, !tbaa !16
  ret void, !dbg !28
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_002_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_002")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_002_001_main", scope: !8, file: !8, line: 25, type: !9, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_002_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_002")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !7)
!11 = !DILocation(line: 27, column: 3, scope: !7)
!12 = !DILocation(line: 28, column: 1, scope: !7)
!13 = distinct !DISubprogram(name: "svp_simple_002_001_isr_1", scope: !8, file: !8, line: 30, type: !9, scopeLine: 30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 32, column: 3, scope: !13)
!15 = !DILocation(line: 33, column: 64, scope: !13)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 37, column: 13, scope: !13)
!21 = !DILocation(line: 39, column: 12, scope: !13)
!22 = !DILocation(line: 40, column: 1, scope: !13)
!23 = !DILocation(line: 33, column: 9, scope: !13)
!24 = !DILocation(line: 32, column: 36, scope: !13)
!25 = distinct !DISubprogram(name: "svp_simple_002_001_isr_2", scope: !8, file: !8, line: 42, type: !9, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 43, column: 3, scope: !25)
!27 = !DILocation(line: 44, column: 44, scope: !25)
!28 = !DILocation(line: 46, column: 1, scope: !25)
