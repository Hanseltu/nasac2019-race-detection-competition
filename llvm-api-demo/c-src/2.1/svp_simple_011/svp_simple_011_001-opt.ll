; ModuleID = 'svp_simple_011_001-opt.bc'
source_filename = "./svp_simple_011_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_011_001_global_var1 = common global i32 0, align 4
@svp_simple_011_001_global_var2 = common global i32 0, align 4
@svp_simple_011_001_u = common global i32* null, align 8
@svp_simple_011_001_global_var3 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_011_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  store i32 1, i32* @svp_simple_011_001_global_var1, align 4, !dbg !12, !tbaa !13
  store i32 2, i32* @svp_simple_011_001_global_var1, align 4, !dbg !17, !tbaa !13
  store i32* @svp_simple_011_001_global_var2, i32** @svp_simple_011_001_u, align 8, !dbg !18, !tbaa !19
  %1 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !21, !tbaa !19
  store volatile i32 1, i32* %1, align 4, !dbg !22, !tbaa !13
  store i32* @svp_simple_011_001_global_var3, i32** @svp_simple_011_001_u, align 8, !dbg !23, !tbaa !19
  %2 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !24, !tbaa !19
  store volatile i32 2, i32* %2, align 4, !dbg !25, !tbaa !13
  ret void, !dbg !26
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_011_001_isr_1() #0 !dbg !27 {
  %1 = load i32, i32* @svp_simple_011_001_global_var1, align 4, !dbg !28, !tbaa !13
  %2 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !29, !tbaa !19
  %3 = load volatile i32, i32* %2, align 4, !dbg !30, !tbaa !13
  ret void, !dbg !31
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_011_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_011")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_011_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_011_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_011")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 6, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 31, column: 6, scope: !8)
!18 = !DILocation(line: 33, column: 24, scope: !8)
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !15, i64 0}
!21 = !DILocation(line: 34, column: 4, scope: !8)
!22 = !DILocation(line: 34, column: 25, scope: !8)
!23 = !DILocation(line: 35, column: 24, scope: !8)
!24 = !DILocation(line: 36, column: 4, scope: !8)
!25 = !DILocation(line: 36, column: 25, scope: !8)
!26 = !DILocation(line: 37, column: 1, scope: !8)
!27 = distinct !DISubprogram(name: "svp_simple_011_001_isr_1", scope: !9, file: !9, line: 39, type: !10, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!28 = !DILocation(line: 42, column: 13, scope: !27)
!29 = !DILocation(line: 43, column: 14, scope: !27)
!30 = !DILocation(line: 43, column: 13, scope: !27)
!31 = !DILocation(line: 44, column: 1, scope: !27)
