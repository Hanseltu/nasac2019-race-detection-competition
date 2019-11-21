; ModuleID = 'svp_simple_031_001.bc'
source_filename = "./svp_simple_031_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.svp_simple_031_001_tc_block_data = type { i8, i8, i8 }

@svp_simple_031_001_tc_chan1_buff = common global [256 x i8] zeroinitializer, align 16
@svp_simple_031_001_tc_buff_p = common global i8* null, align 8
@svp_simple_031_001_tc_block_rcvd_bytes_ch1 = common global i16 0, align 2
@svp_simple_031_001_tc_block_rcvd_bytes = common global i16 0, align 2
@svp_simple_031_001_tc_block_rcvd_bytes_ch2 = common global i16 0, align 2
@svp_simple_031_001_gloable_var1 = common global i32 0, align 4
@svp_simple_031_001_tc_chan2_buff = common global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_031_001_main() #0 !dbg !8 {
  %1 = alloca %struct.svp_simple_031_001_tc_block_data, align 1
  %2 = alloca i32, align 4
  call void @svp_simple_031_001_init(), !dbg !11
  %3 = bitcast %struct.svp_simple_031_001_tc_block_data* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 3, i8* %3) #3, !dbg !12
  %4 = bitcast i32* %2 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !13
  store i32 0, i32* %2, align 4, !dbg !14, !tbaa !15
  %5 = load i32, i32* %2, align 4, !dbg !19, !tbaa !15
  %6 = icmp eq i32 %5, 0, !dbg !20
  br i1 %6, label %7, label %9, !dbg !19

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i64 0, i64 0), i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !21, !tbaa !22
  %8 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !24, !tbaa !25
  store volatile i16 %8, i16* @svp_simple_031_001_tc_block_rcvd_bytes, align 2, !dbg !27, !tbaa !25
  br label %9, !dbg !28

9:                                                ; preds = %7, %0
  %10 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !29, !tbaa !22
  %11 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !30
  %12 = load volatile i8, i8* %11, align 1, !dbg !31, !tbaa !32
  %13 = getelementptr inbounds %struct.svp_simple_031_001_tc_block_data, %struct.svp_simple_031_001_tc_block_data* %1, i32 0, i32 0, !dbg !33
  store i8 %12, i8* %13, align 1, !dbg !34, !tbaa !35
  %14 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !37, !tbaa !22
  %15 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !38
  %16 = load volatile i8, i8* %15, align 1, !dbg !39, !tbaa !32
  %17 = getelementptr inbounds %struct.svp_simple_031_001_tc_block_data, %struct.svp_simple_031_001_tc_block_data* %1, i32 0, i32 1, !dbg !40
  store i8 %16, i8* %17, align 1, !dbg !41, !tbaa !42
  %18 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !43, !tbaa !22
  %19 = getelementptr inbounds i8, i8* %18, i64 5, !dbg !44
  %20 = load volatile i8, i8* %19, align 1, !dbg !45, !tbaa !32
  %21 = getelementptr inbounds %struct.svp_simple_031_001_tc_block_data, %struct.svp_simple_031_001_tc_block_data* %1, i32 0, i32 2, !dbg !46
  store i8 %20, i8* %21, align 1, !dbg !47, !tbaa !48
  call void @svp_simple_031_001_func_3(), !dbg !49
  %22 = bitcast i32* %2 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !50
  %23 = bitcast %struct.svp_simple_031_001_tc_block_data* %1 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 3, i8* %23) #3, !dbg !50
  ret void, !dbg !50
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_031_001_func_1(i32, i32) #0 !dbg !51 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !15
  store i32 %1, i32* %4, align 4, !tbaa !15
  %6 = bitcast i32* %5 to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !52
  %7 = load i32, i32* %3, align 4, !dbg !53, !tbaa !15
  %8 = load i32, i32* %4, align 4, !dbg !54, !tbaa !15
  %9 = icmp slt i32 %7, %8, !dbg !55
  br i1 %9, label %10, label %14, !dbg !53

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4, !dbg !56, !tbaa !15
  %12 = load i32, i32* %4, align 4, !dbg !57, !tbaa !15
  %13 = mul nsw i32 %11, %12, !dbg !58
  store i32 %13, i32* %5, align 4, !dbg !59, !tbaa !15
  br label %16, !dbg !60

