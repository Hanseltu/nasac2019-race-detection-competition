; ModuleID = 'svp_simple_021_001-opt-opt.bc'
source_filename = "./svp_simple_021_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_021_001_tc_block_rcvd_bytes_ch1 = common dso_local global i16 0, align 2
@svp_simple_021_001_tc_block_rcvd_bytes_ch2 = common dso_local global i16 0, align 2
@svp_simple_021_001_tc_chan1_buff = common dso_local global [256 x i8] zeroinitializer, align 16
@svp_simple_021_001_tc_buff_p = common dso_local global i8* null, align 8
@svp_simple_021_001_tc_block_rcvd_bytes = common dso_local global i16 0, align 2
@svp_simple_021_001_tc_chan2_buff = common dso_local global [256 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_021_001_init() #0 !dbg !7 {
  %1 = call i32 (...) @rand() #3, !dbg !10
  %2 = trunc i32 %1 to i16, !dbg !10
  store volatile i16 %2, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !11, !tbaa !12
  %3 = call i32 (...) @rand() #3, !dbg !16
  %4 = trunc i32 %3 to i16, !dbg !16
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !17, !tbaa !12
  call void (...) @init() #3, !dbg !18
  ret void, !dbg !19
}

declare dso_local i32 @rand(...) #1

declare dso_local void @init(...) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_021_001_RecvTcBlock() #0 !dbg !20 {
  %1 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !21, !tbaa !12
  %2 = icmp ugt i16 %1, 15, !dbg !22
  br i1 %2, label %3, label %10, !dbg !21

3:                                                ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !23, !tbaa !12
  br label %4, !dbg !24

4:                                                ; preds = %6, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %6 ], !dbg !25
  %5 = icmp ult i32 %.0, 256, !dbg !26
  br i1 %5, label %6, label %10, !dbg !27

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64, !dbg !28
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %7, !dbg !28
  store volatile i8 0, i8* %8, align 1, !dbg !29, !tbaa !30
  %9 = add nuw nsw i32 %.0, 1, !dbg !31
  br label %4, !dbg !27, !llvm.loop !32

10:                                               ; preds = %4, %0
  ret void, !dbg !34
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_021_001_main() #0 !dbg !35 {
  %1 = call i32 (...) @rand() #3, !dbg !36
  %2 = trunc i32 %1 to i16, !dbg !36
  store volatile i16 %2, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !38, !tbaa !12
  %3 = call i32 (...) @rand() #3, !dbg !39
  %4 = trunc i32 %3 to i16, !dbg !39
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !40, !tbaa !12
  call void (...) @init() #3, !dbg !41
  %5 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !42, !tbaa !12
  %6 = icmp ugt i16 %5, 15, !dbg !44
  br i1 %6, label %7, label %svp_simple_021_001_RecvTcBlock.exit, !dbg !42

7:                                                ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !45, !tbaa !12
  br label %8, !dbg !46

8:                                                ; preds = %10, %7
  %.0.i = phi i32 [ 0, %7 ], [ %13, %10 ], !dbg !47
  %9 = icmp ult i32 %.0.i, 256, !dbg !48
  br i1 %9, label %10, label %svp_simple_021_001_RecvTcBlock.exit, !dbg !49

10:                                               ; preds = %8
  %11 = zext i32 %.0.i to i64, !dbg !50
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %11, !dbg !50
  store volatile i8 0, i8* %12, align 1, !dbg !51, !tbaa !30
  %13 = add nuw nsw i32 %.0.i, 1, !dbg !52
  br label %8, !dbg !49, !llvm.loop !32

svp_simple_021_001_RecvTcBlock.exit:              ; preds = %8, %0
  br label %14, !dbg !53

14:                                               ; preds = %22, %svp_simple_021_001_RecvTcBlock.exit
  %.0 = phi i32 [ 0, %svp_simple_021_001_RecvTcBlock.exit ], [ %30, %22 ], !dbg !54
  %15 = icmp ult i32 %.0, 2, !dbg !55
  br i1 %15, label %16, label %31, !dbg !56

16:                                               ; preds = %14
  %17 = icmp eq i32 %.0, 0, !dbg !57
  br i1 %17, label %18, label %20, !dbg !58

18:                                               ; preds = %16
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !59, !tbaa !60
  %19 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !62, !tbaa !12
  store volatile i16 %19, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !63, !tbaa !12
  br label %22, !dbg !64

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i64 0, i64 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !65, !tbaa !60
  %21 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !66, !tbaa !12
  store volatile i16 %21, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !67, !tbaa !12
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !68, !tbaa !60
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !69
  %25 = load volatile i8, i8* %24, align 1, !dbg !70, !tbaa !30
  %26 = getelementptr inbounds i8, i8* %23, i64 4, !dbg !71
  %27 = load volatile i8, i8* %26, align 1, !dbg !72, !tbaa !30
  %28 = getelementptr inbounds i8, i8* %23, i64 5, !dbg !73
  %29 = load volatile i8, i8* %28, align 1, !dbg !74, !tbaa !30
  %30 = add nuw nsw i32 %.0, 1, !dbg !75
  br label %14, !dbg !56, !llvm.loop !76

