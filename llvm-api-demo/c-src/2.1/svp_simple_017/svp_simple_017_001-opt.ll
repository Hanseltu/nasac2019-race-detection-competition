; ModuleID = 'svp_simple_017_001-opt.bc'
source_filename = "./svp_simple_017_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_017_001_global_var = common global i32 0, align 4
@svp_simple_017_001_local_array = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_017_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  store volatile i32 0, i32* @svp_simple_017_001_global_var, align 4, !dbg !12, !tbaa !13
  br label %1, !dbg !17

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %9 ], !dbg !18
  %2 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !19, !tbaa !13
  %3 = icmp slt i32 %2, 100, !dbg !20
  br i1 %3, label %4, label %12, !dbg !21

4:                                                ; preds = %1
  %5 = add nsw i32 %.0, 1, !dbg !22
  %6 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !23, !tbaa !13
  %7 = sext i32 %6 to i64, !dbg !24
  %8 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_017_001_local_array, i64 0, i64 %7, !dbg !24
  store volatile i32 %.0, i32* %8, align 4, !dbg !25, !tbaa !13
  br label %9, !dbg !26

9:                                                ; preds = %4
  %10 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !27, !tbaa !13
  %11 = add nsw i32 %10, 1, !dbg !27
  store volatile i32 %11, i32* @svp_simple_017_001_global_var, align 4, !dbg !27, !tbaa !13
  br label %1, !dbg !21, !llvm.loop !28

12:                                               ; preds = %1
  ret void, !dbg !29
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_017_001_isr_1() #0 !dbg !30 {
  call void (...) @idlerun(), !dbg !31
  store volatile i32 50, i32* @svp_simple_017_001_global_var, align 4, !dbg !32, !tbaa !13
  %1 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !33, !tbaa !13
  %2 = sext i32 %1 to i64, !dbg !34
  %3 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_017_001_local_array, i64 0, i64 %2, !dbg !34
  store volatile i32 0, i32* %3, align 4, !dbg !35, !tbaa !13
  ret void, !dbg !36
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_017_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_017")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_017_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_017_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_017")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 29, column: 38, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 29, column: 8, scope: !8)
!18 = !DILocation(line: 0, scope: !8)
!19 = !DILocation(line: 29, column: 43, scope: !8)
!20 = !DILocation(line: 29, column: 73, scope: !8)
!21 = !DILocation(line: 29, column: 3, scope: !8)
!22 = !DILocation(line: 32, column: 70, scope: !8)
!23 = !DILocation(line: 32, column: 36, scope: !8)
!24 = !DILocation(line: 32, column: 5, scope: !8)
!25 = !DILocation(line: 32, column: 67, scope: !8)
!26 = !DILocation(line: 33, column: 3, scope: !8)
!27 = !DILocation(line: 30, column: 37, scope: !8)
!28 = distinct !{!28, !21, !26}
!29 = !DILocation(line: 34, column: 1, scope: !8)
!30 = distinct !DISubprogram(name: "svp_simple_017_001_isr_1", scope: !9, file: !9, line: 36, type: !10, scopeLine: 36, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 37, column: 3, scope: !30)
!32 = !DILocation(line: 39, column: 33, scope: !30)
!33 = !DILocation(line: 41, column: 34, scope: !30)
!34 = !DILocation(line: 41, column: 3, scope: !30)
!35 = !DILocation(line: 41, column: 65, scope: !30)
!36 = !DILocation(line: 42, column: 1, scope: !30)
