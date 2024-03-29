; ModuleID = 'svp_simple_014_001-opt-opt.bc'
source_filename = "./svp_simple_014_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_014_001_global_var1 = dso_local global i32 1, align 4
@svp_simple_014_001_global_var2 = dso_local global i32 2, align 4
@svp_simple_014_001_global_flag1 = dso_local global i32 0, align 4
@svp_simple_014_001_global_flag2 = dso_local global i32 1, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_014_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  call void (...) @idlerun() #3, !dbg !11
  ret void, !dbg !12
}

declare dso_local void @init(...) #1

declare dso_local void @idlerun(...) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_014_001_isr_1() #0 !dbg !13 {
  call void @disable_isr(i32 3) #3, !dbg !14
  br label %1, !dbg !15

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ], !dbg !16
  %2 = icmp ult i32 %.0, 100, !dbg !17
  br i1 %2, label %3, label %9, !dbg !18

3:                                                ; preds = %1
  %4 = icmp eq i32 %.0, 99, !dbg !19
  br i1 %4, label %5, label %7, !dbg !20

5:                                                ; preds = %3
  %6 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !21, !tbaa !22
  br label %7, !dbg !26

7:                                                ; preds = %5, %3
  %8 = add nuw nsw i32 %.0, 1, !dbg !27
  br label %1, !dbg !18, !llvm.loop !28

9:                                                ; preds = %1
  %10 = load volatile i32, i32* @svp_simple_014_001_global_var1, align 4, !dbg !29, !tbaa !22
  %11 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !30, !tbaa !22
  %12 = load volatile i32, i32* @svp_simple_014_001_global_var2, align 4, !dbg !31, !tbaa !22
  ret void, !dbg !32
}

declare dso_local void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_014_001_isr_2() #0 !dbg !33 {
  store i32 1, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !34, !tbaa !22
  store i32 0, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !35, !tbaa !22
  call void @enable_isr(i32 3) #3, !dbg !36
  call void (...) @idlerun() #3, !dbg !37
  ret void, !dbg !38
}

declare dso_local void @enable_isr(i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_014_001_isr_3() #0 !dbg !39 {
  %1 = load i32, i32* @svp_simple_014_001_global_flag1, align 4, !dbg !40, !tbaa !22
  %2 = icmp eq i32 %1, 1, !dbg !41
  br i1 %2, label %3, label %4, !dbg !40

3:                                                ; preds = %0
  store volatile i32 9, i32* @svp_simple_014_001_global_var1, align 4, !dbg !42, !tbaa !22
  br label %4, !dbg !43

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_014_001_global_flag2, align 4, !dbg !44, !tbaa !22
  %6 = icmp eq i32 %5, 1, !dbg !45
  br i1 %6, label %7, label %8, !dbg !44

7:                                                ; preds = %4
  store volatile i32 9, i32* @svp_simple_014_001_global_var2, align 4, !dbg !46, !tbaa !22
  br label %8, !dbg !47

8:                                                ; preds = %7, %4
  ret void, !dbg !48
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_014_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_014")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_014_001_main", scope: !8, file: !8, line: 28, type: !9, scopeLine: 28, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_014_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_014")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !7)
!11 = !DILocation(line: 30, column: 3, scope: !7)
!12 = !DILocation(line: 31, column: 1, scope: !7)
!13 = distinct !DISubprogram(name: "svp_simple_014_001_isr_1", scope: !8, file: !8, line: 33, type: !9, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 34, column: 3, scope: !13)
!15 = !DILocation(line: 38, column: 8, scope: !13)
!16 = !DILocation(line: 0, scope: !13)
!17 = !DILocation(line: 38, column: 21, scope: !13)
!18 = !DILocation(line: 38, column: 3, scope: !13)
!19 = !DILocation(line: 39, column: 11, scope: !13)
!20 = !DILocation(line: 39, column: 9, scope: !13)
!21 = !DILocation(line: 39, column: 33, scope: !13)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 39, column: 23, scope: !13)
!27 = !DILocation(line: 38, column: 36, scope: !13)
!28 = distinct !{!28, !18, !21}
!29 = !DILocation(line: 41, column: 13, scope: !13)
!30 = !DILocation(line: 43, column: 13, scope: !13)
!31 = !DILocation(line: 45, column: 13, scope: !13)
!32 = !DILocation(line: 46, column: 1, scope: !13)
!33 = distinct !DISubprogram(name: "svp_simple_014_001_isr_2", scope: !8, file: !8, line: 48, type: !9, scopeLine: 48, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 49, column: 35, scope: !33)
!35 = !DILocation(line: 50, column: 35, scope: !33)
!36 = !DILocation(line: 52, column: 3, scope: !33)
!37 = !DILocation(line: 54, column: 3, scope: !33)
!38 = !DILocation(line: 55, column: 1, scope: !33)
!39 = distinct !DISubprogram(name: "svp_simple_014_001_isr_3", scope: !8, file: !8, line: 57, type: !9, scopeLine: 57, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!40 = !DILocation(line: 58, column: 7, scope: !39)
!41 = !DILocation(line: 58, column: 39, scope: !39)
!42 = !DILocation(line: 58, column: 76, scope: !39)
!43 = !DILocation(line: 58, column: 45, scope: !39)
!44 = !DILocation(line: 59, column: 7, scope: !39)
!45 = !DILocation(line: 59, column: 39, scope: !39)
!46 = !DILocation(line: 59, column: 76, scope: !39)
!47 = !DILocation(line: 59, column: 45, scope: !39)
!48 = !DILocation(line: 60, column: 1, scope: !39)
