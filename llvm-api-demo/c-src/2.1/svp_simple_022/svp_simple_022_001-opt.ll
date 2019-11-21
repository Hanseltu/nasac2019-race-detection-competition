; ModuleID = 'svp_simple_022_001-opt.bc'
source_filename = "./svp_simple_022_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_022_001_global_var1 = common global i32 0, align 4
@svp_simple_022_001_global_array = common global [256 x i32] zeroinitializer, align 16
@svp_simple_022_001_global_var3 = common global i32 0, align 4
@svp_simple_022_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_main() #0 !dbg !8 {
  %1 = call i32 (...) @rand() #3, !dbg !11
  store volatile i32 %1, i32* @svp_simple_022_001_global_var1, align 4, !dbg !14, !tbaa !15
  %2 = call i32 (...) @rand() #3, !dbg !19
  store volatile i32 %2, i32* @svp_simple_022_001_global_var2, align 4, !dbg !20, !tbaa !15
  %3 = call i32 (...) @rand() #3, !dbg !21
  store volatile i32 %3, i32* @svp_simple_022_001_global_var3, align 4, !dbg !22, !tbaa !15
  call void (...) @init() #3, !dbg !23
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !24, !tbaa !15
  %4 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !25, !tbaa !15
  %5 = icmp sge i32 %4, 12, !dbg !30
  br i1 %5, label %6, label %7, !dbg !25

6:                                                ; preds = %0
  store volatile i32 12, i32* @svp_simple_022_001_global_var1, align 4, !dbg !31, !tbaa !15
  br label %svp_simple_022_001_func_1.exit, !dbg !32

7:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !33, !tbaa !15
  br label %svp_simple_022_001_func_1.exit

svp_simple_022_001_func_1.exit:                   ; preds = %6, %7
  br label %8, !dbg !34

8:                                                ; preds = %13, %svp_simple_022_001_func_1.exit
  %.0 = phi i32 [ 0, %svp_simple_022_001_func_1.exit ], [ %14, %13 ], !dbg !35
  %9 = icmp slt i32 %.0, 256, !dbg !36
  br i1 %9, label %10, label %15, !dbg !37

10:                                               ; preds = %8
  %11 = sext i32 %.0 to i64, !dbg !38
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* @svp_simple_022_001_global_array, i64 0, i64 %11, !dbg !38
  store volatile i32 0, i32* %12, align 4, !dbg !39, !tbaa !15
  br label %13, !dbg !40

13:                                               ; preds = %10
  %14 = add nsw i32 %.0, 1, !dbg !41
  br label %8, !dbg !37, !llvm.loop !42

15:                                               ; preds = %8
  %16 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !43, !tbaa !15
  store volatile i32 %16, i32* @svp_simple_022_001_global_var3, align 4, !dbg !48, !tbaa !15
  %17 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !49, !tbaa !15
  store volatile i32 %17, i32* @svp_simple_022_001_global_var3, align 4, !dbg !50, !tbaa !15
  ret void, !dbg !51
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_init() #0 !dbg !12 {
  %1 = call i32 (...) @rand(), !dbg !52
  store volatile i32 %1, i32* @svp_simple_022_001_global_var1, align 4, !dbg !53, !tbaa !15
  %2 = call i32 (...) @rand(), !dbg !54
  store volatile i32 %2, i32* @svp_simple_022_001_global_var2, align 4, !dbg !55, !tbaa !15
  %3 = call i32 (...) @rand(), !dbg !56
  store volatile i32 %3, i32* @svp_simple_022_001_global_var3, align 4, !dbg !57, !tbaa !15
  call void (...) @init(), !dbg !58
  ret void, !dbg !59
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_1() #0 !dbg !28 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !60, !tbaa !15
  %2 = icmp sge i32 %1, 12, !dbg !62
  br i1 %2, label %3, label %4, !dbg !60

3:                                                ; preds = %0
  store volatile i32 12, i32* @svp_simple_022_001_global_var1, align 4, !dbg !63, !tbaa !15
  br label %svp_simple_022_001_func_3.exit, !dbg !64

4:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !65, !tbaa !15
  br label %svp_simple_022_001_func_3.exit

svp_simple_022_001_func_3.exit:                   ; preds = %3, %4
  ret void, !dbg !66
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_2() #0 !dbg !46 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !67, !tbaa !15
  store volatile i32 %1, i32* @svp_simple_022_001_global_var3, align 4, !dbg !69, !tbaa !15
  ret void, !dbg !70
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_3() #0 !dbg !26 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !71, !tbaa !15
  %2 = icmp sge i32 %1, 12, !dbg !72
  br i1 %2, label %3, label %4, !dbg !71

3:                                                ; preds = %0
  store volatile i32 12, i32* @svp_simple_022_001_global_var1, align 4, !dbg !73, !tbaa !15
  br label %5, !dbg !74

4:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !75, !tbaa !15
  br label %5

