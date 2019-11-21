; ModuleID = 'svp_simple_015_001-opt.bc'
source_filename = "./svp_simple_015_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_015_001_global_var1 = common global i32 0, align 4
@svp_simple_015_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_015_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  %1 = call i32 (...) @rand(), !dbg !12
  %2 = call i32 (...) @rand(), !dbg !13
  %3 = call i32 (...) @rand(), !dbg !14
  %4 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !15, !tbaa !16
  %5 = icmp slt i32 %4, %2, !dbg !20
  br i1 %5, label %6, label %11, !dbg !21

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !22, !tbaa !16
  %8 = icmp sgt i32 %7, %1, !dbg !23
  br i1 %8, label %9, label %11, !dbg !24

9:                                                ; preds = %6
  %10 = add nsw i32 %1, %2, !dbg !25
  br label %11, !dbg !26

11:                                               ; preds = %9, %6, %0
  %12 = icmp eq i32 %3, 1, !dbg !27
  br i1 %12, label %13, label %15, !dbg !28

13:                                               ; preds = %11
  %14 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !29, !tbaa !16
  br label %17, !dbg !28

15:                                               ; preds = %11
  %16 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !30, !tbaa !16
  br label %17, !dbg !28

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ], !dbg !28
  ret void, !dbg !31
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_015_001_isr_1() #0 !dbg !32 {
  call void (...) @idlerun(), !dbg !33
  store volatile i32 5, i32* @svp_simple_015_001_global_var1, align 4, !dbg !34, !tbaa !16
  store volatile i32 5, i32* @svp_simple_015_001_global_var2, align 4, !dbg !35, !tbaa !16
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
!1 = !DIFile(filename: "svp_simple_015_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_015")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_015_001_main", scope: !9, file: !9, line: 22, type: !10, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_015_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_015")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 23, column: 3, scope: !8)
!12 = !DILocation(line: 25, column: 11, scope: !8)
!13 = !DILocation(line: 26, column: 11, scope: !8)
!14 = !DILocation(line: 28, column: 11, scope: !8)
!15 = !DILocation(line: 30, column: 8, scope: !8)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 30, column: 39, scope: !8)
!21 = !DILocation(line: 30, column: 44, scope: !8)
!22 = !DILocation(line: 31, column: 8, scope: !8)
!23 = !DILocation(line: 31, column: 39, scope: !8)
!24 = !DILocation(line: 30, column: 7, scope: !8)
!25 = !DILocation(line: 32, column: 11, scope: !8)
!26 = !DILocation(line: 32, column: 5, scope: !8)
!27 = !DILocation(line: 34, column: 5, scope: !8)
!28 = !DILocation(line: 34, column: 3, scope: !8)
!29 = !DILocation(line: 34, column: 12, scope: !8)
!30 = !DILocation(line: 34, column: 45, scope: !8)
!31 = !DILocation(line: 35, column: 1, scope: !8)
!32 = distinct !DISubprogram(name: "svp_simple_015_001_isr_1", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!33 = !DILocation(line: 38, column: 3, scope: !32)
!34 = !DILocation(line: 39, column: 34, scope: !32)
!35 = !DILocation(line: 40, column: 34, scope: !32)
!36 = !DILocation(line: 41, column: 1, scope: !32)
