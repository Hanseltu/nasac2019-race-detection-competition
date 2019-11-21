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
  store volatile i32 5, i32* @svp_simple_013_001_global_var1, align 4, !dbg !14, !tbaa !15
  store volatile i32 5, i32* @svp_simple_013_001_global_var2, align 4, !dbg !19, !tbaa !15
  br label %1, !dbg !20

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ], !dbg !21
  %2 = icmp slt i32 %.0, 100, !dbg !22
  br i1 %2, label %4, label %3, !dbg !23

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  %5 = icmp eq i32 %.0, 99, !dbg !24
  br i1 %5, label %6, label %8, !dbg !25

6:                                                ; preds = %4
  %7 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !26, !tbaa !15
  br label %8, !dbg !27

8:                                                ; preds = %6, %4
  br label %9, !dbg !28

9:                                                ; preds = %8
  %10 = add nsw i32 %.0, 1, !dbg !29
  br label %1, !dbg !23, !llvm.loop !30

11:                                               ; preds = %3
  %12 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !31, !tbaa !15
  %13 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !32, !tbaa !15
  %14 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !33, !tbaa !15
  ret void, !dbg !34
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_1() #0 !dbg !35 {
  call void (...) @idlerun(), !dbg !36
  call void @enable_isr(i32 2), !dbg !37
  call void (...) @idlerun(), !dbg !38
  ret void, !dbg !39
}

declare void @idlerun(...) #1

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_2() #0 !dbg !40 {
  call void (...) @idlerun(), !dbg !41
  store i32 1, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !42, !tbaa !15
  store i32 0, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !43, !tbaa !15
  call void @enable_isr(i32 3), !dbg !44
  call void (...) @idlerun(), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_3() #0 !dbg !47 {
  %1 = load i32, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !48, !tbaa !15
  %2 = icmp eq i32 %1, 1, !dbg !49
  br i1 %2, label %3, label %4, !dbg !48

3:                                                ; preds = %0
  store volatile i32 1, i32* @svp_simple_013_001_global_var1, align 4, !dbg !50, !tbaa !15
  br label %4, !dbg !51

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !52, !tbaa !15
  %6 = icmp eq i32 %5, 1, !dbg !53
  br i1 %6, label %7, label %8, !dbg !52

7:                                                ; preds = %4
  store volatile i32 1, i32* @svp_simple_013_001_global_var2, align 4, !dbg !54, !tbaa !15
  br label %8, !dbg !55

8:                                                ; preds = %7, %4
  ret void, !dbg !56
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_013")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_013_001_main", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_013")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 3, scope: !8)
!13 = !DILocation(line: 31, column: 3, scope: !8)
!14 = !DILocation(line: 33, column: 34, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 34, column: 34, scope: !8)
!20 = !DILocation(line: 38, column: 8, scope: !8)
!21 = !DILocation(line: 0, scope: !8)
!22 = !DILocation(line: 38, column: 21, scope: !8)
!23 = !DILocation(line: 38, column: 3, scope: !8)
!24 = !DILocation(line: 39, column: 11, scope: !8)
!25 = !DILocation(line: 39, column: 9, scope: !8)
!26 = !DILocation(line: 39, column: 33, scope: !8)
!27 = !DILocation(line: 39, column: 23, scope: !8)
!28 = !DILocation(line: 39, column: 14, scope: !8)
!29 = !DILocation(line: 38, column: 36, scope: !8)
!30 = distinct !{!30, !23, !26}
!31 = !DILocation(line: 41, column: 13, scope: !8)
!32 = !DILocation(line: 43, column: 13, scope: !8)
!33 = !DILocation(line: 45, column: 13, scope: !8)
!34 = !DILocation(line: 46, column: 1, scope: !8)
!35 = distinct !DISubprogram(name: "svp_simple_013_001_isr_1", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 49, column: 3, scope: !35)
!37 = !DILocation(line: 50, column: 3, scope: !35)
!38 = !DILocation(line: 51, column: 3, scope: !35)
!39 = !DILocation(line: 52, column: 1, scope: !35)
!40 = distinct !DISubprogram(name: "svp_simple_013_001_isr_2", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 55, column: 3, scope: !40)
!42 = !DILocation(line: 56, column: 35, scope: !40)
!43 = !DILocation(line: 58, column: 35, scope: !40)
!44 = !DILocation(line: 60, column: 3, scope: !40)
!45 = !DILocation(line: 61, column: 3, scope: !40)
!46 = !DILocation(line: 62, column: 1, scope: !40)
!47 = distinct !DISubprogram(name: "svp_simple_013_001_isr_3", scope: !9, file: !9, line: 64, type: !10, scopeLine: 64, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!48 = !DILocation(line: 65, column: 7, scope: !47)
!49 = !DILocation(line: 65, column: 39, scope: !47)
!50 = !DILocation(line: 65, column: 76, scope: !47)
!51 = !DILocation(line: 65, column: 45, scope: !47)
!52 = !DILocation(line: 66, column: 7, scope: !47)
!53 = !DILocation(line: 66, column: 39, scope: !47)
!54 = !DILocation(line: 66, column: 76, scope: !47)
!55 = !DILocation(line: 66, column: 45, scope: !47)
!56 = !DILocation(line: 67, column: 1, scope: !47)
