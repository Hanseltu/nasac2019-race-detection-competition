; ModuleID = 'svp_simple_009_001-opt-opt.bc'
source_filename = "./svp_simple_009_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_009_001_p = common dso_local global i32* null, align 8
@svp_simple_009_001_q = common dso_local global i32* null, align 8
@svp_simple_009_001_m = common dso_local global i32* null, align 8

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_009_001_main() #0 !dbg !7 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init() #3, !dbg !10
  %3 = bitcast i32* %1 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !11
  store i32 1, i32* %1, align 4, !dbg !12, !tbaa !13
  %4 = bitcast i32* %2 to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !17
  store i32 9, i32* %2, align 4, !dbg !18, !tbaa !13
  store i32* %1, i32** @svp_simple_009_001_p, align 8, !dbg !19, !tbaa !20
  store i32* %1, i32** @svp_simple_009_001_q, align 8, !dbg !22, !tbaa !20
  store volatile i32 2, i32* %1, align 4, !dbg !23, !tbaa !13
  store volatile i32 3, i32* %1, align 4, !dbg !24, !tbaa !13
  store i32* %2, i32** @svp_simple_009_001_m, align 8, !dbg !25, !tbaa !20
  store volatile i32 6, i32* %2, align 4, !dbg !26, !tbaa !13
  store volatile i32 6, i32* %2, align 4, !dbg !27, !tbaa !13
  %5 = bitcast i32* %2 to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #3, !dbg !28
  %6 = bitcast i32* %1 to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3, !dbg !28
  ret void, !dbg !28
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_009_001_isr_1() #0 !dbg !29 {
  %1 = alloca i32, align 4
  call void (...) @idlerun() #3, !dbg !30
  %2 = load i32*, i32** @svp_simple_009_001_p, align 8, !dbg !31, !tbaa !20
  %3 = load volatile i32, i32* %2, align 4, !dbg !32, !tbaa !13
  %4 = bitcast i32* %1 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !33
  store i32 8, i32* %1, align 4, !dbg !34, !tbaa !13
  store i32* %1, i32** @svp_simple_009_001_m, align 8, !dbg !35, !tbaa !20
  %5 = load volatile i32, i32* %1, align 4, !dbg !36, !tbaa !13
  %6 = bitcast i32* %1 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #3, !dbg !37
  ret void, !dbg !37
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
!1 = !DIFile(filename: "svp_simple_009_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_009")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_009_001_main", scope: !8, file: !8, line: 24, type: !9, scopeLine: 24, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_009_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_009")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 25, column: 3, scope: !7)
!11 = !DILocation(line: 26, column: 3, scope: !7)
!12 = !DILocation(line: 26, column: 7, scope: !7)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 27, column: 3, scope: !7)
!18 = !DILocation(line: 27, column: 7, scope: !7)
!19 = !DILocation(line: 29, column: 24, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !15, i64 0}
!22 = !DILocation(line: 30, column: 24, scope: !7)
!23 = !DILocation(line: 32, column: 25, scope: !7)
!24 = !DILocation(line: 33, column: 25, scope: !7)
!25 = !DILocation(line: 35, column: 24, scope: !7)
!26 = !DILocation(line: 37, column: 25, scope: !7)
!27 = !DILocation(line: 38, column: 25, scope: !7)
!28 = !DILocation(line: 39, column: 1, scope: !7)
!29 = distinct !DISubprogram(name: "svp_simple_009_001_isr_1", scope: !8, file: !8, line: 41, type: !9, scopeLine: 41, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!30 = !DILocation(line: 43, column: 3, scope: !29)
!31 = !DILocation(line: 44, column: 14, scope: !29)
!32 = !DILocation(line: 44, column: 13, scope: !29)
!33 = !DILocation(line: 45, column: 3, scope: !29)
!34 = !DILocation(line: 45, column: 7, scope: !29)
!35 = !DILocation(line: 46, column: 24, scope: !29)
!36 = !DILocation(line: 47, column: 13, scope: !29)
!37 = !DILocation(line: 48, column: 1, scope: !29)
