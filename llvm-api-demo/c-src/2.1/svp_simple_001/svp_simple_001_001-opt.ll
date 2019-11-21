; ModuleID = 'svp_simple_001_001-opt.bc'
source_filename = "./svp_simple_001_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_001_001_global_flag = global i32 0, align 4
@svp_simple_001_001_global_array = common global [10000 x i32] zeroinitializer, align 16
@svp_simple_001_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_001_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void @disable_isr(i32 2), !dbg !12
  call void (...) @idlerun(), !dbg !13
  br label %1, !dbg !14

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ], !dbg !15
  %2 = icmp slt i32 %.0, 10000, !dbg !16
  br i1 %2, label %4, label %3, !dbg !17

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  %5 = sext i32 %.0 to i64, !dbg !18
  %6 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %5, !dbg !18
  store volatile i32 0, i32* %6, align 4, !dbg !19, !tbaa !20
  br label %7, !dbg !18

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, 1, !dbg !24
  br label %1, !dbg !17, !llvm.loop !25

9:                                                ; preds = %3
  br label %10, !dbg !27

10:                                               ; preds = %19, %9
  %.01 = phi i32 [ 0, %9 ], [ %20, %19 ], !dbg !15
  %11 = icmp slt i32 %.01, 10000, !dbg !28
  br i1 %11, label %13, label %12, !dbg !29

12:                                               ; preds = %10
  br label %21

13:                                               ; preds = %10
  %14 = icmp eq i32 %.01, 9999, !dbg !30
  br i1 %14, label %15, label %18, !dbg !31

15:                                               ; preds = %13
  %16 = sext i32 %.01 to i64, !dbg !32
  %17 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %16, !dbg !32
  store volatile i32 1, i32* %17, align 4, !dbg !33, !tbaa !20
  br label %18, !dbg !32

18:                                               ; preds = %15, %13
  br label %19, !dbg !34

19:                                               ; preds = %18
  %20 = add nsw i32 %.01, 1, !dbg !35
  br label %10, !dbg !29, !llvm.loop !36

21:                                               ; preds = %12
  ret void, !dbg !37
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

declare void @idlerun(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_001_001_isr_1() #0 !dbg !38 {
  call void (...) @idlerun(), !dbg !39
  store volatile i32 1, i32* @svp_simple_001_001_global_flag, align 4, !dbg !40, !tbaa !20
  store volatile i32 0, i32* @svp_simple_001_001_global_var, align 4, !dbg !41, !tbaa !20
  store volatile i32 1, i32* @svp_simple_001_001_global_var, align 4, !dbg !42, !tbaa !20
  call void @enable_isr(i32 2), !dbg !43
  call void (...) @idlerun(), !dbg !44
  ret void, !dbg !45
}

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_001_001_isr_2() #0 !dbg !46 {
  %1 = load volatile i32, i32* @svp_simple_001_001_global_flag, align 4, !dbg !47, !tbaa !20
  %2 = icmp eq i32 %1, 1, !dbg !48
  br i1 %2, label %3, label %5, !dbg !47

3:                                                ; preds = %0
  %4 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 9999), align 4, !dbg !49, !tbaa !20
  br label %7, !dbg !50

5:                                                ; preds = %0
  %6 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 0), align 16, !dbg !51, !tbaa !20
  br label %7

7:                                                ; preds = %5, %3
  %8 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 1000), align 16, !dbg !52, !tbaa !20
  %9 = load volatile i32, i32* @svp_simple_001_001_global_var, align 4, !dbg !53, !tbaa !20
  ret void, !dbg !54
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_001_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_001")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_001_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_001_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_001")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 28, column: 3, scope: !8)
!13 = !DILocation(line: 30, column: 3, scope: !8)
!14 = !DILocation(line: 32, column: 8, scope: !8)
!15 = !DILocation(line: 0, scope: !8)
!16 = !DILocation(line: 32, column: 21, scope: !8)
!17 = !DILocation(line: 32, column: 3, scope: !8)
!18 = !DILocation(line: 32, column: 35, scope: !8)
!19 = !DILocation(line: 32, column: 70, scope: !8)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 32, column: 31, scope: !8)
!25 = distinct !{!25, !17, !26}
!26 = !DILocation(line: 32, column: 72, scope: !8)
!27 = !DILocation(line: 34, column: 8, scope: !8)
!28 = !DILocation(line: 34, column: 21, scope: !8)
!29 = !DILocation(line: 34, column: 3, scope: !8)
!30 = !DILocation(line: 35, column: 11, scope: !8)
!31 = !DILocation(line: 35, column: 9, scope: !8)
!32 = !DILocation(line: 35, column: 23, scope: !8)
!33 = !DILocation(line: 35, column: 58, scope: !8)
!34 = !DILocation(line: 36, column: 3, scope: !8)
!35 = !DILocation(line: 34, column: 31, scope: !8)
!36 = distinct !{!36, !29, !34}
!37 = !DILocation(line: 37, column: 1, scope: !8)
!38 = distinct !DISubprogram(name: "svp_simple_001_001_isr_1", scope: !9, file: !9, line: 39, type: !10, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 40, column: 3, scope: !38)
!40 = !DILocation(line: 41, column: 34, scope: !38)
!41 = !DILocation(line: 43, column: 33, scope: !38)
!42 = !DILocation(line: 44, column: 33, scope: !38)
!43 = !DILocation(line: 46, column: 3, scope: !38)
!44 = !DILocation(line: 48, column: 3, scope: !38)
!45 = !DILocation(line: 49, column: 1, scope: !38)
!46 = distinct !DISubprogram(name: "svp_simple_001_001_isr_2", scope: !9, file: !9, line: 51, type: !10, scopeLine: 51, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 53, column: 7, scope: !46)
!48 = !DILocation(line: 53, column: 38, scope: !46)
!49 = !DILocation(line: 55, column: 15, scope: !46)
!50 = !DILocation(line: 55, column: 5, scope: !46)
!51 = !DILocation(line: 58, column: 9, scope: !46)
!52 = !DILocation(line: 60, column: 13, scope: !46)
!53 = !DILocation(line: 64, column: 13, scope: !46)
!54 = !DILocation(line: 65, column: 1, scope: !46)
