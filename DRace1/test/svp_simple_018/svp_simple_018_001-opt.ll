; ModuleID = 'svp_simple_018_001-opt.bc'
source_filename = "./svp_simple_018_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_018_001_para1 = common dso_local global float 0.000000e+00, align 4
@svp_simple_018_001_para2 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_018_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  %1 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !11, !tbaa !14
  %2 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !18, !tbaa !14
  %3 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !19, !tbaa !14
  %4 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !22, !tbaa !14
  %5 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !23, !tbaa !14
  ret void, !dbg !24
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local float @svp_simple_018_001_func1() #0 !dbg !12 {
  %1 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !25, !tbaa !14
  %2 = fmul float %1, 2.000000e+00, !dbg !26
  %3 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !27, !tbaa !14
  %4 = fmul float %2, %3, !dbg !28
  ret float %4, !dbg !29
}

; Function Attrs: nounwind uwtable
define dso_local float @svp_simple_018_001_func2() #0 !dbg !20 {
  %1 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !30, !tbaa !14
  %2 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !31, !tbaa !14
  %3 = fmul float %1, %2, !dbg !32
  %4 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !33, !tbaa !14
  %5 = fmul float %3, %4, !dbg !34
  ret float %5, !dbg !35
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_018_001_isr_func1() #0 !dbg !36 {
  store volatile float 1.000000e+00, float* @svp_simple_018_001_para2, align 4, !dbg !37, !tbaa !14
  ret void, !dbg !38
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_018_001_isr_1() #0 !dbg !39 {
  call void (...) @idlerun() #3, !dbg !40
  store volatile float 2.000000e+00, float* @svp_simple_018_001_para1, align 4, !dbg !41, !tbaa !14
  ret void, !dbg !42
}

declare dso_local void @idlerun(...) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_018_001_isr_2() #0 !dbg !43 {
  call void (...) @idlerun() #3, !dbg !44
  store volatile float 1.000000e+00, float* @svp_simple_018_001_para2, align 4, !dbg !45, !tbaa !14
  ret void, !dbg !47
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_018_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_018")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_018_001_main", scope: !8, file: !8, line: 30, type: !9, scopeLine: 30, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_018_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_018")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 31, column: 3, scope: !7)
!11 = !DILocation(line: 40, column: 18, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "svp_simple_018_001_func1", scope: !8, file: !8, line: 38, type: !9, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = distinct !DILocation(line: 34, column: 33, scope: !7)
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 41, column: 14, scope: !12, inlinedAt: !13)
!19 = !DILocation(line: 47, column: 10, scope: !20, inlinedAt: !21)
!20 = distinct !DISubprogram(name: "svp_simple_018_001_func2", scope: !8, file: !8, line: 45, type: !9, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!21 = distinct !DILocation(line: 35, column: 29, scope: !7)
!22 = !DILocation(line: 48, column: 10, scope: !20, inlinedAt: !21)
!23 = !DILocation(line: 49, column: 10, scope: !20, inlinedAt: !21)
!24 = !DILocation(line: 36, column: 1, scope: !7)
!25 = !DILocation(line: 40, column: 18, scope: !12)
!26 = !DILocation(line: 40, column: 16, scope: !12)
!27 = !DILocation(line: 41, column: 14, scope: !12)
!28 = !DILocation(line: 40, column: 43, scope: !12)
!29 = !DILocation(line: 42, column: 3, scope: !12)
!30 = !DILocation(line: 47, column: 10, scope: !20)
!31 = !DILocation(line: 48, column: 10, scope: !20)
!32 = !DILocation(line: 47, column: 35, scope: !20)
!33 = !DILocation(line: 49, column: 10, scope: !20)
!34 = !DILocation(line: 48, column: 35, scope: !20)
!35 = !DILocation(line: 50, column: 3, scope: !20)
!36 = distinct !DISubprogram(name: "svp_simple_018_001_isr_func1", scope: !8, file: !8, line: 53, type: !9, scopeLine: 53, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 54, column: 28, scope: !36)
!38 = !DILocation(line: 55, column: 1, scope: !36)
!39 = distinct !DISubprogram(name: "svp_simple_018_001_isr_1", scope: !8, file: !8, line: 57, type: !9, scopeLine: 57, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!40 = !DILocation(line: 58, column: 3, scope: !39)
!41 = !DILocation(line: 59, column: 28, scope: !39)
!42 = !DILocation(line: 60, column: 1, scope: !39)
!43 = distinct !DISubprogram(name: "svp_simple_018_001_isr_2", scope: !8, file: !8, line: 62, type: !9, scopeLine: 62, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 63, column: 3, scope: !43)
!45 = !DILocation(line: 54, column: 28, scope: !36, inlinedAt: !46)
!46 = distinct !DILocation(line: 64, column: 3, scope: !43)
!47 = !DILocation(line: 65, column: 1, scope: !43)