5:                                                ; preds = %4, %3
  ret void, !dbg !76
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_4() #0 !dbg !44 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !77, !tbaa !15
  store volatile i32 %1, i32* @svp_simple_022_001_global_var3, align 4, !dbg !78, !tbaa !15
  ret void, !dbg !79
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_isr_1() #0 !dbg !80 {
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !81, !tbaa !15
  ret void, !dbg !82
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_022_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_022")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_022_001_main", scope: !9, file: !9, line: 29, type: !10, scopeLine: 29, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_022_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_022")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 43, column: 36, scope: !12, inlinedAt: !13)
!12 = distinct !DISubprogram(name: "svp_simple_022_001_init", scope: !9, file: !9, line: 42, type: !10, scopeLine: 42, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = distinct !DILocation(line: 30, column: 3, scope: !8)
!14 = !DILocation(line: 43, column: 34, scope: !12, inlinedAt: !13)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 44, column: 36, scope: !12, inlinedAt: !13)
!20 = !DILocation(line: 44, column: 34, scope: !12, inlinedAt: !13)
!21 = !DILocation(line: 45, column: 36, scope: !12, inlinedAt: !13)
!22 = !DILocation(line: 45, column: 34, scope: !12, inlinedAt: !13)
!23 = !DILocation(line: 47, column: 3, scope: !12, inlinedAt: !13)
!24 = !DILocation(line: 32, column: 34, scope: !8)
!25 = !DILocation(line: 55, column: 7, scope: !26, inlinedAt: !27)
!26 = distinct !DISubprogram(name: "svp_simple_022_001_func_3", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!27 = distinct !DILocation(line: 50, column: 36, scope: !28, inlinedAt: !29)
!28 = distinct !DISubprogram(name: "svp_simple_022_001_func_1", scope: !9, file: !9, line: 50, type: !10, scopeLine: 50, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!29 = distinct !DILocation(line: 33, column: 3, scope: !8)
!30 = !DILocation(line: 55, column: 38, scope: !26, inlinedAt: !27)
!31 = !DILocation(line: 56, column: 36, scope: !26, inlinedAt: !27)
!32 = !DILocation(line: 57, column: 3, scope: !26, inlinedAt: !27)
!33 = !DILocation(line: 58, column: 36, scope: !26, inlinedAt: !27)
!34 = !DILocation(line: 35, column: 8, scope: !8)
!35 = !DILocation(line: 0, scope: !8)
!36 = !DILocation(line: 35, column: 17, scope: !8)
!37 = !DILocation(line: 35, column: 3, scope: !8)
!38 = !DILocation(line: 36, column: 5, scope: !8)
!39 = !DILocation(line: 36, column: 40, scope: !8)
!40 = !DILocation(line: 37, column: 3, scope: !8)
!41 = !DILocation(line: 35, column: 25, scope: !8)
!42 = distinct !{!42, !37, !40}
!43 = !DILocation(line: 63, column: 36, scope: !44, inlinedAt: !45)
!44 = distinct !DISubprogram(name: "svp_simple_022_001_func_4", scope: !9, file: !9, line: 62, type: !10, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!45 = distinct !DILocation(line: 52, column: 36, scope: !46, inlinedAt: !47)
!46 = distinct !DISubprogram(name: "svp_simple_022_001_func_2", scope: !9, file: !9, line: 52, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!47 = distinct !DILocation(line: 38, column: 3, scope: !8)
!48 = !DILocation(line: 63, column: 34, scope: !44, inlinedAt: !45)
!49 = !DILocation(line: 39, column: 36, scope: !8)
!50 = !DILocation(line: 39, column: 34, scope: !8)
!51 = !DILocation(line: 40, column: 1, scope: !8)
!52 = !DILocation(line: 43, column: 36, scope: !12)
!53 = !DILocation(line: 43, column: 34, scope: !12)
!54 = !DILocation(line: 44, column: 36, scope: !12)
!55 = !DILocation(line: 44, column: 34, scope: !12)
!56 = !DILocation(line: 45, column: 36, scope: !12)
!57 = !DILocation(line: 45, column: 34, scope: !12)
!58 = !DILocation(line: 47, column: 3, scope: !12)
!59 = !DILocation(line: 48, column: 1, scope: !12)
!60 = !DILocation(line: 55, column: 7, scope: !26, inlinedAt: !61)
!61 = distinct !DILocation(line: 50, column: 36, scope: !28)
!62 = !DILocation(line: 55, column: 38, scope: !26, inlinedAt: !61)
!63 = !DILocation(line: 56, column: 36, scope: !26, inlinedAt: !61)
!64 = !DILocation(line: 57, column: 3, scope: !26, inlinedAt: !61)
!65 = !DILocation(line: 58, column: 36, scope: !26, inlinedAt: !61)
!66 = !DILocation(line: 50, column: 65, scope: !28)
!67 = !DILocation(line: 63, column: 36, scope: !44, inlinedAt: !68)
!68 = distinct !DILocation(line: 52, column: 36, scope: !46)
!69 = !DILocation(line: 63, column: 34, scope: !44, inlinedAt: !68)
!70 = !DILocation(line: 52, column: 65, scope: !46)
!71 = !DILocation(line: 55, column: 7, scope: !26)
!72 = !DILocation(line: 55, column: 38, scope: !26)
!73 = !DILocation(line: 56, column: 36, scope: !26)
!74 = !DILocation(line: 57, column: 3, scope: !26)
!75 = !DILocation(line: 58, column: 36, scope: !26)
!76 = !DILocation(line: 60, column: 1, scope: !26)
!77 = !DILocation(line: 63, column: 36, scope: !44)
!78 = !DILocation(line: 63, column: 34, scope: !44)
!79 = !DILocation(line: 64, column: 1, scope: !44)
!80 = distinct !DISubprogram(name: "svp_simple_022_001_isr_1", scope: !9, file: !9, line: 65, type: !10, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!81 = !DILocation(line: 66, column: 34, scope: !80)
!82 = !DILocation(line: 67, column: 1, scope: !80)
