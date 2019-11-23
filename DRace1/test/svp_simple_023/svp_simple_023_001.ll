; ModuleID = 'svp_simple_023_001.bc'
source_filename = "./svp_simple_023_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_023_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_main() #0 !dbg !8 {
  call void @svp_simple_023_001_init(), !dbg !11
  %1 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !12, !tbaa !13
  call void @svp_simple_023_001_func_1(i32 %1), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_func_1(i32) #0 !dbg !19 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4, !tbaa !13
  %3 = load i32, i32* %2, align 4, !dbg !20, !tbaa !13
  %4 = icmp sgt i32 %3, 0, !dbg !21
  br i1 %4, label %5, label %11, !dbg !22

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !23, !tbaa !13
  %7 = icmp slt i32 %6, 12, !dbg !24
  br i1 %7, label %8, label %11, !dbg !20

8:                                                ; preds = %5
  %9 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !25, !tbaa !13
  %10 = add nsw i32 %9, 1, !dbg !26
  store volatile i32 %10, i32* @svp_simple_023_001_global_var, align 4, !dbg !27, !tbaa !13
  br label %11, !dbg !28

11:                                               ; preds = %8, %5, %1
  ret void, !dbg !29
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_init() #0 !dbg !30 {
  %1 = call i32 (...) @rand(), !dbg !31
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !32, !tbaa !13
  call void (...) @init(), !dbg !33
  ret void, !dbg !34
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_isr_1() #0 !dbg !35 {
  store volatile i32 0, i32* @svp_simple_023_001_global_var, align 4, !dbg !36, !tbaa !13
  ret void, !dbg !37
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_023_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_023")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_023_001_main", scope: !9, file: !9, line: 23, type: !10, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_023_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_023")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 24, column: 3, scope: !8)
!12 = !DILocation(line: 25, column: 29, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 25, column: 3, scope: !8)
!18 = !DILocation(line: 26, column: 1, scope: !8)
!19 = distinct !DISubprogram(name: "svp_simple_023_001_func_1", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!20 = !DILocation(line: 34, column: 7, scope: !19)
!21 = !DILocation(line: 34, column: 11, scope: !19)
!22 = !DILocation(line: 34, column: 15, scope: !19)
!23 = !DILocation(line: 34, column: 18, scope: !19)
!24 = !DILocation(line: 34, column: 22, scope: !19)
!25 = !DILocation(line: 35, column: 37, scope: !19)
!26 = !DILocation(line: 35, column: 67, scope: !19)
!27 = !DILocation(line: 35, column: 35, scope: !19)
!28 = !DILocation(line: 36, column: 3, scope: !19)
!29 = !DILocation(line: 37, column: 1, scope: !19)
!30 = distinct !DISubprogram(name: "svp_simple_023_001_init", scope: !9, file: !9, line: 27, type: !10, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 28, column: 35, scope: !30)
!32 = !DILocation(line: 28, column: 33, scope: !30)
!33 = !DILocation(line: 30, column: 3, scope: !30)
!34 = !DILocation(line: 31, column: 1, scope: !30)
!35 = distinct !DISubprogram(name: "svp_simple_023_001_isr_1", scope: !9, file: !9, line: 38, type: !10, scopeLine: 38, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 39, column: 33, scope: !35)
!37 = !DILocation(line: 40, column: 1, scope: !35)
