; ModuleID = 'svp_simple_021_001-opt.bc'
source_filename = "./svp_simple_021_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.svp_simple_021_001_tc_block_data = type { i8, i8, i8 }

@svp_simple_021_001_tc_block_rcvd_bytes_ch1 = common global i16 0, align 2
@svp_simple_021_001_tc_block_rcvd_bytes_ch2 = common global i16 0, align 2
@svp_simple_021_001_tc_chan1_buff = common global [256 x i8] zeroinitializer, align 16
@svp_simple_021_001_tc_buff_p = common global i8* null, align 8
@svp_simple_021_001_tc_block_rcvd_bytes = common global i16 0, align 2
@svp_simple_021_001_tc_chan2_buff = common global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_init() #0 !dbg !8 {
  %1 = call i32 (...) @rand(), !dbg !11
  %2 = trunc i32 %1 to i16, !dbg !11
  store volatile i16 %2, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !12, !tbaa !13
  %3 = call i32 (...) @rand(), !dbg !17
  %4 = trunc i32 %3 to i16, !dbg !17
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !18, !tbaa !13
  call void (...) @init(), !dbg !19
  ret void, !dbg !20
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_RecvTcBlock() #0 !dbg !21 {
  %1 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !22, !tbaa !13
  %2 = zext i16 %1 to i32, !dbg !22
  %3 = icmp sge i32 %2, 16, !dbg !23
  br i1 %3, label %4, label %13, !dbg !22

4:                                                ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !24, !tbaa !13
  br label %5, !dbg !25

5:                                                ; preds = %10, %4
  %.0 = phi i32 [ 0, %4 ], [ %11, %10 ], !dbg !26
  %6 = icmp slt i32 %.0, 256, !dbg !27
  br i1 %6, label %7, label %12, !dbg !28

7:                                                ; preds = %5
  %8 = sext i32 %.0 to i64, !dbg !29
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %8, !dbg !29
  store volatile i8 0, i8* %9, align 1, !dbg !30, !tbaa !31
  br label %10, !dbg !32

10:                                               ; preds = %7
  %11 = add nsw i32 %.0, 1, !dbg !33
  br label %5, !dbg !28, !llvm.loop !34

12:                                               ; preds = %5
  br label %13, !dbg !35

13:                                               ; preds = %12, %0
  ret void, !dbg !36
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_main() #0 !dbg !37 {
  %1 = alloca %struct.svp_simple_021_001_tc_block_data, align 1
  %2 = bitcast %struct.svp_simple_021_001_tc_block_data* %1 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 3, i8* %2) #3, !dbg !38
  %3 = call i32 (...) @rand() #3, !dbg !39
  %4 = trunc i32 %3 to i16, !dbg !39
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !41, !tbaa !13
  %5 = call i32 (...) @rand() #3, !dbg !42
  %6 = trunc i32 %5 to i16, !dbg !42
  store volatile i16 %6, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !43, !tbaa !13
  call void (...) @init() #3, !dbg !44
  %7 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !45, !tbaa !13
  %8 = zext i16 %7 to i32, !dbg !45
  %9 = icmp sge i32 %8, 16, !dbg !47
  br i1 %9, label %10, label %svp_simple_021_001_RecvTcBlock.exit, !dbg !45

10:                                               ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !48, !tbaa !13
  br label %11, !dbg !49

11:                                               ; preds = %13, %10
  %.0.i = phi i32 [ 0, %10 ], [ %16, %13 ], !dbg !50
  %12 = icmp slt i32 %.0.i, 256, !dbg !51
  br i1 %12, label %13, label %17, !dbg !52

13:                                               ; preds = %11
  %14 = sext i32 %.0.i to i64, !dbg !53
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %14, !dbg !53
  store volatile i8 0, i8* %15, align 1, !dbg !54, !tbaa !31
  %16 = add nsw i32 %.0.i, 1, !dbg !55
  br label %11, !dbg !52, !llvm.loop !34

17:                                               ; preds = %11
  br label %svp_simple_021_001_RecvTcBlock.exit, !dbg !56

svp_simple_021_001_RecvTcBlock.exit:              ; preds = %0, %17
  br label %18, !dbg !57

