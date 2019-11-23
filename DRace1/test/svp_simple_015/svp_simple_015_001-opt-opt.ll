; ModuleID = 'svp_simple_015_001-opt-opt.bc'
source_filename = "./svp_simple_015_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_015_001_global_var1 = common dso_local global i32 0, align 4
@svp_simple_015_001_global_var2 = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_015_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  %1 = call i32 (...) @rand() #3, !dbg !11
  %2 = call i32 (...) @rand() #3, !dbg !12
  %3 = call i32 (...) @rand() #3, !dbg !13
  %4 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !14, !tbaa !15
  %5 = icmp slt i32 %4, %2, !dbg !19
  br i1 %5, label %6, label %8, !dbg !20

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !21, !tbaa !15
  br label %8, !dbg !22

8:                                                ; preds = %6, %0
  %9 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !23, !tbaa !15
  ret void, !dbg !24
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_015_001_isr_1() #0 !dbg !25 {
  call void (...) @idlerun() #3, !dbg !26
  store volatile i32 5, i32* @svp_simple_015_001_global_var1, align 4, !dbg !27, !tbaa !15
  store volatile i32 5, i32* @svp_simple_015_001_global_var2, align 4, !dbg !28, !tbaa !15
  ret void, !dbg !29
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
!1 = !DIFile(filename: "svp_simple_015_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_015")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_015_001_main", scope: !8, file: !8, line: 22, type: !9, scopeLine: 22, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_015_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_015")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 23, column: 3, scope: !7)
!11 = !DILocation(line: 25, column: 11, scope: !7)
!12 = !DILocation(line: 26, column: 11, scope: !7)
!13 = !DILocation(line: 28, column: 11, scope: !7)
!14 = !DILocation(line: 30, column: 8, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 30, column: 39, scope: !7)
!20 = !DILocation(line: 30, column: 44, scope: !7)
!21 = !DILocation(line: 31, column: 8, scope: !7)
!22 = !DILocation(line: 30, column: 7, scope: !7)
!23 = !DILocation(line: 0, scope: !7)
!24 = !DILocation(line: 35, column: 1, scope: !7)
!25 = distinct !DISubprogram(name: "svp_simple_015_001_isr_1", scope: !8, file: !8, line: 37, type: !9, scopeLine: 37, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 38, column: 3, scope: !25)
!27 = !DILocation(line: 39, column: 34, scope: !25)
!28 = !DILocation(line: 40, column: 34, scope: !25)
!29 = !DILocation(line: 41, column: 1, scope: !25)
