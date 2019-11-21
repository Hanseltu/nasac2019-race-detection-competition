; ModuleID = 'svp_simple_021_001.bc'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !22
  store i32 0, i32* %1, align 4, !dbg !23, !tbaa !24
  %4 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !26, !tbaa !13
  %5 = zext i16 %4 to i32, !dbg !26
  %6 = icmp sge i32 %5, 16, !dbg !27
  br i1 %6, label %7, label %21, !dbg !26

7:                                                ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !28, !tbaa !13
  %8 = bitcast i32* %2 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !29
  store i32 0, i32* %2, align 4, !dbg !30, !tbaa !24
  br label %9, !dbg !31

9:                                                ; preds = %16, %7
  %10 = load i32, i32* %2, align 4, !dbg !32, !tbaa !24
  %11 = icmp slt i32 %10, 256, !dbg !33
  br i1 %11, label %12, label %19, !dbg !34

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4, !dbg !35, !tbaa !24
  %14 = sext i32 %13 to i64, !dbg !36
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %14, !dbg !36
  store volatile i8 0, i8* %15, align 1, !dbg !37, !tbaa !38
  br label %16, !dbg !39

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4, !dbg !40, !tbaa !24
  %18 = add nsw i32 %17, 1, !dbg !40
  store i32 %18, i32* %2, align 4, !dbg !40, !tbaa !24
  br label %9, !dbg !34, !llvm.loop !41

19:                                               ; preds = %9
  store i32 255, i32* %1, align 4, !dbg !42, !tbaa !24
  %20 = bitcast i32* %2 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3, !dbg !43
  br label %21, !dbg !43

21:                                               ; preds = %19, %0
  %22 = bitcast i32* %1 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !44
  ret void, !dbg !44
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_main() #0 !dbg !45 {
  %1 = alloca %struct.svp_simple_021_001_tc_block_data, align 1
  %2 = alloca i32, align 4
  %3 = bitcast %struct.svp_simple_021_001_tc_block_data* %1 to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 3, i8* %3) #3, !dbg !46
  call void @svp_simple_021_001_init(), !dbg !47
  call void @svp_simple_021_001_RecvTcBlock(), !dbg !48
  %4 = bitcast i32* %2 to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !49
  store i32 0, i32* %2, align 4, !dbg !50, !tbaa !24
  br label %5, !dbg !51

5:                                                ; preds = %28, %0
  %6 = load i32, i32* %2, align 4, !dbg !52, !tbaa !24
  %7 = icmp slt i32 %6, 2, !dbg !53
  br i1 %7, label %8, label %31, !dbg !54

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !55, !tbaa !24
  %10 = icmp eq i32 %9, 0, !dbg !56
  br i1 %10, label %11, label %13, !dbg !55

11:                                               ; preds = %8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !57, !tbaa !58
  %12 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !60, !tbaa !13
  store volatile i16 %12, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !61, !tbaa !13
  br label %15, !dbg !62

13:                                               ; preds = %8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !63, !tbaa !58
  %14 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !64, !tbaa !13
  store volatile i16 %14, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !65, !tbaa !13
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !66, !tbaa !58
  %17 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !67
  %18 = load volatile i8, i8* %17, align 1, !dbg !68, !tbaa !38
  %19 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 0, !dbg !69
  store i8 %18, i8* %19, align 1, !dbg !70, !tbaa !71
  %20 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !73, !tbaa !58
  %21 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !74
  %22 = load volatile i8, i8* %21, align 1, !dbg !75, !tbaa !38
  %23 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 1, !dbg !76
  store i8 %22, i8* %23, align 1, !dbg !77, !tbaa !78
  %24 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !79, !tbaa !58
  %25 = getelementptr inbounds i8, i8* %24, i64 5, !dbg !80
  %26 = load volatile i8, i8* %25, align 1, !dbg !81, !tbaa !38
  %27 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 2, !dbg !82
  store i8 %26, i8* %27, align 1, !dbg !83, !tbaa !84
  br label %28, !dbg !85

28:                                               ; preds = %15
  %29 = load i32, i32* %2, align 4, !dbg !86, !tbaa !24
  %30 = add nsw i32 %29, 1, !dbg !86
  store i32 %30, i32* %2, align 4, !dbg !86, !tbaa !24
  br label %5, !dbg !54, !llvm.loop !87

