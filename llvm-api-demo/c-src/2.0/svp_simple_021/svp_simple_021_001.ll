; ModuleID = 'svp_simple_021_001.c'
source_filename = "svp_simple_021_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_021_001_tc_block_rcvd_bytes_ch1 = common global i16 0, align 2
@svp_simple_021_001_tc_block_rcvd_bytes_ch2 = common global i16 0, align 2
@svp_simple_021_001_tc_chan1_buff = common global [256 x i8] zeroinitializer, align 16
@svp_simple_021_001_tc_buff_p = common local_unnamed_addr global i8* null, align 8
@svp_simple_021_001_tc_block_rcvd_bytes = common global i16 0, align 2
@svp_simple_021_001_tc_chan2_buff = common global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_init() local_unnamed_addr #0 !dbg !8 {
  %1 = tail call i32 (...) @rand() #3, !dbg !10
  %2 = trunc i32 %1 to i16, !dbg !10
  store volatile i16 %2, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !11, !tbaa !12
  %3 = tail call i32 (...) @rand() #3, !dbg !16
  %4 = trunc i32 %3 to i16, !dbg !16
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !17, !tbaa !12
  tail call void (...) @init() #3, !dbg !18
  ret void, !dbg !19
}

declare i32 @rand(...) local_unnamed_addr #1

