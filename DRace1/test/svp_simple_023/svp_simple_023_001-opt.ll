; ModuleID = 'svp_simple_023_001-opt.bc'
source_filename = "./svp_simple_023_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_023_001_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_023_001_main() #0 !dbg !7 {
  %1 = call i32 (...) @rand() #2, !dbg !10
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !13, !tbaa !14
  call void (...) @init() #2, !dbg !18
  %2 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !19, !tbaa !14
  %.off.i = add i32 %2, -1, !dbg !20
  %3 = icmp ult i32 %.off.i, 11, !dbg !20
  br i1 %3, label %4, label %svp_simple_023_001_func_1.exit, !dbg !20

4:                                                ; preds = %0
  %5 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !23, !tbaa !14
  %6 = add nsw i32 %5, 1, !dbg !24
  store volatile i32 %6, i32* @svp_simple_023_001_global_var, align 4, !dbg !25, !tbaa !14
  br label %svp_simple_023_001_func_1.exit, !dbg !26

svp_simple_023_001_func_1.exit:                   ; preds = %4, %0
  ret void, !dbg !27
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_023_001_func_1(i32) #0 !dbg !21 {
  %.off = add i32 %0, -1, !dbg !28
  %2 = icmp ult i32 %.off, 11, !dbg !28
  br i1 %2, label %3, label %6, !dbg !28

3:                                                ; preds = %1
  %4 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !29, !tbaa !14
  %5 = add nsw i32 %4, 1, !dbg !30
  store volatile i32 %5, i32* @svp_simple_023_001_global_var, align 4, !dbg !31, !tbaa !14
  br label %6, !dbg !32

6:                                                ; preds = %3, %1
  ret void, !dbg !33
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_023_001_init() #0 !dbg !11 {
  %1 = call i32 (...) @rand() #2, !dbg !34
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !35, !tbaa !14
  call void (...) @init() #2, !dbg !36
  ret void, !dbg !37
}

declare dso_local i32 @rand(...) #1

declare dso_local void @init(...) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_023_001_isr_1() #0 !dbg !38 {
  store volatile i32 0, i32* @svp_simple_023_001_global_var, align 4, !dbg !39, !tbaa !14
  ret void, !dbg !40
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_023_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_023")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_023_001_main", scope: !8, file: !8, line: 23, type: !9, scopeLine: 23, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_023_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_023")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 35, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "svp_simple_023_001_init", scope: !8, file: !8, line: 27, type: !9, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 24, column: 3, scope: !7)
!13 = !DILocation(line: 28, column: 33, scope: !11, inlinedAt: !12)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 30, column: 3, scope: !11, inlinedAt: !12)
!19 = !DILocation(line: 25, column: 29, scope: !7)
!20 = !DILocation(line: 34, column: 15, scope: !21, inlinedAt: !22)
!21 = distinct !DISubprogram(name: "svp_simple_023_001_func_1", scope: !8, file: !8, line: 33, type: !9, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!22 = distinct !DILocation(line: 25, column: 3, scope: !7)
!23 = !DILocation(line: 35, column: 37, scope: !21, inlinedAt: !22)
!24 = !DILocation(line: 35, column: 67, scope: !21, inlinedAt: !22)
!25 = !DILocation(line: 35, column: 35, scope: !21, inlinedAt: !22)
!26 = !DILocation(line: 36, column: 3, scope: !21, inlinedAt: !22)
!27 = !DILocation(line: 26, column: 1, scope: !7)
!28 = !DILocation(line: 34, column: 15, scope: !21)
!29 = !DILocation(line: 35, column: 37, scope: !21)
!30 = !DILocation(line: 35, column: 67, scope: !21)
!31 = !DILocation(line: 35, column: 35, scope: !21)
!32 = !DILocation(line: 36, column: 3, scope: !21)
!33 = !DILocation(line: 37, column: 1, scope: !21)
!34 = !DILocation(line: 28, column: 35, scope: !11)
!35 = !DILocation(line: 28, column: 33, scope: !11)
!36 = !DILocation(line: 30, column: 3, scope: !11)
!37 = !DILocation(line: 31, column: 1, scope: !11)
!38 = distinct !DISubprogram(name: "svp_simple_023_001_isr_1", scope: !8, file: !8, line: 38, type: !9, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 39, column: 33, scope: !38)
!40 = !DILocation(line: 40, column: 1, scope: !38)
