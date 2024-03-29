; ModuleID = 'svp_simple_027_001-opt-opt.bc'
source_filename = "./svp_simple_027_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_027_001_gloable_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @svp_simple_027_001_main() #0 !dbg !7 {
  %1 = call i32 (...) @rand() #2, !dbg !10
  store volatile i32 %1, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !13, !tbaa !14
  call void (...) @init() #2, !dbg !18
  call void @disable_isr(i32 -1) #2, !dbg !19
  call void @enable_isr(i32 1) #2, !dbg !20
  %2 = load volatile i32, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !21, !tbaa !14
  %3 = icmp sgt i32 %2, 12, !dbg !22
  br i1 %3, label %4, label %5, !dbg !21

4:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !23, !tbaa !14
  br label %5, !dbg !24

5:                                                ; preds = %4, %0
  ret i32 0, !dbg !25
}

declare dso_local void @disable_isr(i32) #1

declare dso_local void @enable_isr(i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_027_001_init() #0 !dbg !11 {
  %1 = call i32 (...) @rand() #2, !dbg !26
  store volatile i32 %1, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !27, !tbaa !14
  call void (...) @init() #2, !dbg !28
  ret void, !dbg !29
}

declare dso_local i32 @rand(...) #1

declare dso_local void @init(...) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_027_001_isr_1() #0 !dbg !30 {
  store volatile i32 12, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !31, !tbaa !14
  call void @enable_isr(i32 2) #2, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_027_001_isr_2() #0 !dbg !34 {
  %1 = load volatile i32, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !35, !tbaa !14
  %2 = add nsw i32 %1, 2, !dbg !35
  store volatile i32 %2, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !35, !tbaa !14
  ret void, !dbg !36
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_027_001_isr_3() #0 !dbg !37 {
  %1 = load volatile i32, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !38, !tbaa !14
  %2 = add nsw i32 %1, 3, !dbg !38
  store volatile i32 %2, i32* @svp_simple_027_001_gloable_var, align 4, !dbg !38, !tbaa !14
  ret void, !dbg !39
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_027_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_027")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_027_001_main", scope: !8, file: !8, line: 22, type: !9, scopeLine: 22, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_027_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_027")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 35, column: 36, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "svp_simple_027_001_init", scope: !8, file: !8, line: 34, type: !9, scopeLine: 34, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 23, column: 3, scope: !7)
!13 = !DILocation(line: 35, column: 34, scope: !11, inlinedAt: !12)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 37, column: 3, scope: !11, inlinedAt: !12)
!19 = !DILocation(line: 25, column: 3, scope: !7)
!20 = !DILocation(line: 26, column: 3, scope: !7)
!21 = !DILocation(line: 27, column: 7, scope: !7)
!22 = !DILocation(line: 27, column: 38, scope: !7)
!23 = !DILocation(line: 28, column: 36, scope: !7)
!24 = !DILocation(line: 29, column: 3, scope: !7)
!25 = !DILocation(line: 31, column: 3, scope: !7)
!26 = !DILocation(line: 35, column: 36, scope: !11)
!27 = !DILocation(line: 35, column: 34, scope: !11)
!28 = !DILocation(line: 37, column: 3, scope: !11)
!29 = !DILocation(line: 38, column: 1, scope: !11)
!30 = distinct !DISubprogram(name: "svp_simple_027_001_isr_1", scope: !8, file: !8, line: 40, type: !9, scopeLine: 40, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 41, column: 34, scope: !30)
!32 = !DILocation(line: 42, column: 3, scope: !30)
!33 = !DILocation(line: 43, column: 1, scope: !30)
!34 = distinct !DISubprogram(name: "svp_simple_027_001_isr_2", scope: !8, file: !8, line: 44, type: !9, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 45, column: 34, scope: !34)
!36 = !DILocation(line: 46, column: 1, scope: !34)
!37 = distinct !DISubprogram(name: "svp_simple_027_001_isr_3", scope: !8, file: !8, line: 47, type: !9, scopeLine: 47, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 48, column: 34, scope: !37)
!39 = !DILocation(line: 49, column: 1, scope: !37)
