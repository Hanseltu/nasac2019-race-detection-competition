; ModuleID = 'svp_simple_018_001.bc'
source_filename = "./svp_simple_018_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_018_001_para1 = common global float 0.000000e+00, align 4
@svp_simple_018_001_para2 = common global float 0.000000e+00, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_main() #0 !dbg !8 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  call void (...) @init(), !dbg !11
  %3 = bitcast float* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !12
  store float 0.000000e+00, float* %1, align 4, !dbg !13, !tbaa !14
  %4 = bitcast float* %2 to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !18
  store float 0.000000e+00, float* %2, align 4, !dbg !19, !tbaa !14
  %5 = call float @svp_simple_018_001_func1(), !dbg !20
  store float %5, float* %1, align 4, !dbg !21, !tbaa !14
  %6 = call float @svp_simple_018_001_func2(), !dbg !22
  store float %6, float* %2, align 4, !dbg !23, !tbaa !14
  %7 = bitcast float* %2 to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #3, !dbg !24
  %8 = bitcast float* %1 to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #3, !dbg !24
  ret void, !dbg !24
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define float @svp_simple_018_001_func1() #0 !dbg !25 {
  %1 = alloca float, align 4
  %2 = bitcast float* %1 to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !26
  store float 0.000000e+00, float* %1, align 4, !dbg !27, !tbaa !14
  %3 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !28, !tbaa !14
  %4 = fmul float 2.000000e+00, %3, !dbg !29
  %5 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !30, !tbaa !14
  %6 = fmul float %4, %5, !dbg !31
  store float %6, float* %1, align 4, !dbg !32, !tbaa !14
  %7 = load float, float* %1, align 4, !dbg !33, !tbaa !14
  %8 = bitcast float* %1 to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #3, !dbg !34
  ret float %7, !dbg !35
}

; Function Attrs: nounwind ssp uwtable
define float @svp_simple_018_001_func2() #0 !dbg !36 {
  %1 = alloca float, align 4
  %2 = bitcast float* %1 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !37
  store float 0.000000e+00, float* %1, align 4, !dbg !38, !tbaa !14
  %3 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !39, !tbaa !14
  %4 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !40, !tbaa !14
  %5 = fmul float %3, %4, !dbg !41
  %6 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !42, !tbaa !14
  %7 = fmul float %5, %6, !dbg !43
  store float %7, float* %1, align 4, !dbg !44, !tbaa !14
  %8 = load float, float* %1, align 4, !dbg !45, !tbaa !14
  %9 = bitcast float* %1 to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3, !dbg !46
  ret float %8, !dbg !47
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_isr_func1() #0 !dbg !48 {
  store volatile float 1.000000e+00, float* @svp_simple_018_001_para2, align 4, !dbg !49, !tbaa !14
  ret void, !dbg !50
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_isr_1() #0 !dbg !51 {
  call void (...) @idlerun(), !dbg !52
  store volatile float 2.000000e+00, float* @svp_simple_018_001_para1, align 4, !dbg !53, !tbaa !14
  ret void, !dbg !54
}

declare void @idlerun(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_018_001_isr_2() #0 !dbg !55 {
  call void (...) @idlerun(), !dbg !56
  call void @svp_simple_018_001_isr_func1(), !dbg !57
  ret void, !dbg !58
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_018_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_018")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_018_001_main", scope: !9, file: !9, line: 30, type: !10, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_018_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_018")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 31, column: 3, scope: !8)
!12 = !DILocation(line: 32, column: 3, scope: !8)
!13 = !DILocation(line: 32, column: 9, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 33, column: 3, scope: !8)
!19 = !DILocation(line: 33, column: 9, scope: !8)
!20 = !DILocation(line: 34, column: 33, scope: !8)
!21 = !DILocation(line: 34, column: 31, scope: !8)
!22 = !DILocation(line: 35, column: 29, scope: !8)
!23 = !DILocation(line: 35, column: 27, scope: !8)
!24 = !DILocation(line: 36, column: 1, scope: !8)
!25 = distinct !DISubprogram(name: "svp_simple_018_001_func1", scope: !9, file: !9, line: 38, type: !10, scopeLine: 38, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 39, column: 3, scope: !25)
!27 = !DILocation(line: 39, column: 9, scope: !25)
!28 = !DILocation(line: 40, column: 18, scope: !25)
!29 = !DILocation(line: 40, column: 16, scope: !25)
!30 = !DILocation(line: 41, column: 14, scope: !25)
!31 = !DILocation(line: 40, column: 43, scope: !25)
!32 = !DILocation(line: 40, column: 12, scope: !25)
!33 = !DILocation(line: 42, column: 10, scope: !25)
!34 = !DILocation(line: 43, column: 1, scope: !25)
!35 = !DILocation(line: 42, column: 3, scope: !25)
!36 = distinct !DISubprogram(name: "svp_simple_018_001_func2", scope: !9, file: !9, line: 45, type: !10, scopeLine: 45, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 46, column: 3, scope: !36)
!38 = !DILocation(line: 46, column: 9, scope: !36)
!39 = !DILocation(line: 47, column: 10, scope: !36)
!40 = !DILocation(line: 48, column: 10, scope: !36)
!41 = !DILocation(line: 47, column: 35, scope: !36)
!42 = !DILocation(line: 49, column: 10, scope: !36)
!43 = !DILocation(line: 48, column: 35, scope: !36)
!44 = !DILocation(line: 47, column: 8, scope: !36)
!45 = !DILocation(line: 50, column: 10, scope: !36)
!46 = !DILocation(line: 51, column: 1, scope: !36)
!47 = !DILocation(line: 50, column: 3, scope: !36)
!48 = distinct !DISubprogram(name: "svp_simple_018_001_isr_func1", scope: !9, file: !9, line: 53, type: !10, scopeLine: 53, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!49 = !DILocation(line: 54, column: 28, scope: !48)
!50 = !DILocation(line: 55, column: 1, scope: !48)
!51 = distinct !DISubprogram(name: "svp_simple_018_001_isr_1", scope: !9, file: !9, line: 57, type: !10, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!52 = !DILocation(line: 58, column: 3, scope: !51)
!53 = !DILocation(line: 59, column: 28, scope: !51)
!54 = !DILocation(line: 60, column: 1, scope: !51)
!55 = distinct !DISubprogram(name: "svp_simple_018_001_isr_2", scope: !9, file: !9, line: 62, type: !10, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!56 = !DILocation(line: 63, column: 3, scope: !55)
!57 = !DILocation(line: 64, column: 3, scope: !55)
!58 = !DILocation(line: 65, column: 1, scope: !55)