declare void @init(...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_021_001_RecvTcBlock() local_unnamed_addr #2 !dbg !20 {
  %1 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !21, !tbaa !12
  %2 = icmp ugt i16 %1, 15, !dbg !22
  br i1 %2, label %3, label %15, !dbg !21

; <label>:3:                                      ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !23, !tbaa !12
  br label %4, !dbg !24

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i64 [ 0, %3 ], [ %13, %4 ]
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %5, !dbg !25
  store volatile i8 0, i8* %6, align 4, !dbg !26, !tbaa !27
  %7 = or i64 %5, 1, !dbg !28
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %7, !dbg !25
  store volatile i8 0, i8* %8, align 1, !dbg !26, !tbaa !27
  %9 = or i64 %5, 2, !dbg !28
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %9, !dbg !25
  store volatile i8 0, i8* %10, align 2, !dbg !26, !tbaa !27
  %11 = or i64 %5, 3, !dbg !28
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %11, !dbg !25
  store volatile i8 0, i8* %12, align 1, !dbg !26, !tbaa !27
  %13 = add nuw nsw i64 %5, 4, !dbg !28
  %14 = icmp eq i64 %13, 256, !dbg !29
  br i1 %14, label %15, label %4, !dbg !24, !llvm.loop !30

; <label>:15:                                     ; preds = %4, %0
  ret void, !dbg !32
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_021_001_main() local_unnamed_addr #0 !dbg !33 {
  %1 = tail call i32 (...) @rand() #3, !dbg !34
  %2 = trunc i32 %1 to i16, !dbg !34
  store volatile i16 %2, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !36, !tbaa !12
  %3 = tail call i32 (...) @rand() #3, !dbg !37
  %4 = trunc i32 %3 to i16, !dbg !37
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !38, !tbaa !12
  tail call void (...) @init() #3, !dbg !39
  %5 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !40, !tbaa !12
  %6 = icmp ugt i16 %5, 15, !dbg !42
  br i1 %6, label %7, label %19, !dbg !40

; <label>:7:                                      ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !43, !tbaa !12
  br label %8, !dbg !44

; <label>:8:                                      ; preds = %8, %7
  %9 = phi i64 [ 0, %7 ], [ %17, %8 ]
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %9, !dbg !45
  store volatile i8 0, i8* %10, align 4, !dbg !46, !tbaa !27
  %11 = or i64 %9, 1, !dbg !47
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %11, !dbg !45
  store volatile i8 0, i8* %12, align 1, !dbg !46, !tbaa !27
  %13 = or i64 %9, 2, !dbg !47
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %13, !dbg !45
  store volatile i8 0, i8* %14, align 2, !dbg !46, !tbaa !27
  %15 = or i64 %9, 3, !dbg !47
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %15, !dbg !45
  store volatile i8 0, i8* %16, align 1, !dbg !46, !tbaa !27
  %17 = add nuw nsw i64 %9, 4, !dbg !47
  %18 = icmp eq i64 %17, 256, !dbg !48
  br i1 %18, label %19, label %8, !dbg !44, !llvm.loop !30

; <label>:19:                                     ; preds = %8, %0
  %20 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !49, !tbaa !12
  store volatile i16 %20, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !50, !tbaa !12
  %21 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 2), align 2, !dbg !51, !tbaa !27
  %22 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 4), align 4, !dbg !52, !tbaa !27
  %23 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 5), align 1, !dbg !53, !tbaa !27
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !54, !tbaa !55
  %24 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !57, !tbaa !12
  store volatile i16 %24, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !58, !tbaa !12
  %25 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 2), align 2, !dbg !51, !tbaa !27
  %26 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 4), align 4, !dbg !52, !tbaa !27
  %27 = load volatile i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 5), align 1, !dbg !53, !tbaa !27
  ret void, !dbg !59
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_021_001_isr_1() local_unnamed_addr #2 !dbg !60 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 268435456, !dbg !61, !tbaa !62
  %2 = lshr i32 %1, 3, !dbg !64
  %3 = trunc i32 %2 to i16, !dbg !65
  %4 = and i16 %3, 8191, !dbg !65
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !66, !tbaa !12
  ret void, !dbg !67
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_021_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_021")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_021_001_init", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 34, column: 48, scope: !8)
!11 = !DILocation(line: 34, column: 46, scope: !8)
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 35, column: 48, scope: !8)
!17 = !DILocation(line: 35, column: 46, scope: !8)
!18 = !DILocation(line: 37, column: 3, scope: !8)
!19 = !DILocation(line: 38, column: 1, scope: !8)
!20 = distinct !DISubprogram(name: "svp_simple_021_001_RecvTcBlock", scope: !1, file: !1, line: 40, type: !9, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 44, column: 7, scope: !20)
!22 = !DILocation(line: 44, column: 50, scope: !20)
!23 = !DILocation(line: 45, column: 48, scope: !20)
!24 = !DILocation(line: 47, column: 5, scope: !20)
!25 = !DILocation(line: 48, column: 7, scope: !20)
!26 = !DILocation(line: 48, column: 43, scope: !20)
!27 = !{!14, !14, i64 0}
!28 = !DILocation(line: 47, column: 27, scope: !20)
!29 = !DILocation(line: 47, column: 19, scope: !20)
!30 = distinct !{!30, !24, !31}
!31 = !DILocation(line: 49, column: 5, scope: !20)
!32 = !DILocation(line: 52, column: 1, scope: !20)
!33 = distinct !DISubprogram(name: "svp_simple_021_001_main", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 34, column: 48, scope: !8, inlinedAt: !35)
!35 = distinct !DILocation(line: 57, column: 3, scope: !33)
!36 = !DILocation(line: 34, column: 46, scope: !8, inlinedAt: !35)
!37 = !DILocation(line: 35, column: 48, scope: !8, inlinedAt: !35)
!38 = !DILocation(line: 35, column: 46, scope: !8, inlinedAt: !35)
!39 = !DILocation(line: 37, column: 3, scope: !8, inlinedAt: !35)
!40 = !DILocation(line: 44, column: 7, scope: !20, inlinedAt: !41)
!41 = distinct !DILocation(line: 59, column: 3, scope: !33)
!42 = !DILocation(line: 44, column: 50, scope: !20, inlinedAt: !41)
!43 = !DILocation(line: 45, column: 48, scope: !20, inlinedAt: !41)
!44 = !DILocation(line: 47, column: 5, scope: !20, inlinedAt: !41)
!45 = !DILocation(line: 48, column: 7, scope: !20, inlinedAt: !41)
!46 = !DILocation(line: 48, column: 43, scope: !20, inlinedAt: !41)
!47 = !DILocation(line: 47, column: 27, scope: !20, inlinedAt: !41)
!48 = !DILocation(line: 47, column: 19, scope: !20, inlinedAt: !41)
!49 = !DILocation(line: 65, column: 11, scope: !33)
!50 = !DILocation(line: 64, column: 46, scope: !33)
!51 = !DILocation(line: 72, column: 21, scope: !33)
!52 = !DILocation(line: 73, column: 19, scope: !33)
!53 = !DILocation(line: 74, column: 26, scope: !33)
!54 = !DILocation(line: 67, column: 36, scope: !33)
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !14, i64 0}
!57 = !DILocation(line: 69, column: 11, scope: !33)
!58 = !DILocation(line: 68, column: 46, scope: !33)
!59 = !DILocation(line: 76, column: 1, scope: !33)
!60 = distinct !DISubprogram(name: "svp_simple_021_001_isr_1", scope: !1, file: !1, line: 78, type: !9, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!61 = !DILocation(line: 80, column: 8, scope: !60)
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !14, i64 0}
!64 = !DILocation(line: 80, column: 34, scope: !60)
!65 = !DILocation(line: 80, column: 7, scope: !60)
!66 = !DILocation(line: 79, column: 46, scope: !60)
!67 = !DILocation(line: 81, column: 1, scope: !60)
