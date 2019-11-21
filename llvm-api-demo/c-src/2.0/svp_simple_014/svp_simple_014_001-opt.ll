; ModuleID = 'svp_simple_014_001-opt.bc'
source_filename = "./svp_simple_014_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_014_001_global_var1 = global i32 1, align 4
@svp_simple_014_001_global_var2 = global i32 2, align 4
@svp_simple_014_001_global_flag1 = global i32 0, align 4
@svp_simple_014_001_global_flag2 = global i32 1, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void (...) @idlerun(), !dbg !12
  ret void, !dbg !13
}

declare void @init(...) #1

declare void @idlerun(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_isr_1() #0 !dbg !14 {
  call void @disable_isr(i32 3), !dbg !15
  br label %1, !dbg !16

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ], !dbg !17
  %2 = icmp slt i32 %.0, 100, !dbg !18
  br i1 %2, label %4, label %3, !dbg !19

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  %5 = icmp eq i32 %.0, 99, !dbg !20
  br i1 %5, label %6, label %8, !dbg !21

6:                                                ; preds = %4
  %7 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !22, !tbaa !23
  br label %8, !dbg !27

8:                                                ; preds = %6, %4
  br label %9, !dbg !28

9:                                                ; preds = %8
  %10 = add nsw i32 %.0, 1, !dbg !29
  br label %1, !dbg !19, !llvm.loop !30

11:                                               ; preds = %3
  %12 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !31, !tbaa !23
  %13 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !32, !tbaa !23
  %14 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !33, !tbaa !23
  ret void, !dbg !34
}

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_isr_2() #0 !dbg !35 {
  store i32 1, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !36, !tbaa !23
  store i32 0, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !37, !tbaa !23
  call void @enable_isr(i32 3), !dbg !38
  call void (...) @idlerun(), !dbg !39
  ret void, !dbg !40
}

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_014_001_isr_3() #0 !dbg !41 {
  %1 = load i32, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !42, !tbaa !23
  %2 = icmp eq i32 %1, 1, !dbg !43
  br i1 %2, label %3, label %4, !dbg !42

3:                                                ; preds = %0
  store volatile i32 9, i32* @svp_simple_014_001_global_var1, align 4, !dbg !44, !tbaa !23
  br label %4, !dbg !45

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !46, !tbaa !23
  %6 = icmp eq i32 %5, 1, !dbg !47
  br i1 %6, label %7, label %8, !dbg !46

7:                                                ; preds = %4
  store volatile i32 9, i32* @svp_simple_014_001_global_var2, align 4, !dbg !48, !tbaa !23
  br label %8, !dbg !49

8:                                                ; preds = %7, %4
  ret void, !dbg !50
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_014_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_014")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_014_001_main", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_014_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_014")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 3, scope: !8)
!13 = !DILocation(line: 31, column: 1, scope: !8)
!14 = distinct !DISubprogram(name: "svp_simple_014_001_isr_1", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 34, column: 3, scope: !14)
!16 = !DILocation(line: 38, column: 8, scope: !14)
!17 = !DILocation(line: 0, scope: !14)
!18 = !DILocation(line: 38, column: 21, scope: !14)
!19 = !DILocation(line: 38, column: 3, scope: !14)
!20 = !DILocation(line: 39, column: 11, scope: !14)
!21 = !DILocation(line: 39, column: 9, scope: !14)
!22 = !DILocation(line: 39, column: 33, scope: !14)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 39, column: 23, scope: !14)
!28 = !DILocation(line: 39, column: 14, scope: !14)
!29 = !DILocation(line: 38, column: 36, scope: !14)
!30 = distinct !{!30, !19, !22}
!31 = !DILocation(line: 41, column: 13, scope: !14)
!32 = !DILocation(line: 43, column: 13, scope: !14)
!33 = !DILocation(line: 45, column: 13, scope: !14)
!34 = !DILocation(line: 46, column: 1, scope: !14)
!35 = distinct !DISubprogram(name: "svp_simple_014_001_isr_2", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 49, column: 35, scope: !35)
!37 = !DILocation(line: 50, column: 35, scope: !35)
!38 = !DILocation(line: 52, column: 3, scope: !35)
!39 = !DILocation(line: 54, column: 3, scope: !35)
!40 = !DILocation(line: 55, column: 1, scope: !35)
!41 = distinct !DISubprogram(name: "svp_simple_014_001_isr_3", scope: !9, file: !9, line: 57, type: !10, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!42 = !DILocation(line: 58, column: 7, scope: !41)
!43 = !DILocation(line: 58, column: 39, scope: !41)
!44 = !DILocation(line: 58, column: 76, scope: !41)
!45 = !DILocation(line: 58, column: 45, scope: !41)
!46 = !DILocation(line: 59, column: 7, scope: !41)
!47 = !DILocation(line: 59, column: 39, scope: !41)
!48 = !DILocation(line: 59, column: 76, scope: !41)
!49 = !DILocation(line: 59, column: 45, scope: !41)
!50 = !DILocation(line: 60, column: 1, scope: !41)
