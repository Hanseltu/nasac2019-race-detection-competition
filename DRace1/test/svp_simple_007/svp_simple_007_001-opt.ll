; ModuleID = 'svp_simple_007_001-opt.bc'
source_filename = "./svp_simple_007_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_007_001_global_array = common dso_local global [5 x i32] zeroinitializer, align 16
@svp_simple_007_001_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_007_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !11, !tbaa !12
  %2 = sext i32 %1 to i64, !dbg !16
  %3 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %2, !dbg !16
  store volatile i32 1, i32* %3, align 4, !dbg !17, !tbaa !12
  %4 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !18, !tbaa !12
  %5 = sext i32 %4 to i64, !dbg !19
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %5, !dbg !19
  %7 = load volatile i32, i32* %6, align 4, !dbg !19, !tbaa !12
  %8 = call i32 (...) @rand() #3, !dbg !20
  %9 = icmp eq i32 %8, 2, !dbg !21
  %10 = sext i32 %8 to i64, !dbg !22
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %10, !dbg !22
  br i1 %9, label %12, label %13, !dbg !23

12:                                               ; preds = %0
  store volatile i32 2, i32* %11, align 4, !dbg !24, !tbaa !12
  br label %14, !dbg !25

13:                                               ; preds = %0
  store volatile i32 9, i32* %11, align 4, !dbg !26, !tbaa !12
  br label %14

14:                                               ; preds = %13, %12
  %15 = load volatile i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !27, !tbaa !12
  ret void, !dbg !28
}

declare dso_local void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_007_001_isr_1() #0 !dbg !29 {
  call void (...) @idlerun() #3, !dbg !30
  store volatile i32 9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !31, !tbaa !12
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !32, !tbaa !12
  %2 = add nsw i32 %1, 1, !dbg !32
  store volatile i32 %2, i32* @svp_simple_007_001_global_var, align 4, !dbg !32, !tbaa !12
  %3 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !33, !tbaa !12
  %4 = sext i32 %3 to i64, !dbg !34
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %4, !dbg !34
  store volatile i32 9, i32* %5, align 4, !dbg !35, !tbaa !12
  ret void, !dbg !36
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
!1 = !DIFile(filename: "svp_simple_007_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_007")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_007_001_main", scope: !8, file: !8, line: 26, type: !9, scopeLine: 26, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_007_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_007")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 27, column: 3, scope: !7)
!11 = !DILocation(line: 32, column: 35, scope: !7)
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 32, column: 3, scope: !7)
!17 = !DILocation(line: 32, column: 66, scope: !7)
!18 = !DILocation(line: 34, column: 45, scope: !7)
!19 = !DILocation(line: 34, column: 13, scope: !7)
!20 = !DILocation(line: 36, column: 11, scope: !7)
!21 = !DILocation(line: 37, column: 9, scope: !7)
!22 = !DILocation(line: 0, scope: !7)
!23 = !DILocation(line: 37, column: 7, scope: !7)
!24 = !DILocation(line: 38, column: 40, scope: !7)
!25 = !DILocation(line: 38, column: 5, scope: !7)
!26 = !DILocation(line: 40, column: 40, scope: !7)
!27 = !DILocation(line: 42, column: 13, scope: !7)
!28 = !DILocation(line: 43, column: 1, scope: !7)
!29 = distinct !DISubprogram(name: "svp_simple_007_001_isr_1", scope: !8, file: !8, line: 45, type: !9, scopeLine: 45, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!30 = !DILocation(line: 46, column: 3, scope: !29)
!31 = !DILocation(line: 47, column: 38, scope: !29)
!32 = !DILocation(line: 49, column: 33, scope: !29)
!33 = !DILocation(line: 50, column: 35, scope: !29)
!34 = !DILocation(line: 50, column: 3, scope: !29)
!35 = !DILocation(line: 50, column: 66, scope: !29)
!36 = !DILocation(line: 51, column: 1, scope: !29)