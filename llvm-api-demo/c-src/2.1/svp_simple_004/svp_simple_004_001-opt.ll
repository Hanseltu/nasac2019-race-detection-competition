; ModuleID = 'svp_simple_004_001-opt.bc'
source_filename = "./svp_simple_004_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_004_001_condition1 = global i32 1, align 4
@svp_simple_004_001_condition2 = global i32 1, align 4
@svp_simple_004_001_condition3 = global i32 1, align 4
@svp_simple_004_001_condition4 = global i32 1, align 4
@svp_simple_004_001_condition5 = global i32 1, align 4
@svp_simple_004_001_condition6 = global i32 1, align 4
@svp_simple_004_001_global_var1 = global i32 17, align 4
@svp_simple_004_001_global_var2 = global i32 34, align 4
@svp_simple_004_001_global_var3 = global i32 51, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_004_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void @disable_isr(i32 2), !dbg !12
  %1 = load volatile i32, i32* @svp_simple_004_001_condition1, align 4, !dbg !13, !tbaa !14
  %2 = icmp eq i32 %1, 1, !dbg !18
  br i1 %2, label %3, label %6, !dbg !13

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_004_001_global_var1, align 4, !dbg !19, !tbaa !14
  %5 = load volatile i32, i32* @svp_simple_004_001_global_var3, align 4, !dbg !20, !tbaa !14
  br label %6, !dbg !21

6:                                                ; preds = %3, %0
  %7 = load volatile i32, i32* @svp_simple_004_001_condition2, align 4, !dbg !22, !tbaa !14
  %8 = icmp eq i32 %7, 1, !dbg !23
  br i1 %8, label %9, label %12, !dbg !22

9:                                                ; preds = %6
  %10 = load volatile i32, i32* @svp_simple_004_001_global_var1, align 4, !dbg !24, !tbaa !14
  %11 = load volatile i32, i32* @svp_simple_004_001_global_var3, align 4, !dbg !25, !tbaa !14
  br label %12, !dbg !26

12:                                               ; preds = %9, %6
  %13 = load volatile i32, i32* @svp_simple_004_001_condition4, align 4, !dbg !27, !tbaa !14
  %14 = icmp eq i32 %13, 1, !dbg !28
  br i1 %14, label %15, label %17, !dbg !27

15:                                               ; preds = %12
  %16 = load volatile i32, i32* @svp_simple_004_001_global_var2, align 4, !dbg !29, !tbaa !14
  br label %17, !dbg !30

17:                                               ; preds = %15, %12
  %18 = load volatile i32, i32* @svp_simple_004_001_condition5, align 4, !dbg !31, !tbaa !14
  %19 = icmp eq i32 %18, 1, !dbg !32
  br i1 %19, label %20, label %22, !dbg !31

20:                                               ; preds = %17
  %21 = load volatile i32, i32* @svp_simple_004_001_global_var2, align 4, !dbg !33, !tbaa !14
  br label %22, !dbg !34

22:                                               ; preds = %20, %17
  ret void, !dbg !35
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_004_001_isr_1() #0 !dbg !36 {
  store volatile i32 0, i32* @svp_simple_004_001_condition6, align 4, !dbg !37, !tbaa !14
  %1 = load volatile i32, i32* @svp_simple_004_001_condition3, align 4, !dbg !38, !tbaa !14
  %2 = icmp eq i32 %1, 1, !dbg !39
  br i1 %2, label %3, label %4, !dbg !38

3:                                                ; preds = %0
  store volatile i32 170, i32* @svp_simple_004_001_global_var1, align 4, !dbg !40, !tbaa !14
  br label %5, !dbg !41

4:                                                ; preds = %0
  store volatile i32 204, i32* @svp_simple_004_001_global_var3, align 4, !dbg !42, !tbaa !14
  br label %5

5:                                                ; preds = %4, %3
  call void @enable_isr(i32 2), !dbg !43
  ret void, !dbg !44
}

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_004_001_isr_2() #0 !dbg !45 {
  %1 = load volatile i32, i32* @svp_simple_004_001_condition6, align 4, !dbg !46, !tbaa !14
  %2 = icmp eq i32 %1, 1, !dbg !47
  br i1 %2, label %3, label %4, !dbg !46

3:                                                ; preds = %0
  store volatile i32 34, i32* @svp_simple_004_001_global_var2, align 4, !dbg !48, !tbaa !14
  br label %4, !dbg !49

4:                                                ; preds = %3, %0
  ret void, !dbg !50
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_004_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_004")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_004_001_main", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_004_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_004")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 34, column: 3, scope: !8)
!12 = !DILocation(line: 38, column: 3, scope: !8)
!13 = !DILocation(line: 40, column: 7, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 40, column: 37, scope: !8)
!19 = !DILocation(line: 41, column: 15, scope: !8)
!20 = !DILocation(line: 42, column: 15, scope: !8)
!21 = !DILocation(line: 43, column: 3, scope: !8)
!22 = !DILocation(line: 45, column: 7, scope: !8)
!23 = !DILocation(line: 45, column: 37, scope: !8)
!24 = !DILocation(line: 46, column: 15, scope: !8)
!25 = !DILocation(line: 47, column: 15, scope: !8)
!26 = !DILocation(line: 48, column: 3, scope: !8)
!27 = !DILocation(line: 50, column: 7, scope: !8)
!28 = !DILocation(line: 50, column: 37, scope: !8)
!29 = !DILocation(line: 50, column: 53, scope: !8)
!30 = !DILocation(line: 50, column: 43, scope: !8)
!31 = !DILocation(line: 52, column: 7, scope: !8)
!32 = !DILocation(line: 52, column: 37, scope: !8)
!33 = !DILocation(line: 52, column: 53, scope: !8)
!34 = !DILocation(line: 52, column: 43, scope: !8)
!35 = !DILocation(line: 53, column: 1, scope: !8)
!36 = distinct !DISubprogram(name: "svp_simple_004_001_isr_1", scope: !9, file: !9, line: 55, type: !10, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 56, column: 33, scope: !36)
!38 = !DILocation(line: 58, column: 7, scope: !36)
!39 = !DILocation(line: 58, column: 37, scope: !36)
!40 = !DILocation(line: 59, column: 36, scope: !36)
!41 = !DILocation(line: 59, column: 5, scope: !36)
!42 = !DILocation(line: 61, column: 36, scope: !36)
!43 = !DILocation(line: 63, column: 3, scope: !36)
!44 = !DILocation(line: 64, column: 1, scope: !36)
!45 = distinct !DISubprogram(name: "svp_simple_004_001_isr_2", scope: !9, file: !9, line: 66, type: !10, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 67, column: 7, scope: !45)
!47 = !DILocation(line: 67, column: 37, scope: !45)
!48 = !DILocation(line: 68, column: 36, scope: !45)
!49 = !DILocation(line: 68, column: 5, scope: !45)
!50 = !DILocation(line: 69, column: 1, scope: !45)
