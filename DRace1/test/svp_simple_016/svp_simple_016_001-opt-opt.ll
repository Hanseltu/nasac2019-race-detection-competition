; ModuleID = 'svp_simple_016_001-opt-opt.bc'
source_filename = "./svp_simple_016_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_016_001_global_var1 = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_016_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  store volatile i32 1, i32* @svp_simple_016_001_global_var1, align 4, !dbg !11, !tbaa !12
  %1 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !16, !tbaa !12
  %2 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !17, !tbaa !12
  %3 = load volatile i32, i32* @svp_simple_016_001_global_var1, align 4, !dbg !18, !tbaa !12
  ret void, !dbg !19
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_016_001_isr_1() #0 !dbg !20 {
  call void (...) @idlerun() #3, !dbg !21
  store volatile i32 9, i32* @svp_simple_016_001_global_var1, align 4, !dbg !22, !tbaa !12
  ret void, !dbg !23
}

declare dso_local void @idlerun(...) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_016_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_016")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_016_001_main", scope: !8, file: !8, line: 21, type: !9, scopeLine: 21, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_016_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_016")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 22, column: 3, scope: !7)
!11 = !DILocation(line: 24, column: 34, scope: !7)
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 25, column: 13, scope: !7)
!17 = !DILocation(line: 26, column: 13, scope: !7)
!18 = !DILocation(line: 27, column: 13, scope: !7)
!19 = !DILocation(line: 29, column: 1, scope: !7)
!20 = distinct !DISubprogram(name: "svp_simple_016_001_isr_1", scope: !8, file: !8, line: 31, type: !9, scopeLine: 31, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 32, column: 3, scope: !20)
!22 = !DILocation(line: 33, column: 34, scope: !20)
!23 = !DILocation(line: 34, column: 1, scope: !20)