14:                                               ; preds = %2
  %15 = call i32 @svp_simple_031_001_func_2(i32 10), !dbg !61
  store i32 %15, i32* %5, align 4, !dbg !62, !tbaa !15
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %5, align 4, !dbg !63, !tbaa !15
  %18 = bitcast i32* %5 to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !64
  ret i32 %17, !dbg !65
}

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_031_001_func_2(i32) #0 !dbg !66 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4, !tbaa !15
  %4 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !67, !tbaa !25
  %5 = zext i16 %4 to i32, !dbg !67
  %6 = icmp sgt i32 %5, 0, !dbg !68
  br i1 %6, label %7, label %9, !dbg !67

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !69, !tbaa !15
  store i32 %8, i32* %2, align 4, !dbg !70
  br label %10, !dbg !70

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !71
  br label %10, !dbg !71

10:                                               ; preds = %9, %7
  %11 = load i32, i32* %2, align 4, !dbg !72
  ret i32 %11, !dbg !72
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_031_001_init() #0 !dbg !73 {
  %1 = call i32 (...) @rand(), !dbg !74
  %2 = trunc i32 %1 to i16, !dbg !74
  store volatile i16 %2, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !75, !tbaa !25
  %3 = call i32 (...) @rand(), !dbg !76
  %4 = trunc i32 %3 to i16, !dbg !76
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !77, !tbaa !25
  call void (...) @init(), !dbg !78
  ret void, !dbg !79
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_031_001_func_3() #0 !dbg !80 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !81
  store i32 0, i32* %1, align 4, !dbg !82, !tbaa !15
  %3 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !83, !tbaa !25
  %4 = zext i16 %3 to i32, !dbg !83
  %5 = icmp sge i32 %4, 16, !dbg !84
  br i1 %5, label %6, label %11, !dbg !83

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @svp_simple_031_001_gloable_var1, align 4, !dbg !85, !tbaa !15
  %8 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !86, !tbaa !25
  %9 = zext i16 %8 to i32, !dbg !86
  %10 = call i32 @svp_simple_031_001_func_1(i32 %7, i32 %9), !dbg !87
  br label %11, !dbg !88

