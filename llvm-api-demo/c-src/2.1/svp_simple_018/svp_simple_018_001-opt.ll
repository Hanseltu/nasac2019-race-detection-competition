; ModuleID = 'svp_simple_018_001-opt.bc'
source_filename = "./svp_simple_018_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_018_001_para1 = common global float 0.000000e+00, align 4
@svp_simple_018_001_para2 = common global float 0.000000e+00, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  %1 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !12, !tbaa !15
  %2 = fmul float 2.000000e+00, %1, !dbg !19
  %3 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !20, !tbaa !15
  %4 = fmul float %2, %3, !dbg !21
  %5 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !22, !tbaa !15
  %6 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !25, !tbaa !15
  %7 = fmul float %5, %6, !dbg !26
  %8 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !27, !tbaa !15
  %9 = fmul float %7, %8, !dbg !28
  ret void, !dbg !29
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define float @svp_simple_018_001_func1() #0 !dbg !13 {
  %1 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !30, !tbaa !15
  %2 = fmul float 2.000000e+00, %1, !dbg !31
  %3 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !32, !tbaa !15
  %4 = fmul float %2, %3, !dbg !33
  ret float %4, !dbg !34
}

; Function Attrs: nounwind ssp uwtable
define float @svp_simple_018_001_func2() #0 !dbg !23 {
  %1 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !35, !tbaa !15
  %2 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !36, !tbaa !15
  %3 = fmul float %1, %2, !dbg !37
  %4 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !38, !tbaa !15
  %5 = fmul float %3, %4, !dbg !39
  ret float %5, !dbg !40
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_isr_func1() #0 !dbg !41 {
  store volatile float 1.000000e+00, float* @svp_simple_018_001_para2, align 4, !dbg !42, !tbaa !15
  ret void, !dbg !43
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_isr_1() #0 !dbg !44 {
  call void (...) @idlerun(), !dbg !45
  store volatile float 2.000000e+00, float* @svp_simple_018_001_para1, align 4, !dbg !46, !tbaa !15
  ret void, !dbg !47
}

declare void @idlerun(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_isr_2() #0 !dbg !48 {
  call void (...) @idlerun(), !dbg !49
  store volatile float 1.000000e+00, float* @svp_simple_018_001_para2, align 4, !dbg !50, !tbaa !15
  ret void, !dbg !52
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_018_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_018")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_018_001_main", scope: !9, file: !9, line: 30, type: !10, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_018_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_018")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 31, column: 3, scope: !8)
!12 = !DILocation(line: 40, column: 18, scope: !13, inlinedAt: !14)
!13 = distinct !DISubprogram(name: "svp_simple_018_001_func1", scope: !9, file: !9, line: 38, type: !10, scopeLine: 38, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = distinct !DILocation(line: 34, column: 33, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 40, column: 16, scope: !13, inlinedAt: !14)
!20 = !DILocation(line: 41, column: 14, scope: !13, inlinedAt: !14)
!21 = !DILocation(line: 40, column: 43, scope: !13, inlinedAt: !14)
!22 = !DILocation(line: 47, column: 10, scope: !23, inlinedAt: !24)
!23 = distinct !DISubprogram(name: "svp_simple_018_001_func2", scope: !9, file: !9, line: 45, type: !10, scopeLine: 45, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!24 = distinct !DILocation(line: 35, column: 29, scope: !8)
!25 = !DILocation(line: 48, column: 10, scope: !23, inlinedAt: !24)
!26 = !DILocation(line: 47, column: 35, scope: !23, inlinedAt: !24)
!27 = !DILocation(line: 49, column: 10, scope: !23, inlinedAt: !24)
!28 = !DILocation(line: 48, column: 35, scope: !23, inlinedAt: !24)
!29 = !DILocation(line: 36, column: 1, scope: !8)
!30 = !DILocation(line: 40, column: 18, scope: !13)
!31 = !DILocation(line: 40, column: 16, scope: !13)
!32 = !DILocation(line: 41, column: 14, scope: !13)
!33 = !DILocation(line: 40, column: 43, scope: !13)
!34 = !DILocation(line: 42, column: 3, scope: !13)
!35 = !DILocation(line: 47, column: 10, scope: !23)
!36 = !DILocation(line: 48, column: 10, scope: !23)
!37 = !DILocation(line: 47, column: 35, scope: !23)
!38 = !DILocation(line: 49, column: 10, scope: !23)
!39 = !DILocation(line: 48, column: 35, scope: !23)
!40 = !DILocation(line: 50, column: 3, scope: !23)
!41 = distinct !DISubprogram(name: "svp_simple_018_001_isr_func1", scope: !9, file: !9, line: 53, type: !10, scopeLine: 53, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!42 = !DILocation(line: 54, column: 28, scope: !41)
!43 = !DILocation(line: 55, column: 1, scope: !41)
!44 = distinct !DISubprogram(name: "svp_simple_018_001_isr_1", scope: !9, file: !9, line: 57, type: !10, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!45 = !DILocation(line: 58, column: 3, scope: !44)
!46 = !DILocation(line: 59, column: 28, scope: !44)
!47 = !DILocation(line: 60, column: 1, scope: !44)
!48 = distinct !DISubprogram(name: "svp_simple_018_001_isr_2", scope: !9, file: !9, line: 62, type: !10, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!49 = !DILocation(line: 63, column: 3, scope: !48)
!50 = !DILocation(line: 54, column: 28, scope: !41, inlinedAt: !51)
!51 = distinct !DILocation(line: 64, column: 3, scope: !48)
!52 = !DILocation(line: 65, column: 1, scope: !48)