18:                                               ; preds = %39, %svp_simple_021_001_RecvTcBlock.exit
  %.0 = phi i32 [ 0, %svp_simple_021_001_RecvTcBlock.exit ], [ %40, %39 ], !dbg !58
  %19 = icmp slt i32 %.0, 2, !dbg !59
  br i1 %19, label %20, label %41, !dbg !60

20:                                               ; preds = %18
  %21 = icmp eq i32 %.0, 0, !dbg !61
  br i1 %21, label %22, label %24, !dbg !62

22:                                               ; preds = %20
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !63, !tbaa !64
  %23 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !66, !tbaa !13
  store volatile i16 %23, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !67, !tbaa !13
  br label %26, !dbg !68

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !69, !tbaa !64
  %25 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !70, !tbaa !13
  store volatile i16 %25, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !71, !tbaa !13
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !72, !tbaa !64
  %28 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !73
  %29 = load volatile i8, i8* %28, align 1, !dbg !74, !tbaa !31
  %30 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 0, !dbg !75
  store i8 %29, i8* %30, align 1, !dbg !76, !tbaa !77
  %31 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !79, !tbaa !64
  %32 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !80
  %33 = load volatile i8, i8* %32, align 1, !dbg !81, !tbaa !31
  %34 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 1, !dbg !82
  store i8 %33, i8* %34, align 1, !dbg !83, !tbaa !84
  %35 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !85, !tbaa !64
  %36 = getelementptr inbounds i8, i8* %35, i64 5, !dbg !86
  %37 = load volatile i8, i8* %36, align 1, !dbg !87, !tbaa !31
  %38 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 2, !dbg !88
  store i8 %37, i8* %38, align 1, !dbg !89, !tbaa !90
  br label %39, !dbg !91

39:                                               ; preds = %26
  %40 = add nsw i32 %.0, 1, !dbg !92
  br label %18, !dbg !60, !llvm.loop !93

