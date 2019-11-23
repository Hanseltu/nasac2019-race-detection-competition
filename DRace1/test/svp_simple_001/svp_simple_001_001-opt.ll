; ModuleID = 'svp_simple_001_001-opt.bc'
source_filename = "./svp_simple_001_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_001_001_global_flag = dso_local global i32 0, align 4
@svp_simple_001_001_global_array = common dso_local global [10000 x i32] zeroinitializer, align 16
@svp_simple_001_001_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_001_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  call void @disable_isr(i32 2) #3, !dbg !11
  call void (...) @idlerun() #3, !dbg !12
  br label %1, !dbg !13

1:                                                ; preds = %3, %0
  %.0 = phi i32 [ 0, %0 ], [ %6, %3 ], !dbg !14
  %2 = icmp ult i32 %.0, 10000, !dbg !15
  br i1 %2, label %3, label %7, !dbg !16

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64, !dbg !17
  %5 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %4, !dbg !17
  store volatile i32 0, i32* %5, align 4, !dbg !18, !tbaa !19
  %6 = add nuw nsw i32 %.0, 1, !dbg !23
  br label %1, !dbg !16, !llvm.loop !24

7:                                                ; preds = %14, %1
  %.01 = phi i32 [ %15, %14 ], [ 0, %1 ], !dbg !14
  %8 = icmp ult i32 %.01, 10000, !dbg !26
  br i1 %8, label %9, label %16, !dbg !27

9:                                                ; preds = %7
  %10 = icmp eq i32 %.01, 9999, !dbg !28
  br i1 %10, label %11, label %14, !dbg !29

11:                                               ; preds = %9
  %12 = zext i32 %.01 to i64, !dbg !30
  %13 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %12, !dbg !30
  store volatile i32 1, i32* %13, align 4, !dbg !31, !tbaa !19
  br label %14, !dbg !30

14:                                               ; preds = %11, %9
  %15 = add nuw nsw i32 %.01, 1, !dbg !32
  br label %7, !dbg !27, !llvm.loop !33

16:                                               ; preds = %7
  ret void, !dbg !35
}

declare dso_local void @init(...) #1

declare dso_local void @disable_isr(i32) #1

declare dso_local void @idlerun(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_001_001_isr_1() #0 !dbg !36 {
  call void (...) @idlerun() #3, !dbg !37
  store volatile i32 1, i32* @svp_simple_001_001_global_flag, align 4, !dbg !38, !tbaa !19
  store volatile i32 0, i32* @svp_simple_001_001_global_var, align 4, !dbg !39, !tbaa !19
  store volatile i32 1, i32* @svp_simple_001_001_global_var, align 4, !dbg !40, !tbaa !19
  call void @enable_isr(i32 2) #3, !dbg !41
  call void (...) @idlerun() #3, !dbg !42
  ret void, !dbg !43
}

declare dso_local void @enable_isr(i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_001_001_isr_2() #0 !dbg !44 {
  %1 = load volatile i32, i32* @svp_simple_001_001_global_flag, align 4, !dbg !45, !tbaa !19
  %2 = icmp eq i32 %1, 1, !dbg !46
  br i1 %2, label %3, label %5, !dbg !45

3:                                                ; preds = %0
  %4 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 9999), align 4, !dbg !47, !tbaa !19
  br label %7, !dbg !48

5:                                                ; preds = %0
  %6 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 0), align 16, !dbg !49, !tbaa !19
  br label %7

7:                                                ; preds = %5, %3
  %8 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 1000), align 16, !dbg !50, !tbaa !19
  %9 = load volatile i32, i32* @svp_simple_001_001_global_var, align 4, !dbg !51, !tbaa !19
  ret void, !dbg !52
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_001_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_001")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_001_001_main", scope: !8, file: !8, line: 25, type: !9, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_001_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_001")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !7)
!11 = !DILocation(line: 28, column: 3, scope: !7)
!12 = !DILocation(line: 30, column: 3, scope: !7)
!13 = !DILocation(line: 32, column: 8, scope: !7)
!14 = !DILocation(line: 0, scope: !7)
!15 = !DILocation(line: 32, column: 21, scope: !7)
!16 = !DILocation(line: 32, column: 3, scope: !7)
!17 = !DILocation(line: 32, column: 35, scope: !7)
!18 = !DILocation(line: 32, column: 70, scope: !7)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 32, column: 31, scope: !7)
!24 = distinct !{!24, !16, !25}
!25 = !DILocation(line: 32, column: 72, scope: !7)
!26 = !DILocation(line: 34, column: 21, scope: !7)
!27 = !DILocation(line: 34, column: 3, scope: !7)
!28 = !DILocation(line: 35, column: 11, scope: !7)
!29 = !DILocation(line: 35, column: 9, scope: !7)
!30 = !DILocation(line: 35, column: 23, scope: !7)
!31 = !DILocation(line: 35, column: 58, scope: !7)
!32 = !DILocation(line: 34, column: 31, scope: !7)
!33 = distinct !{!33, !27, !34}
!34 = !DILocation(line: 36, column: 3, scope: !7)
!35 = !DILocation(line: 37, column: 1, scope: !7)
!36 = distinct !DISubprogram(name: "svp_simple_001_001_isr_1", scope: !8, file: !8, line: 39, type: !9, scopeLine: 39, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 40, column: 3, scope: !36)
!38 = !DILocation(line: 41, column: 34, scope: !36)
!39 = !DILocation(line: 43, column: 33, scope: !36)
!40 = !DILocation(line: 44, column: 33, scope: !36)
!41 = !DILocation(line: 46, column: 3, scope: !36)
!42 = !DILocation(line: 48, column: 3, scope: !36)
!43 = !DILocation(line: 49, column: 1, scope: !36)
!44 = distinct !DISubprogram(name: "svp_simple_001_001_isr_2", scope: !8, file: !8, line: 51, type: !9, scopeLine: 51, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!45 = !DILocation(line: 53, column: 7, scope: !44)
!46 = !DILocation(line: 53, column: 38, scope: !44)
!47 = !DILocation(line: 55, column: 15, scope: !44)
!48 = !DILocation(line: 55, column: 5, scope: !44)
!49 = !DILocation(line: 58, column: 9, scope: !44)
!50 = !DILocation(line: 60, column: 13, scope: !44)
!51 = !DILocation(line: 64, column: 13, scope: !44)
!52 = !DILocation(line: 65, column: 1, scope: !44)