31:                                               ; preds = %14
  ret void, !dbg !78
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_021_001_isr_1() #0 !dbg !79 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 268435456, !dbg !80, !tbaa !81
  %2 = lshr i32 %1, 3, !dbg !83
  %3 = trunc i32 %2 to i16, !dbg !84
  %4 = and i16 %3, 8191, !dbg !84
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !85, !tbaa !12
  ret void, !dbg !86
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_021_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_021")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_021_001_init", scope: !8, file: !8, line: 33, type: !9, scopeLine: 33, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_021_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_021")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 34, column: 48, scope: !7)
!11 = !DILocation(line: 34, column: 46, scope: !7)
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 35, column: 48, scope: !7)
!17 = !DILocation(line: 35, column: 46, scope: !7)
!18 = !DILocation(line: 37, column: 3, scope: !7)
!19 = !DILocation(line: 38, column: 1, scope: !7)
!20 = distinct !DISubprogram(name: "svp_simple_021_001_RecvTcBlock", scope: !8, file: !8, line: 40, type: !9, scopeLine: 40, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 44, column: 7, scope: !20)
!22 = !DILocation(line: 44, column: 50, scope: !20)
!23 = !DILocation(line: 45, column: 48, scope: !20)
!24 = !DILocation(line: 47, column: 10, scope: !20)
!25 = !DILocation(line: 0, scope: !20)
!26 = !DILocation(line: 47, column: 19, scope: !20)
!27 = !DILocation(line: 47, column: 5, scope: !20)
!28 = !DILocation(line: 48, column: 7, scope: !20)
!29 = !DILocation(line: 48, column: 43, scope: !20)
!30 = !{!14, !14, i64 0}
!31 = !DILocation(line: 47, column: 27, scope: !20)
!32 = distinct !{!32, !27, !33}
!33 = !DILocation(line: 49, column: 5, scope: !20)
!34 = !DILocation(line: 52, column: 1, scope: !20)
!35 = distinct !DISubprogram(name: "svp_simple_021_001_main", scope: !8, file: !8, line: 54, type: !9, scopeLine: 54, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 34, column: 48, scope: !7, inlinedAt: !37)
!37 = distinct !DILocation(line: 57, column: 3, scope: !35)
!38 = !DILocation(line: 34, column: 46, scope: !7, inlinedAt: !37)
!39 = !DILocation(line: 35, column: 48, scope: !7, inlinedAt: !37)
!40 = !DILocation(line: 35, column: 46, scope: !7, inlinedAt: !37)
!41 = !DILocation(line: 37, column: 3, scope: !7, inlinedAt: !37)
!42 = !DILocation(line: 44, column: 7, scope: !20, inlinedAt: !43)
!43 = distinct !DILocation(line: 59, column: 3, scope: !35)
!44 = !DILocation(line: 44, column: 50, scope: !20, inlinedAt: !43)
!45 = !DILocation(line: 45, column: 48, scope: !20, inlinedAt: !43)
!46 = !DILocation(line: 47, column: 10, scope: !20, inlinedAt: !43)
!47 = !DILocation(line: 0, scope: !20, inlinedAt: !43)
!48 = !DILocation(line: 47, column: 19, scope: !20, inlinedAt: !43)
!49 = !DILocation(line: 47, column: 5, scope: !20, inlinedAt: !43)
!50 = !DILocation(line: 48, column: 7, scope: !20, inlinedAt: !43)
!51 = !DILocation(line: 48, column: 43, scope: !20, inlinedAt: !43)
!52 = !DILocation(line: 47, column: 27, scope: !20, inlinedAt: !43)
!53 = !DILocation(line: 61, column: 8, scope: !35)
!54 = !DILocation(line: 0, scope: !35)
!55 = !DILocation(line: 61, column: 25, scope: !35)
!56 = !DILocation(line: 61, column: 3, scope: !35)
!57 = !DILocation(line: 62, column: 15, scope: !35)
!58 = !DILocation(line: 62, column: 9, scope: !35)
!59 = !DILocation(line: 63, column: 36, scope: !35)
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !14, i64 0}
!62 = !DILocation(line: 65, column: 11, scope: !35)
!63 = !DILocation(line: 64, column: 46, scope: !35)
!64 = !DILocation(line: 66, column: 5, scope: !35)
!65 = !DILocation(line: 67, column: 36, scope: !35)
!66 = !DILocation(line: 69, column: 11, scope: !35)
!67 = !DILocation(line: 68, column: 46, scope: !35)
!68 = !DILocation(line: 72, column: 23, scope: !35)
!69 = !DILocation(line: 72, column: 52, scope: !35)
!70 = !DILocation(line: 72, column: 21, scope: !35)
!71 = !DILocation(line: 73, column: 50, scope: !35)
!72 = !DILocation(line: 73, column: 19, scope: !35)
!73 = !DILocation(line: 74, column: 57, scope: !35)
!74 = !DILocation(line: 74, column: 26, scope: !35)
!75 = !DILocation(line: 61, column: 35, scope: !35)
!76 = distinct !{!76, !56, !77}
!77 = !DILocation(line: 75, column: 3, scope: !35)
!78 = !DILocation(line: 76, column: 1, scope: !35)
!79 = distinct !DISubprogram(name: "svp_simple_021_001_isr_1", scope: !8, file: !8, line: 78, type: !9, scopeLine: 78, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!80 = !DILocation(line: 80, column: 8, scope: !79)
!81 = !{!82, !82, i64 0}
!82 = !{!"int", !14, i64 0}
!83 = !DILocation(line: 80, column: 34, scope: !79)
!84 = !DILocation(line: 80, column: 7, scope: !79)
!85 = !DILocation(line: 79, column: 46, scope: !79)
!86 = !DILocation(line: 81, column: 1, scope: !79)
