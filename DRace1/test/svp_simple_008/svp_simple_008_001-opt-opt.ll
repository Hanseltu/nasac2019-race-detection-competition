; ModuleID = 'svp_simple_008_001-opt-opt.bc'
source_filename = "./svp_simple_008_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_008_001_global_array = common dso_local global [100 x i32] zeroinitializer, align 16
@svp_simple_008_001_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_008_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  store volatile i32 9, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 3), align 4, !dbg !11, !tbaa !12
  store volatile i32 1, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !16, !tbaa !12
  %1 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !17, !tbaa !12
  %2 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 4), align 16, !dbg !20, !tbaa !12
  ret void, !dbg !21
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_008_001_func_1() #0 !dbg !18 {
  %1 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !22, !tbaa !12
  %2 = load volatile i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 4), align 16, !dbg !23, !tbaa !12
  ret void, !dbg !24
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_008_001_isr_1() #0 !dbg !25 {
  br label %1, !dbg !26

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %6, %3 ], !dbg !27
  %2 = icmp ult i32 %.0, 100, !dbg !28
  br i1 %2, label %3, label %7, !dbg !29

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64, !dbg !30
  %5 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %4, !dbg !30
  store volatile i32 5, i32* %5, align 4, !dbg !31, !tbaa !12
  %6 = add nuw nsw i32 %.0, 1, !dbg !32
  br label %1, !dbg !29, !llvm.loop !33

7:                                                ; preds = %1
  ret void, !dbg !35
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_008_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_008")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_008_001_main", scope: !8, file: !8, line: 28, type: !9, scopeLine: 28, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_008_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_008")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !7)
!11 = !DILocation(line: 33, column: 42, scope: !7)
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 35, column: 39, scope: !7)
!17 = !DILocation(line: 46, column: 13, scope: !18, inlinedAt: !19)
!18 = distinct !DISubprogram(name: "svp_simple_008_001_func_1", scope: !8, file: !8, line: 40, type: !9, scopeLine: 40, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!19 = distinct !DILocation(line: 37, column: 3, scope: !7)
!20 = !DILocation(line: 48, column: 13, scope: !18, inlinedAt: !19)
!21 = !DILocation(line: 38, column: 1, scope: !7)
!22 = !DILocation(line: 46, column: 13, scope: !18)
!23 = !DILocation(line: 48, column: 13, scope: !18)
!24 = !DILocation(line: 49, column: 1, scope: !18)
!25 = distinct !DISubprogram(name: "svp_simple_008_001_isr_1", scope: !8, file: !8, line: 51, type: !9, scopeLine: 51, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 52, column: 8, scope: !25)
!27 = !DILocation(line: 0, scope: !25)
!28 = !DILocation(line: 52, column: 21, scope: !25)
!29 = !DILocation(line: 52, column: 3, scope: !25)
!30 = !DILocation(line: 52, column: 33, scope: !25)
!31 = !DILocation(line: 52, column: 68, scope: !25)
!32 = !DILocation(line: 52, column: 29, scope: !25)
!33 = distinct !{!33, !29, !34}
!34 = !DILocation(line: 52, column: 70, scope: !25)
!35 = !DILocation(line: 53, column: 1, scope: !25)
