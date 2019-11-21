; ModuleID = 'svp_simple_016_001-opt.bc'
source_filename = "./svp_simple_016_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_016_001_global_var1 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_016_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  store volatile i32 1, i32* @svp_simple_016_001_global_var1, align 4, !dbg !12, !tbaa !13
  %1 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !17, !tbaa !13
  %2 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !18, !tbaa !13
  %3 = add nsw i32 %1, %2, !dbg !19
  %4 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !20, !tbaa !13
  %5 = add nsw i32 %3, %4, !dbg !21
  ret void, !dbg !22
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_016_001_isr_1() #0 !dbg !23 {
  call void (...) @idlerun(), !dbg !24
  store volatile i32 9, i32* @svp_simple_016_001_global_var1, align 4, !dbg !25, !tbaa !13
  ret void, !dbg !26
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_016_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_016")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_016_001_main", scope: !9, file: !9, line: 21, type: !10, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_016_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_016")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 22, column: 3, scope: !8)
!12 = !DILocation(line: 24, column: 34, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 25, column: 13, scope: !8)
!18 = !DILocation(line: 26, column: 13, scope: !8)
!19 = !DILocation(line: 25, column: 44, scope: !8)
!20 = !DILocation(line: 27, column: 13, scope: !8)
!21 = !DILocation(line: 26, column: 44, scope: !8)
!22 = !DILocation(line: 29, column: 1, scope: !8)
!23 = distinct !DISubprogram(name: "svp_simple_016_001_isr_1", scope: !9, file: !9, line: 31, type: !10, scopeLine: 31, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!24 = !DILocation(line: 32, column: 3, scope: !23)
!25 = !DILocation(line: 33, column: 34, scope: !23)
!26 = !DILocation(line: 34, column: 1, scope: !23)