41:                                               ; preds = %18
  %42 = bitcast %struct.svp_simple_021_001_tc_block_data* %1 to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 3, i8* %42) #3, !dbg !94
  ret void, !dbg !94
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_isr_1() #0 !dbg !95 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 4, !dbg !96, !tbaa !97
  %2 = lshr i32 %1, 3, !dbg !99
  %3 = and i32 %2, 8191, !dbg !100
  %4 = trunc i32 %3 to i16, !dbg !101
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !102, !tbaa !13
  ret void, !dbg !103
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_021_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_021")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_021_001_init", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_021_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_021")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 34, column: 48, scope: !8)
!12 = !DILocation(line: 34, column: 46, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 35, column: 48, scope: !8)
!18 = !DILocation(line: 35, column: 46, scope: !8)
!19 = !DILocation(line: 37, column: 3, scope: !8)
!20 = !DILocation(line: 38, column: 1, scope: !8)
!21 = distinct !DISubprogram(name: "svp_simple_021_001_RecvTcBlock", scope: !9, file: !9, line: 40, type: !10, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!22 = !DILocation(line: 44, column: 7, scope: !21)
!23 = !DILocation(line: 44, column: 50, scope: !21)
!24 = !DILocation(line: 45, column: 48, scope: !21)
!25 = !DILocation(line: 47, column: 10, scope: !21)
!26 = !DILocation(line: 0, scope: !21)
!27 = !DILocation(line: 47, column: 19, scope: !21)
!28 = !DILocation(line: 47, column: 5, scope: !21)
!29 = !DILocation(line: 48, column: 7, scope: !21)
!30 = !DILocation(line: 48, column: 43, scope: !21)
!31 = !{!15, !15, i64 0}
!32 = !DILocation(line: 49, column: 5, scope: !21)
!33 = !DILocation(line: 47, column: 27, scope: !21)
!34 = distinct !{!34, !28, !32}
!35 = !DILocation(line: 51, column: 3, scope: !21)
!36 = !DILocation(line: 52, column: 1, scope: !21)
!37 = distinct !DISubprogram(name: "svp_simple_021_001_main", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 55, column: 3, scope: !37)
!39 = !DILocation(line: 34, column: 48, scope: !8, inlinedAt: !40)
!40 = distinct !DILocation(line: 57, column: 3, scope: !37)
!41 = !DILocation(line: 34, column: 46, scope: !8, inlinedAt: !40)
!42 = !DILocation(line: 35, column: 48, scope: !8, inlinedAt: !40)
!43 = !DILocation(line: 35, column: 46, scope: !8, inlinedAt: !40)
!44 = !DILocation(line: 37, column: 3, scope: !8, inlinedAt: !40)
!45 = !DILocation(line: 44, column: 7, scope: !21, inlinedAt: !46)
!46 = distinct !DILocation(line: 59, column: 3, scope: !37)
!47 = !DILocation(line: 44, column: 50, scope: !21, inlinedAt: !46)
!48 = !DILocation(line: 45, column: 48, scope: !21, inlinedAt: !46)
!49 = !DILocation(line: 47, column: 10, scope: !21, inlinedAt: !46)
!50 = !DILocation(line: 0, scope: !21, inlinedAt: !46)
!51 = !DILocation(line: 47, column: 19, scope: !21, inlinedAt: !46)
!52 = !DILocation(line: 47, column: 5, scope: !21, inlinedAt: !46)
!53 = !DILocation(line: 48, column: 7, scope: !21, inlinedAt: !46)
!54 = !DILocation(line: 48, column: 43, scope: !21, inlinedAt: !46)
!55 = !DILocation(line: 47, column: 27, scope: !21, inlinedAt: !46)
!56 = !DILocation(line: 51, column: 3, scope: !21, inlinedAt: !46)
!57 = !DILocation(line: 61, column: 8, scope: !37)
!58 = !DILocation(line: 0, scope: !37)
!59 = !DILocation(line: 61, column: 25, scope: !37)
!60 = !DILocation(line: 61, column: 3, scope: !37)
!61 = !DILocation(line: 62, column: 15, scope: !37)
!62 = !DILocation(line: 62, column: 9, scope: !37)
!63 = !DILocation(line: 63, column: 36, scope: !37)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !15, i64 0}
!66 = !DILocation(line: 65, column: 11, scope: !37)
!67 = !DILocation(line: 64, column: 46, scope: !37)
!68 = !DILocation(line: 66, column: 5, scope: !37)
!69 = !DILocation(line: 67, column: 36, scope: !37)
!70 = !DILocation(line: 69, column: 11, scope: !37)
!71 = !DILocation(line: 68, column: 46, scope: !37)
!72 = !DILocation(line: 72, column: 23, scope: !37)
!73 = !DILocation(line: 72, column: 52, scope: !37)
!74 = !DILocation(line: 72, column: 21, scope: !37)
!75 = !DILocation(line: 72, column: 14, scope: !37)
!76 = !DILocation(line: 72, column: 19, scope: !37)
!77 = !{!78, !15, i64 0}
!78 = !{!"svp_simple_021_001_tc_block_data", !15, i64 0, !15, i64 1, !15, i64 2}
!79 = !DILocation(line: 73, column: 21, scope: !37)
!80 = !DILocation(line: 73, column: 50, scope: !37)
!81 = !DILocation(line: 73, column: 19, scope: !37)
!82 = !DILocation(line: 73, column: 14, scope: !37)
!83 = !DILocation(line: 73, column: 17, scope: !37)
!84 = !{!78, !15, i64 1}
!85 = !DILocation(line: 74, column: 28, scope: !37)
!86 = !DILocation(line: 74, column: 57, scope: !37)
!87 = !DILocation(line: 74, column: 26, scope: !37)
!88 = !DILocation(line: 74, column: 14, scope: !37)
!89 = !DILocation(line: 74, column: 24, scope: !37)
!90 = !{!78, !15, i64 2}
!91 = !DILocation(line: 75, column: 3, scope: !37)
!92 = !DILocation(line: 61, column: 35, scope: !37)
!93 = distinct !{!93, !60, !91}
!94 = !DILocation(line: 76, column: 1, scope: !37)
!95 = distinct !DISubprogram(name: "svp_simple_021_001_isr_1", scope: !9, file: !9, line: 78, type: !10, scopeLine: 78, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!96 = !DILocation(line: 80, column: 8, scope: !95)
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !15, i64 0}
!99 = !DILocation(line: 80, column: 34, scope: !95)
!100 = !DILocation(line: 80, column: 40, scope: !95)
!101 = !DILocation(line: 80, column: 7, scope: !95)
!102 = !DILocation(line: 79, column: 46, scope: !95)
!103 = !DILocation(line: 81, column: 1, scope: !95)
