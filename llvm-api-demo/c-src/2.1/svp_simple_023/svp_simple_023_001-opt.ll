; ModuleID = 'svp_simple_023_001-opt.bc'
source_filename = "./svp_simple_023_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_023_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_main() #0 !dbg !8 {
  %1 = call i32 (...) @rand() #2, !dbg !11
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !14, !tbaa !15
  call void (...) @init() #2, !dbg !19
  %2 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !20, !tbaa !15
  %3 = icmp sgt i32 %2, 0, !dbg !21
  br i1 %3, label %4, label %svp_simple_023_001_func_1.exit, !dbg !24

4:                                                ; preds = %0
  %5 = icmp slt i32 %2, 12, !dbg !25
  br i1 %5, label %6, label %svp_simple_023_001_func_1.exit, !dbg !26

6:                                                ; preds = %4
  %7 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !27, !tbaa !15
  %8 = add nsw i32 %7, 1, !dbg !28
  store volatile i32 %8, i32* @svp_simple_023_001_global_var, align 4, !dbg !29, !tbaa !15
  br label %svp_simple_023_001_func_1.exit, !dbg !30

svp_simple_023_001_func_1.exit:                   ; preds = %0, %4, %6
  ret void, !dbg !31
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_func_1(i32) #0 !dbg !22 {
  %2 = icmp sgt i32 %0, 0, !dbg !32
  br i1 %2, label %3, label %8, !dbg !33

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 12, !dbg !34
  br i1 %4, label %5, label %8, !dbg !35

5:                                                ; preds = %3
  %6 = load volatile i32, i32* @svp_simple_023_001_global_var, align 4, !dbg !36, !tbaa !15
  %7 = add nsw i32 %6, 1, !dbg !37
  store volatile i32 %7, i32* @svp_simple_023_001_global_var, align 4, !dbg !38, !tbaa !15
  br label %8, !dbg !39

8:                                                ; preds = %5, %3, %1
  ret void, !dbg !40
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_init() #0 !dbg !12 {
  %1 = call i32 (...) @rand(), !dbg !41
  store volatile i32 %1, i32* @svp_simple_023_001_global_var, align 4, !dbg !42, !tbaa !15
  call void (...) @init(), !dbg !43
  ret void, !dbg !44
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_023_001_isr_1() #0 !dbg !45 {
  store volatile i32 0, i32* @svp_simple_023_001_global_var, align 4, !dbg !46, !tbaa !15
  ret void, !dbg !47
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_023_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_023")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_023_001_main", scope: !9, file: !9, line: 23, type: !10, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_023_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_023")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 28, column: 35, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "svp_simple_023_001_init", scope: !9, file: !9, line: 27, type: !10, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = distinct !DILocation(line: 24, column: 3, scope: !8)
!14 = !DILocation(line: 28, column: 33, scope: !12, inlinedAt: !13)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 30, column: 3, scope: !12, inlinedAt: !13)
!20 = !DILocation(line: 25, column: 29, scope: !8)
!21 = !DILocation(line: 34, column: 11, scope: !22, inlinedAt: !23)
!22 = distinct !DISubprogram(name: "svp_simple_023_001_func_1", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!23 = distinct !DILocation(line: 25, column: 3, scope: !8)
!24 = !DILocation(line: 34, column: 15, scope: !22, inlinedAt: !23)
!25 = !DILocation(line: 34, column: 22, scope: !22, inlinedAt: !23)
!26 = !DILocation(line: 34, column: 7, scope: !22, inlinedAt: !23)
!27 = !DILocation(line: 35, column: 37, scope: !22, inlinedAt: !23)
!28 = !DILocation(line: 35, column: 67, scope: !22, inlinedAt: !23)
!29 = !DILocation(line: 35, column: 35, scope: !22, inlinedAt: !23)
!30 = !DILocation(line: 36, column: 3, scope: !22, inlinedAt: !23)
!31 = !DILocation(line: 26, column: 1, scope: !8)
!32 = !DILocation(line: 34, column: 11, scope: !22)
!33 = !DILocation(line: 34, column: 15, scope: !22)
!34 = !DILocation(line: 34, column: 22, scope: !22)
!35 = !DILocation(line: 34, column: 7, scope: !22)
!36 = !DILocation(line: 35, column: 37, scope: !22)
!37 = !DILocation(line: 35, column: 67, scope: !22)
!38 = !DILocation(line: 35, column: 35, scope: !22)
!39 = !DILocation(line: 36, column: 3, scope: !22)
!40 = !DILocation(line: 37, column: 1, scope: !22)
!41 = !DILocation(line: 28, column: 35, scope: !12)
!42 = !DILocation(line: 28, column: 33, scope: !12)
!43 = !DILocation(line: 30, column: 3, scope: !12)
!44 = !DILocation(line: 31, column: 1, scope: !12)
!45 = distinct !DISubprogram(name: "svp_simple_023_001_isr_1", scope: !9, file: !9, line: 38, type: !10, scopeLine: 38, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 39, column: 33, scope: !45)
!47 = !DILocation(line: 40, column: 1, scope: !45)
