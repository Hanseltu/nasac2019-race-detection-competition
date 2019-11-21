; ModuleID = 'svp_simple_007_001-opt.bc'
source_filename = "./svp_simple_007_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_007_001_global_array = common global [5 x i32] zeroinitializer, align 16
@svp_simple_007_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_007_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !12, !tbaa !13
  %2 = sext i32 %1 to i64, !dbg !17
  %3 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %2, !dbg !17
  store volatile i32 1, i32* %3, align 4, !dbg !18, !tbaa !13
  %4 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !19, !tbaa !13
  %5 = sext i32 %4 to i64, !dbg !20
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %5, !dbg !20
  %7 = load volatile i32, i32* %6, align 4, !dbg !20, !tbaa !13
  %8 = call i32 (...) @rand(), !dbg !21
  %9 = icmp eq i32 %8, 2, !dbg !22
  br i1 %9, label %10, label %13, !dbg !23

10:                                               ; preds = %0
  %11 = sext i32 %8 to i64, !dbg !24
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %11, !dbg !24
  store volatile i32 2, i32* %12, align 4, !dbg !25, !tbaa !13
  br label %16, !dbg !24

13:                                               ; preds = %0
  %14 = sext i32 %8 to i64, !dbg !26
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %14, !dbg !26
  store volatile i32 9, i32* %15, align 4, !dbg !27, !tbaa !13
  br label %16

16:                                               ; preds = %13, %10
  %17 = load volatile i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !28, !tbaa !13
  ret void, !dbg !29
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_007_001_isr_1() #0 !dbg !30 {
  call void (...) @idlerun(), !dbg !31
  store volatile i32 9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !32, !tbaa !13
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !33, !tbaa !13
  %2 = add nsw i32 %1, 1, !dbg !33
  store volatile i32 %2, i32* @svp_simple_007_001_global_var, align 4, !dbg !33, !tbaa !13
  %3 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !34, !tbaa !13
  %4 = sext i32 %3 to i64, !dbg !35
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %4, !dbg !35
  store volatile i32 9, i32* %5, align 4, !dbg !36, !tbaa !13
  ret void, !dbg !37
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_007_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_007")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_007_001_main", scope: !9, file: !9, line: 26, type: !10, scopeLine: 26, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_007_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_007")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 27, column: 3, scope: !8)
!12 = !DILocation(line: 32, column: 35, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 32, column: 3, scope: !8)
!18 = !DILocation(line: 32, column: 66, scope: !8)
!19 = !DILocation(line: 34, column: 45, scope: !8)
!20 = !DILocation(line: 34, column: 13, scope: !8)
!21 = !DILocation(line: 36, column: 11, scope: !8)
!22 = !DILocation(line: 37, column: 9, scope: !8)
!23 = !DILocation(line: 37, column: 7, scope: !8)
!24 = !DILocation(line: 38, column: 5, scope: !8)
!25 = !DILocation(line: 38, column: 40, scope: !8)
!26 = !DILocation(line: 40, column: 5, scope: !8)
!27 = !DILocation(line: 40, column: 40, scope: !8)
!28 = !DILocation(line: 42, column: 13, scope: !8)
!29 = !DILocation(line: 43, column: 1, scope: !8)
!30 = distinct !DISubprogram(name: "svp_simple_007_001_isr_1", scope: !9, file: !9, line: 45, type: !10, scopeLine: 45, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 46, column: 3, scope: !30)
!32 = !DILocation(line: 47, column: 38, scope: !30)
!33 = !DILocation(line: 49, column: 33, scope: !30)
!34 = !DILocation(line: 50, column: 35, scope: !30)
!35 = !DILocation(line: 50, column: 3, scope: !30)
!36 = !DILocation(line: 50, column: 66, scope: !30)
!37 = !DILocation(line: 51, column: 1, scope: !30)