11:                                               ; preds = %6, %0
  %12 = bitcast i32* %1 to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !89
  ret void, !dbg !89
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_031_001_isr_1() #0 !dbg !90 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 4, !dbg !91, !tbaa !15
  %2 = lshr i32 %1, 3, !dbg !92
  %3 = and i32 %2, 8191, !dbg !93
  %4 = trunc i32 %3 to i16, !dbg !94
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !95, !tbaa !25
  ret void, !dbg !96
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_031_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_031")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_031_001_main", scope: !9, file: !9, line: 38, type: !10, scopeLine: 38, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_031_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_031")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 39, column: 3, scope: !8)
!12 = !DILocation(line: 40, column: 3, scope: !8)
!13 = !DILocation(line: 42, column: 3, scope: !8)
!14 = !DILocation(line: 42, column: 7, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 43, column: 7, scope: !8)
!20 = !DILocation(line: 43, column: 13, scope: !8)
!21 = !DILocation(line: 44, column: 34, scope: !8)
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !17, i64 0}
!24 = !DILocation(line: 46, column: 9, scope: !8)
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !17, i64 0}
!27 = !DILocation(line: 45, column: 44, scope: !8)
!28 = !DILocation(line: 47, column: 3, scope: !8)
!29 = !DILocation(line: 49, column: 21, scope: !8)
!30 = !DILocation(line: 49, column: 50, scope: !8)
!31 = !DILocation(line: 49, column: 19, scope: !8)
!32 = !{!17, !17, i64 0}
!33 = !DILocation(line: 49, column: 12, scope: !8)
!34 = !DILocation(line: 49, column: 17, scope: !8)
!35 = !{!36, !17, i64 0}
!36 = !{!"svp_simple_031_001_tc_block_data", !17, i64 0, !17, i64 1, !17, i64 2}
!37 = !DILocation(line: 50, column: 19, scope: !8)
!38 = !DILocation(line: 50, column: 48, scope: !8)
!39 = !DILocation(line: 50, column: 17, scope: !8)
!40 = !DILocation(line: 50, column: 12, scope: !8)
!41 = !DILocation(line: 50, column: 15, scope: !8)
!42 = !{!36, !17, i64 1}
!43 = !DILocation(line: 51, column: 26, scope: !8)
!44 = !DILocation(line: 51, column: 55, scope: !8)
!45 = !DILocation(line: 51, column: 24, scope: !8)
!46 = !DILocation(line: 51, column: 12, scope: !8)
!47 = !DILocation(line: 51, column: 22, scope: !8)
!48 = !{!36, !17, i64 2}
!49 = !DILocation(line: 52, column: 3, scope: !8)
!50 = !DILocation(line: 53, column: 1, scope: !8)
!51 = distinct !DISubprogram(name: "svp_simple_031_001_func_1", scope: !9, file: !9, line: 55, type: !10, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!52 = !DILocation(line: 56, column: 3, scope: !51)
!53 = !DILocation(line: 57, column: 7, scope: !51)
!54 = !DILocation(line: 57, column: 11, scope: !51)
!55 = !DILocation(line: 57, column: 9, scope: !51)
!56 = !DILocation(line: 58, column: 9, scope: !51)
!57 = !DILocation(line: 58, column: 13, scope: !51)
!58 = !DILocation(line: 58, column: 11, scope: !51)
!59 = !DILocation(line: 58, column: 7, scope: !51)
!60 = !DILocation(line: 59, column: 3, scope: !51)
!61 = !DILocation(line: 60, column: 9, scope: !51)
!62 = !DILocation(line: 60, column: 7, scope: !51)
!63 = !DILocation(line: 62, column: 10, scope: !51)
!64 = !DILocation(line: 63, column: 1, scope: !51)
!65 = !DILocation(line: 62, column: 3, scope: !51)
!66 = distinct !DISubprogram(name: "svp_simple_031_001_func_2", scope: !9, file: !9, line: 64, type: !10, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!67 = !DILocation(line: 65, column: 7, scope: !66)
!68 = !DILocation(line: 65, column: 50, scope: !66)
!69 = !DILocation(line: 66, column: 12, scope: !66)
!70 = !DILocation(line: 66, column: 5, scope: !66)
!71 = !DILocation(line: 68, column: 5, scope: !66)
!72 = !DILocation(line: 70, column: 1, scope: !66)
!73 = distinct !DISubprogram(name: "svp_simple_031_001_init", scope: !9, file: !9, line: 72, type: !10, scopeLine: 72, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!74 = !DILocation(line: 73, column: 48, scope: !73)
!75 = !DILocation(line: 73, column: 46, scope: !73)
!76 = !DILocation(line: 74, column: 48, scope: !73)
!77 = !DILocation(line: 74, column: 46, scope: !73)
!78 = !DILocation(line: 76, column: 3, scope: !73)
!79 = !DILocation(line: 77, column: 1, scope: !73)
!80 = distinct !DISubprogram(name: "svp_simple_031_001_func_3", scope: !9, file: !9, line: 79, type: !10, scopeLine: 79, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!81 = !DILocation(line: 80, column: 3, scope: !80)
!82 = !DILocation(line: 81, column: 33, scope: !80)
!83 = !DILocation(line: 83, column: 7, scope: !80)
!84 = !DILocation(line: 83, column: 50, scope: !80)
!85 = !DILocation(line: 84, column: 31, scope: !80)
!86 = !DILocation(line: 85, column: 27, scope: !80)
!87 = !DILocation(line: 84, column: 5, scope: !80)
!88 = !DILocation(line: 86, column: 3, scope: !80)
!89 = !DILocation(line: 87, column: 1, scope: !80)
!90 = distinct !DISubprogram(name: "svp_simple_031_001_isr_1", scope: !9, file: !9, line: 89, type: !10, scopeLine: 89, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!91 = !DILocation(line: 91, column: 8, scope: !90)
!92 = !DILocation(line: 91, column: 34, scope: !90)
!93 = !DILocation(line: 91, column: 40, scope: !90)
!94 = !DILocation(line: 91, column: 7, scope: !90)
!95 = !DILocation(line: 90, column: 46, scope: !90)
!96 = !DILocation(line: 92, column: 1, scope: !90)
