; ModuleID = 'svp_simple_031_001-opt-opt.bc'
source_filename = "./svp_simple_031_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_031_001_tc_chan1_buff = common dso_local global [256 x i8] zeroinitializer, align 16
@svp_simple_031_001_tc_buff_p = common dso_local global i8* null, align 8
@svp_simple_031_001_tc_block_rcvd_bytes_ch1 = common dso_local global i16 0, align 2
@svp_simple_031_001_tc_block_rcvd_bytes = common dso_local global i16 0, align 2
@svp_simple_031_001_tc_block_rcvd_bytes_ch2 = common dso_local global i16 0, align 2
@svp_simple_031_001_gloable_var1 = common dso_local global i32 0, align 4
@svp_simple_031_001_tc_chan2_buff = common dso_local global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_main() #0 !dbg !7 {
  %1 = call i32 (...) @rand() #3, !dbg !10
  %2 = trunc i32 %1 to i16, !dbg !10
  store volatile i16 %2, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !13, !tbaa !14
  %3 = call i32 (...) @rand() #3, !dbg !18
  %4 = trunc i32 %3 to i16, !dbg !18
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !19, !tbaa !14
  call void (...) @init() #3, !dbg !20
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i64 0, i64 0), i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !21, !tbaa !22
  %5 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !24, !tbaa !14
  store volatile i16 %5, i16* @svp_simple_031_001_tc_block_rcvd_bytes, align 2, !dbg !25, !tbaa !14
  %6 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i64 0, i64 2), align 2, !dbg !26, !tbaa !27
  %7 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i64 0, i64 4), align 4, !dbg !28, !tbaa !27
  %8 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i64 0, i64 5), align 1, !dbg !29, !tbaa !27
  %9 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !30, !tbaa !14
  %10 = icmp ugt i16 %9, 15, !dbg !33
  br i1 %10, label %11, label %svp_simple_031_001_func_3.exit, !dbg !30

11:                                               ; preds = %0
  %12 = load volatile i32, i32* @svp_simple_031_001_gloable_var1, align 4, !dbg !34, !tbaa !35
  %13 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !37, !tbaa !14
  %14 = zext i16 %13 to i32, !dbg !37
  %15 = icmp slt i32 %12, %14, !dbg !38
  br i1 %15, label %svp_simple_031_001_func_3.exit, label %16, !dbg !41

16:                                               ; preds = %11
  %17 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !42, !tbaa !14
  br label %svp_simple_031_001_func_3.exit

svp_simple_031_001_func_3.exit:                   ; preds = %16, %11, %0
  ret void, !dbg !45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @svp_simple_031_001_func_1(i32, i32) #0 !dbg !39 {
  %3 = icmp slt i32 %0, %1, !dbg !46
  br i1 %3, label %4, label %6, !dbg !47

4:                                                ; preds = %2
  %5 = mul nsw i32 %1, %0, !dbg !48
  br label %9, !dbg !49

6:                                                ; preds = %2
  %7 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !50, !tbaa !14
  %8 = icmp eq i16 %7, 0, !dbg !52
  %..i = select i1 %8, i32 0, i32 10, !dbg !53
  br label %9

9:                                                ; preds = %6, %4
  %.0 = phi i32 [ %5, %4 ], [ %..i, %6 ], !dbg !54
  ret i32 %.0, !dbg !55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @svp_simple_031_001_func_2(i32) #0 !dbg !43 {
  %2 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !56, !tbaa !14
  %3 = icmp eq i16 %2, 0, !dbg !57
  %. = select i1 %3, i32 0, i32 %0, !dbg !58
  ret i32 %., !dbg !59
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_init() #0 !dbg !11 {
  %1 = call i32 (...) @rand() #3, !dbg !60
  %2 = trunc i32 %1 to i16, !dbg !60
  store volatile i16 %2, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !61, !tbaa !14
  %3 = call i32 (...) @rand() #3, !dbg !62
  %4 = trunc i32 %3 to i16, !dbg !62
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !63, !tbaa !14
  call void (...) @init() #3, !dbg !64
  ret void, !dbg !65
}

declare dso_local i32 @rand(...) #2

declare dso_local void @init(...) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_func_3() #0 !dbg !31 {
  %1 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !66, !tbaa !14
  %2 = icmp ugt i16 %1, 15, !dbg !67
  br i1 %2, label %3, label %svp_simple_031_001_func_1.exit, !dbg !66

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_031_001_gloable_var1, align 4, !dbg !68, !tbaa !35
  %5 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !69, !tbaa !14
  %6 = zext i16 %5 to i32, !dbg !69
  %7 = icmp slt i32 %4, %6, !dbg !70
  br i1 %7, label %svp_simple_031_001_func_1.exit, label %8, !dbg !72

8:                                                ; preds = %3
  %9 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !73, !tbaa !14
  br label %svp_simple_031_001_func_1.exit

