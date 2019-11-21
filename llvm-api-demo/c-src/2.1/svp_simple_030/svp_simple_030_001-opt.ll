; ModuleID = 'svp_simple_030_001-opt.bc'
source_filename = "./svp_simple_030_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_030_001_gloable_var = common global i32 0, align 4
@svp_simple_030_001_isr_1_flag = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_030_001_main() #0 !dbg !8 {
  %1 = call i32 (...) @rand() #2, !dbg !11
  store volatile i32 %1, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !14, !tbaa !15
  %2 = call i32 (...) @rand() #2, !dbg !19
  store volatile i32 %2, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !20, !tbaa !15
  call void (...) @init() #2, !dbg !21
  call void @disable_isr(i32 -1), !dbg !22
  call void @enable_isr(i32 1), !dbg !23
  %3 = load volatile i32, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !24, !tbaa !15
  %4 = icmp sgt i32 %3, 12, !dbg !25
  br i1 %4, label %5, label %6, !dbg !24

5:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !26, !tbaa !15
  br label %6, !dbg !27

6:                                                ; preds = %5, %0
  ret i32 0, !dbg !28
}

declare void @disable_isr(i32) #1

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_030_001_init() #0 !dbg !12 {
  %1 = call i32 (...) @rand(), !dbg !29
  store volatile i32 %1, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !30, !tbaa !15
  %2 = call i32 (...) @rand(), !dbg !31
  store volatile i32 %2, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !32, !tbaa !15
  call void (...) @init(), !dbg !33
  ret void, !dbg !34
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @addData() #0 !dbg !35 {
  store volatile i32 12, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !36, !tbaa !15
  ret void, !dbg !37
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_030_001_isr_1() #0 !dbg !38 {
  store volatile i32 12, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !39, !tbaa !15
  store volatile i32 0, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !41, !tbaa !15
  call void @enable_isr(i32 2), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_030_001_isr_2() #0 !dbg !44 {
  %1 = load volatile i32, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !45, !tbaa !15
  %2 = icmp ne i32 %1, 0, !dbg !45
  br i1 %2, label %3, label %6, !dbg !45

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !46, !tbaa !15
  %5 = add nsw i32 %4, 1, !dbg !46
  store volatile i32 %5, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !46, !tbaa !15
  br label %6, !dbg !47

6:                                                ; preds = %3, %0
  ret void, !dbg !48
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_030_001_isr_3() #0 !dbg !49 {
  %1 = load volatile i32, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !50, !tbaa !15
  %2 = add nsw i32 %1, 1, !dbg !50
  store volatile i32 %2, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !50, !tbaa !15
  ret void, !dbg !51
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_030_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_030")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_030_001_main", scope: !9, file: !9, line: 24, type: !10, scopeLine: 24, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_030_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_030")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 36, column: 36, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "svp_simple_030_001_init", scope: !9, file: !9, line: 35, type: !10, scopeLine: 35, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = distinct !DILocation(line: 25, column: 3, scope: !8)
!14 = !DILocation(line: 36, column: 34, scope: !12, inlinedAt: !13)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 37, column: 35, scope: !12, inlinedAt: !13)
!20 = !DILocation(line: 37, column: 33, scope: !12, inlinedAt: !13)
!21 = !DILocation(line: 39, column: 3, scope: !12, inlinedAt: !13)
!22 = !DILocation(line: 27, column: 3, scope: !8)
!23 = !DILocation(line: 28, column: 3, scope: !8)
!24 = !DILocation(line: 29, column: 7, scope: !8)
!25 = !DILocation(line: 29, column: 38, scope: !8)
!26 = !DILocation(line: 30, column: 36, scope: !8)
!27 = !DILocation(line: 31, column: 3, scope: !8)
!28 = !DILocation(line: 32, column: 3, scope: !8)
!29 = !DILocation(line: 36, column: 36, scope: !12)
!30 = !DILocation(line: 36, column: 34, scope: !12)
!31 = !DILocation(line: 37, column: 35, scope: !12)
!32 = !DILocation(line: 37, column: 33, scope: !12)
!33 = !DILocation(line: 39, column: 3, scope: !12)
!34 = !DILocation(line: 40, column: 1, scope: !12)
!35 = distinct !DISubprogram(name: "addData", scope: !9, file: !9, line: 42, type: !10, scopeLine: 42, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 43, column: 34, scope: !35)
!37 = !DILocation(line: 44, column: 1, scope: !35)
!38 = distinct !DISubprogram(name: "svp_simple_030_001_isr_1", scope: !9, file: !9, line: 45, type: !10, scopeLine: 45, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 43, column: 34, scope: !35, inlinedAt: !40)
!40 = distinct !DILocation(line: 46, column: 3, scope: !38)
!41 = !DILocation(line: 47, column: 33, scope: !38)
!42 = !DILocation(line: 48, column: 3, scope: !38)
!43 = !DILocation(line: 49, column: 1, scope: !38)
!44 = distinct !DISubprogram(name: "svp_simple_030_001_isr_2", scope: !9, file: !9, line: 50, type: !10, scopeLine: 50, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!45 = !DILocation(line: 51, column: 7, scope: !44)
!46 = !DILocation(line: 52, column: 35, scope: !44)
!47 = !DILocation(line: 53, column: 3, scope: !44)
!48 = !DILocation(line: 54, column: 1, scope: !44)
!49 = distinct !DISubprogram(name: "svp_simple_030_001_isr_3", scope: !9, file: !9, line: 55, type: !10, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 56, column: 33, scope: !49)
!51 = !DILocation(line: 57, column: 1, scope: !49)