31:                                               ; preds = %5
  %32 = bitcast i32* %2 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3, !dbg !88
  %33 = bitcast %struct.svp_simple_021_001_tc_block_data* %1 to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 3, i8* %33) #3, !dbg !88
  ret void, !dbg !88
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_isr_1() #0 !dbg !89 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 4, !dbg !90, !tbaa !24
  %2 = lshr i32 %1, 3, !dbg !91
  %3 = and i32 %2, 8191, !dbg !92
  %4 = trunc i32 %3 to i16, !dbg !93
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !94, !tbaa !13
  ret void, !dbg !95
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_021_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_021")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_021_001_init", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_021_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_021")
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
!22 = !DILocation(line: 41, column: 3, scope: !21)
!23 = !DILocation(line: 42, column: 33, scope: !21)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !15, i64 0}
!26 = !DILocation(line: 44, column: 7, scope: !21)
!27 = !DILocation(line: 44, column: 50, scope: !21)
!28 = !DILocation(line: 45, column: 48, scope: !21)
!29 = !DILocation(line: 46, column: 5, scope: !21)
!30 = !DILocation(line: 47, column: 12, scope: !21)
!31 = !DILocation(line: 47, column: 10, scope: !21)
!32 = !DILocation(line: 47, column: 17, scope: !21)
!33 = !DILocation(line: 47, column: 19, scope: !21)
!34 = !DILocation(line: 47, column: 5, scope: !21)
!35 = !DILocation(line: 48, column: 40, scope: !21)
!36 = !DILocation(line: 48, column: 7, scope: !21)
!37 = !DILocation(line: 48, column: 43, scope: !21)
!38 = !{!15, !15, i64 0}
!39 = !DILocation(line: 49, column: 5, scope: !21)
!40 = !DILocation(line: 47, column: 27, scope: !21)
!41 = distinct !{!41, !34, !39}
!42 = !DILocation(line: 50, column: 35, scope: !21)
!43 = !DILocation(line: 51, column: 3, scope: !21)
!44 = !DILocation(line: 52, column: 1, scope: !21)
!45 = distinct !DISubprogram(name: "svp_simple_021_001_main", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 55, column: 3, scope: !45)
!47 = !DILocation(line: 57, column: 3, scope: !45)
!48 = !DILocation(line: 59, column: 3, scope: !45)
!49 = !DILocation(line: 60, column: 3, scope: !45)
!50 = !DILocation(line: 61, column: 14, scope: !45)
!51 = !DILocation(line: 61, column: 8, scope: !45)
!52 = !DILocation(line: 61, column: 19, scope: !45)
!53 = !DILocation(line: 61, column: 25, scope: !45)
!54 = !DILocation(line: 61, column: 3, scope: !45)
!55 = !DILocation(line: 62, column: 9, scope: !45)
!56 = !DILocation(line: 62, column: 15, scope: !45)
!57 = !DILocation(line: 63, column: 36, scope: !45)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !15, i64 0}
!60 = !DILocation(line: 65, column: 11, scope: !45)
!61 = !DILocation(line: 64, column: 46, scope: !45)
!62 = !DILocation(line: 66, column: 5, scope: !45)
!63 = !DILocation(line: 67, column: 36, scope: !45)
!64 = !DILocation(line: 69, column: 11, scope: !45)
!65 = !DILocation(line: 68, column: 46, scope: !45)
!66 = !DILocation(line: 72, column: 23, scope: !45)
!67 = !DILocation(line: 72, column: 52, scope: !45)
!68 = !DILocation(line: 72, column: 21, scope: !45)
!69 = !DILocation(line: 72, column: 14, scope: !45)
!70 = !DILocation(line: 72, column: 19, scope: !45)
!71 = !{!72, !15, i64 0}
!72 = !{!"svp_simple_021_001_tc_block_data", !15, i64 0, !15, i64 1, !15, i64 2}
!73 = !DILocation(line: 73, column: 21, scope: !45)
!74 = !DILocation(line: 73, column: 50, scope: !45)
!75 = !DILocation(line: 73, column: 19, scope: !45)
!76 = !DILocation(line: 73, column: 14, scope: !45)
!77 = !DILocation(line: 73, column: 17, scope: !45)
!78 = !{!72, !15, i64 1}
!79 = !DILocation(line: 74, column: 28, scope: !45)
!80 = !DILocation(line: 74, column: 57, scope: !45)
!81 = !DILocation(line: 74, column: 26, scope: !45)
!82 = !DILocation(line: 74, column: 14, scope: !45)
!83 = !DILocation(line: 74, column: 24, scope: !45)
!84 = !{!72, !15, i64 2}
!85 = !DILocation(line: 75, column: 3, scope: !45)
!86 = !DILocation(line: 61, column: 35, scope: !45)
!87 = distinct !{!87, !54, !85}
!88 = !DILocation(line: 76, column: 1, scope: !45)
!89 = distinct !DISubprogram(name: "svp_simple_021_001_isr_1", scope: !9, file: !9, line: 78, type: !10, scopeLine: 78, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!90 = !DILocation(line: 80, column: 8, scope: !89)
!91 = !DILocation(line: 80, column: 34, scope: !89)
!92 = !DILocation(line: 80, column: 40, scope: !89)
!93 = !DILocation(line: 80, column: 7, scope: !89)
!94 = !DILocation(line: 79, column: 46, scope: !89)
!95 = !DILocation(line: 81, column: 1, scope: !89)
