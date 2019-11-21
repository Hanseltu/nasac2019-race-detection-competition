; ModuleID = 'svp_simple_028_001.bc'
source_filename = "./svp_simple_028_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_028_001_gloable_var = common global i32 0, align 4
@svp_simple_028_001_isr_1_flag = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_028_001_main() #0 !dbg !8 {
  call void @svp_simple_028_001_init(), !dbg !11
  call void @disable_isr(i32 -1), !dbg !12
  call void @enable_isr(i32 1), !dbg !13
  %1 = load volatile i32, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !14, !tbaa !15
  %2 = icmp sgt i32 %1, 12, !dbg !19
  br i1 %2, label %3, label %4, !dbg !14

3:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !20, !tbaa !15
  br label %4, !dbg !21

4:                                                ; preds = %3, %0
  ret i32 0, !dbg !22
}

declare void @disable_isr(i32) #1

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_028_001_init() #0 !dbg !23 {
  %1 = call i32 (...) @rand(), !dbg !24
  store volatile i32 %1, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !25, !tbaa !15
  %2 = call i32 (...) @rand(), !dbg !26
  store volatile i32 %2, i32* @svp_simple_028_001_isr_1_flag, align 4, !dbg !27, !tbaa !15
  call void (...) @init(), !dbg !28
  ret void, !dbg !29
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_028_001_isr_1() #0 !dbg !30 {
  store volatile i32 12, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !31, !tbaa !15
  store volatile i32 0, i32* @svp_simple_028_001_isr_1_flag, align 4, !dbg !32, !tbaa !15
  call void @enable_isr(i32 2), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_028_001_isr_2() #0 !dbg !35 {
  %1 = load volatile i32, i32* @svp_simple_028_001_isr_1_flag, align 4, !dbg !36, !tbaa !15
  %2 = icmp ne i32 %1, 0, !dbg !36
  br i1 %2, label %3, label %6, !dbg !36

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !37, !tbaa !15
  %5 = add nsw i32 %4, 2, !dbg !37
  store volatile i32 %5, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !37, !tbaa !15
  br label %6, !dbg !38

6:                                                ; preds = %3, %0
  ret void, !dbg !39
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_028_001_isr_3() #0 !dbg !40 {
  %1 = load volatile i32, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !41, !tbaa !15
  %2 = add nsw i32 %1, 3, !dbg !41
  store volatile i32 %2, i32* @svp_simple_028_001_gloable_var, align 4, !dbg !41, !tbaa !15
  ret void, !dbg !42
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_028_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_028")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_028_001_main", scope: !9, file: !9, line: 24, type: !10, scopeLine: 24, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_028_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_028")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 25, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 28, column: 3, scope: !8)
!14 = !DILocation(line: 29, column: 7, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 29, column: 38, scope: !8)
!20 = !DILocation(line: 30, column: 36, scope: !8)
!21 = !DILocation(line: 31, column: 3, scope: !8)
!22 = !DILocation(line: 32, column: 3, scope: !8)
!23 = distinct !DISubprogram(name: "svp_simple_028_001_init", scope: !9, file: !9, line: 35, type: !10, scopeLine: 35, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!24 = !DILocation(line: 36, column: 36, scope: !23)
!25 = !DILocation(line: 36, column: 34, scope: !23)
!26 = !DILocation(line: 37, column: 35, scope: !23)
!27 = !DILocation(line: 37, column: 33, scope: !23)
!28 = !DILocation(line: 39, column: 3, scope: !23)
!29 = !DILocation(line: 40, column: 1, scope: !23)
!30 = distinct !DISubprogram(name: "svp_simple_028_001_isr_1", scope: !9, file: !9, line: 42, type: !10, scopeLine: 42, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 43, column: 34, scope: !30)
!32 = !DILocation(line: 44, column: 33, scope: !30)
!33 = !DILocation(line: 45, column: 3, scope: !30)
!34 = !DILocation(line: 46, column: 1, scope: !30)
!35 = distinct !DISubprogram(name: "svp_simple_028_001_isr_2", scope: !9, file: !9, line: 47, type: !10, scopeLine: 47, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 48, column: 7, scope: !35)
!37 = !DILocation(line: 49, column: 36, scope: !35)
!38 = !DILocation(line: 50, column: 3, scope: !35)
!39 = !DILocation(line: 51, column: 1, scope: !35)
!40 = distinct !DISubprogram(name: "svp_simple_028_001_isr_3", scope: !9, file: !9, line: 52, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 53, column: 34, scope: !40)
!42 = !DILocation(line: 54, column: 1, scope: !40)