; ModuleID = 'svp_simple_011_001-opt.bc'
source_filename = "./svp_simple_011_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_011_001_global_var1 = common dso_local global i32 0, align 4
@svp_simple_011_001_global_var2 = common dso_local global i32 0, align 4
@svp_simple_011_001_u = common dso_local global i32* null, align 8
@svp_simple_011_001_global_var3 = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_011_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  store i32 2, i32* @svp_simple_011_001_global_var1, align 4, !dbg !11, !tbaa !12
  store i32* @svp_simple_011_001_global_var2, i32** @svp_simple_011_001_u, align 8, !dbg !16, !tbaa !17
  store volatile i32 1, i32* @svp_simple_011_001_global_var2, align 4, !dbg !19, !tbaa !12
  store i32* @svp_simple_011_001_global_var3, i32** @svp_simple_011_001_u, align 8, !dbg !20, !tbaa !17
  store volatile i32 2, i32* @svp_simple_011_001_global_var3, align 4, !dbg !21, !tbaa !12
  ret void, !dbg !22
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_011_001_isr_1() #0 !dbg !23 {
  %1 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !24, !tbaa !17
  %2 = load volatile i32, i32* %1, align 4, !dbg !25, !tbaa !12
  ret void, !dbg !26
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_011_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_011")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_011_001_main", scope: !8, file: !8, line: 25, type: !9, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_011_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_011")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !7)
!11 = !DILocation(line: 31, column: 6, scope: !7)
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 33, column: 24, scope: !7)
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !DILocation(line: 34, column: 25, scope: !7)
!20 = !DILocation(line: 35, column: 24, scope: !7)
!21 = !DILocation(line: 36, column: 25, scope: !7)
!22 = !DILocation(line: 37, column: 1, scope: !7)
!23 = distinct !DISubprogram(name: "svp_simple_011_001_isr_1", scope: !8, file: !8, line: 39, type: !9, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!24 = !DILocation(line: 43, column: 14, scope: !23)
!25 = !DILocation(line: 43, column: 13, scope: !23)
!26 = !DILocation(line: 44, column: 1, scope: !23)
