; ModuleID = 'svp_simple_013_001-opt.bc'
source_filename = "./svp_simple_013_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_013_001_global_flag1 = global i32 0, align 4
@svp_simple_013_001_global_flag2 = global i32 1, align 4
@svp_simple_013_001_global_var1 = common global i32 0, align 4
@svp_simple_013_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void @disable_isr(i32 2), !dbg !12
  call void @disable_isr(i32 3), !dbg !13
  br label %1, !dbg !14

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ], !dbg !15
  %2 = icmp slt i32 %.0, 100, !dbg !16
  br i1 %2, label %4, label %3, !dbg !17

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  %5 = icmp eq i32 %.0, 99, !dbg !18
  br i1 %5, label %6, label %8, !dbg !19

6:                                                ; preds = %4
  %7 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !20, !tbaa !21
  br label %8, !dbg !25

8:                                                ; preds = %6, %4
  br label %9, !dbg !26

9:                                                ; preds = %8
  %10 = add nsw i32 %.0, 1, !dbg !27
  br label %1, !dbg !17, !llvm.loop !28

11:                                               ; preds = %3
  %12 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !29, !tbaa !21
  %13 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !30, !tbaa !21
  %14 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !31, !tbaa !21
  ret void, !dbg !32
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_1() #0 !dbg !33 {
  call void (...) @idlerun(), !dbg !34
  call void @enable_isr(i32 2), !dbg !35
  call void (...) @idlerun(), !dbg !36
  ret void, !dbg !37
}

declare void @idlerun(...) #1

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_2() #0 !dbg !38 {
  call void (...) @idlerun(), !dbg !39
  store i32 1, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !40, !tbaa !21
  store i32 0, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !41, !tbaa !21
  call void @enable_isr(i32 3), !dbg !42
  call void (...) @idlerun(), !dbg !43
  ret void, !dbg !44
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_3() #0 !dbg !45 {
  %1 = load i32, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !46, !tbaa !21
  %2 = icmp eq i32 %1, 1, !dbg !47
  br i1 %2, label %3, label %4, !dbg !46

3:                                                ; preds = %0
  store volatile i32 1, i32* @svp_simple_013_001_global_var1, align 4, !dbg !48, !tbaa !21
  br label %4, !dbg !49

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !50, !tbaa !21
  %6 = icmp eq i32 %5, 1, !dbg !51
  br i1 %6, label %7, label %8, !dbg !50

7:                                                ; preds = %4
  store volatile i32 1, i32* @svp_simple_013_001_global_var2, align 4, !dbg !52, !tbaa !21
  br label %8, !dbg !53

8:                                                ; preds = %7, %4
  ret void, !dbg !54
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_013")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_013_001_main", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_013")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 3, scope: !8)
!13 = !DILocation(line: 31, column: 3, scope: !8)
!14 = !DILocation(line: 38, column: 8, scope: !8)
!15 = !DILocation(line: 0, scope: !8)
!16 = !DILocation(line: 38, column: 21, scope: !8)
!17 = !DILocation(line: 38, column: 3, scope: !8)
!18 = !DILocation(line: 39, column: 11, scope: !8)
!19 = !DILocation(line: 39, column: 9, scope: !8)
!20 = !DILocation(line: 39, column: 33, scope: !8)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 39, column: 23, scope: !8)
!26 = !DILocation(line: 39, column: 14, scope: !8)
!27 = !DILocation(line: 38, column: 36, scope: !8)
!28 = distinct !{!28, !17, !20}
!29 = !DILocation(line: 41, column: 13, scope: !8)
!30 = !DILocation(line: 43, column: 13, scope: !8)
!31 = !DILocation(line: 45, column: 13, scope: !8)
!32 = !DILocation(line: 46, column: 1, scope: !8)
!33 = distinct !DISubprogram(name: "svp_simple_013_001_isr_1", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 49, column: 3, scope: !33)
!35 = !DILocation(line: 50, column: 3, scope: !33)
!36 = !DILocation(line: 51, column: 3, scope: !33)
!37 = !DILocation(line: 52, column: 1, scope: !33)
!38 = distinct !DISubprogram(name: "svp_simple_013_001_isr_2", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 55, column: 3, scope: !38)
!40 = !DILocation(line: 56, column: 35, scope: !38)
!41 = !DILocation(line: 58, column: 35, scope: !38)
!42 = !DILocation(line: 60, column: 3, scope: !38)
!43 = !DILocation(line: 61, column: 3, scope: !38)
!44 = !DILocation(line: 62, column: 1, scope: !38)
!45 = distinct !DISubprogram(name: "svp_simple_013_001_isr_3", scope: !9, file: !9, line: 64, type: !10, scopeLine: 64, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 65, column: 7, scope: !45)
!47 = !DILocation(line: 65, column: 39, scope: !45)
!48 = !DILocation(line: 65, column: 76, scope: !45)
!49 = !DILocation(line: 65, column: 45, scope: !45)
!50 = !DILocation(line: 66, column: 7, scope: !45)
!51 = !DILocation(line: 66, column: 39, scope: !45)
!52 = !DILocation(line: 66, column: 76, scope: !45)
!53 = !DILocation(line: 66, column: 45, scope: !45)
!54 = !DILocation(line: 67, column: 1, scope: !45)