svp_simple_031_001_func_1.exit:                   ; preds = %8, %3, %0
  ret void, !dbg !75
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_isr_1() #0 !dbg !76 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 268435456, !dbg !77, !tbaa !35
  %2 = lshr i32 %1, 3, !dbg !78
  %3 = trunc i32 %2 to i16, !dbg !79
  %4 = and i16 %3, 8191, !dbg !79
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !80, !tbaa !14
  ret void, !dbg !81
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_031_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_031")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_031_001_main", scope: !8, file: !8, line: 38, type: !9, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_031_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_031")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 73, column: 48, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "svp_simple_031_001_init", scope: !8, file: !8, line: 72, type: !9, scopeLine: 72, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 39, column: 3, scope: !7)
!13 = !DILocation(line: 73, column: 46, scope: !11, inlinedAt: !12)
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 74, column: 48, scope: !11, inlinedAt: !12)
!19 = !DILocation(line: 74, column: 46, scope: !11, inlinedAt: !12)
!20 = !DILocation(line: 76, column: 3, scope: !11, inlinedAt: !12)
!21 = !DILocation(line: 44, column: 34, scope: !7)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !16, i64 0}
!24 = !DILocation(line: 46, column: 9, scope: !7)
!25 = !DILocation(line: 45, column: 44, scope: !7)
!26 = !DILocation(line: 49, column: 19, scope: !7)
!27 = !{!16, !16, i64 0}
!28 = !DILocation(line: 50, column: 17, scope: !7)
!29 = !DILocation(line: 51, column: 24, scope: !7)
!30 = !DILocation(line: 83, column: 7, scope: !31, inlinedAt: !32)
!31 = distinct !DISubprogram(name: "svp_simple_031_001_func_3", scope: !8, file: !8, line: 79, type: !9, scopeLine: 79, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!32 = distinct !DILocation(line: 52, column: 3, scope: !7)
!33 = !DILocation(line: 83, column: 50, scope: !31, inlinedAt: !32)
!34 = !DILocation(line: 84, column: 31, scope: !31, inlinedAt: !32)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !16, i64 0}
!37 = !DILocation(line: 85, column: 27, scope: !31, inlinedAt: !32)
!38 = !DILocation(line: 57, column: 9, scope: !39, inlinedAt: !40)
!39 = distinct !DISubprogram(name: "svp_simple_031_001_func_1", scope: !8, file: !8, line: 55, type: !9, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!40 = distinct !DILocation(line: 84, column: 5, scope: !31, inlinedAt: !32)
!41 = !DILocation(line: 57, column: 7, scope: !39, inlinedAt: !40)
!42 = !DILocation(line: 65, column: 7, scope: !43, inlinedAt: !44)
!43 = distinct !DISubprogram(name: "svp_simple_031_001_func_2", scope: !8, file: !8, line: 64, type: !9, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = distinct !DILocation(line: 60, column: 9, scope: !39, inlinedAt: !40)
!45 = !DILocation(line: 53, column: 1, scope: !7)
!46 = !DILocation(line: 57, column: 9, scope: !39)
!47 = !DILocation(line: 57, column: 7, scope: !39)
!48 = !DILocation(line: 58, column: 11, scope: !39)
!49 = !DILocation(line: 59, column: 3, scope: !39)
!50 = !DILocation(line: 65, column: 7, scope: !43, inlinedAt: !51)
!51 = distinct !DILocation(line: 60, column: 9, scope: !39)
!52 = !DILocation(line: 65, column: 50, scope: !43, inlinedAt: !51)
!53 = !DILocation(line: 0, scope: !43, inlinedAt: !51)
!54 = !DILocation(line: 0, scope: !39)
!55 = !DILocation(line: 62, column: 3, scope: !39)
!56 = !DILocation(line: 65, column: 7, scope: !43)
!57 = !DILocation(line: 65, column: 50, scope: !43)
!58 = !DILocation(line: 0, scope: !43)
!59 = !DILocation(line: 70, column: 1, scope: !43)
!60 = !DILocation(line: 73, column: 48, scope: !11)
!61 = !DILocation(line: 73, column: 46, scope: !11)
!62 = !DILocation(line: 74, column: 48, scope: !11)
!63 = !DILocation(line: 74, column: 46, scope: !11)
!64 = !DILocation(line: 76, column: 3, scope: !11)
!65 = !DILocation(line: 77, column: 1, scope: !11)
!66 = !DILocation(line: 83, column: 7, scope: !31)
!67 = !DILocation(line: 83, column: 50, scope: !31)
!68 = !DILocation(line: 84, column: 31, scope: !31)
!69 = !DILocation(line: 85, column: 27, scope: !31)
!70 = !DILocation(line: 57, column: 9, scope: !39, inlinedAt: !71)
!71 = distinct !DILocation(line: 84, column: 5, scope: !31)
!72 = !DILocation(line: 57, column: 7, scope: !39, inlinedAt: !71)
!73 = !DILocation(line: 65, column: 7, scope: !43, inlinedAt: !74)
!74 = distinct !DILocation(line: 60, column: 9, scope: !39, inlinedAt: !71)
!75 = !DILocation(line: 87, column: 1, scope: !31)
!76 = distinct !DISubprogram(name: "svp_simple_031_001_isr_1", scope: !8, file: !8, line: 89, type: !9, scopeLine: 89, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!77 = !DILocation(line: 91, column: 8, scope: !76)
!78 = !DILocation(line: 91, column: 34, scope: !76)
!79 = !DILocation(line: 91, column: 7, scope: !76)
!80 = !DILocation(line: 90, column: 46, scope: !76)
!81 = !DILocation(line: 92, column: 1, scope: !76)
