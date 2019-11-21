; ModuleID = 'svp_simple_020_001-opt.bc'
source_filename = "./svp_simple_020_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_020_001_global_flag = global i32 0, align 4
@svp_simple_020_001_global_para = common global i32 0, align 4
@svp_simple_020_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_020_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void @disable_isr(i32 2), !dbg !12
  %1 = call i32 (...) @rand(), !dbg !13
  %2 = call i32 (...) @rand(), !dbg !14
  %3 = add nsw i32 %1, %2, !dbg !15
  %4 = load volatile i32, i32* @svp_simple_020_001_global_para, align 4, !dbg !16, !tbaa !17
  %5 = icmp sgt i32 %3, %4, !dbg !21
  br i1 %5, label %6, label %8, !dbg !22

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @svp_simple_020_001_global_var, align 4, !dbg !23, !tbaa !17
  br label %8, !dbg !24

8:                                                ; preds = %6, %0
  %9 = add nsw i32 %1, %2, !dbg !25
  %10 = load volatile i32, i32* @svp_simple_020_001_global_para, align 4, !dbg !26, !tbaa !17
  %11 = icmp slt i32 %9, %10, !dbg !27
  br i1 %11, label %12, label %14, !dbg !28

12:                                               ; preds = %8
  %13 = load volatile i32, i32* @svp_simple_020_001_global_var, align 4, !dbg !29, !tbaa !17
  br label %14, !dbg !30

14:                                               ; preds = %12, %8
  ret void, !dbg !31
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_020_001_isr_1() #0 !dbg !32 {
  store volatile i32 1, i32* @svp_simple_020_001_global_var, align 4, !dbg !33, !tbaa !17
  store volatile i32 1, i32* @svp_simple_020_001_global_flag, align 4, !dbg !34, !tbaa !17
  call void @enable_isr(i32 2), !dbg !35
  ret void, !dbg !36
}

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_020_001_isr_2() #0 !dbg !37 {
  %1 = load volatile i32, i32* @svp_simple_020_001_global_flag, align 4, !dbg !38, !tbaa !17
  %2 = icmp eq i32 %1, 1, !dbg !39
  br i1 %2, label %3, label %4, !dbg !38

3:                                                ; preds = %0
  store volatile i32 11, i32* @svp_simple_020_001_global_para, align 4, !dbg !40, !tbaa !17
  store volatile i32 5, i32* @svp_simple_020_001_global_var, align 4, !dbg !41, !tbaa !17
  br label %4, !dbg !42

4:                                                ; preds = %3, %0
  ret void, !dbg !43
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_020_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_020")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_020_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_020_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_020")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 30, column: 35, scope: !8)
!14 = !DILocation(line: 31, column: 35, scope: !8)
!15 = !DILocation(line: 36, column: 37, scope: !8)
!16 = !DILocation(line: 36, column: 71, scope: !8)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 36, column: 69, scope: !8)
!22 = !DILocation(line: 36, column: 7, scope: !8)
!23 = !DILocation(line: 37, column: 15, scope: !8)
!24 = !DILocation(line: 37, column: 5, scope: !8)
!25 = !DILocation(line: 39, column: 37, scope: !8)
!26 = !DILocation(line: 39, column: 71, scope: !8)
!27 = !DILocation(line: 39, column: 69, scope: !8)
!28 = !DILocation(line: 39, column: 7, scope: !8)
!29 = !DILocation(line: 40, column: 15, scope: !8)
!30 = !DILocation(line: 40, column: 5, scope: !8)
!31 = !DILocation(line: 41, column: 1, scope: !8)
!32 = distinct !DISubprogram(name: "svp_simple_020_001_isr_1", scope: !9, file: !9, line: 43, type: !10, scopeLine: 43, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!33 = !DILocation(line: 44, column: 33, scope: !32)
!34 = !DILocation(line: 46, column: 34, scope: !32)
!35 = !DILocation(line: 47, column: 3, scope: !32)
!36 = !DILocation(line: 48, column: 1, scope: !32)
!37 = distinct !DISubprogram(name: "svp_simple_020_001_isr_2", scope: !9, file: !9, line: 50, type: !10, scopeLine: 50, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 51, column: 7, scope: !37)
!39 = !DILocation(line: 51, column: 38, scope: !37)
!40 = !DILocation(line: 52, column: 36, scope: !37)
!41 = !DILocation(line: 53, column: 35, scope: !37)
!42 = !DILocation(line: 54, column: 3, scope: !37)
!43 = !DILocation(line: 55, column: 1, scope: !37)
