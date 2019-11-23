; ModuleID = 'svp_simple_031_001-opt.bc'
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
  br i1 true, label %5, label %7, !dbg !21

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i64 0, i64 0), i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !22, !tbaa !23
  %6 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !25, !tbaa !14
  store volatile i16 %6, i16* @svp_simple_031_001_tc_block_rcvd_bytes, align 2, !dbg !26, !tbaa !14
  br label %7, !dbg !27

7:                                                ; preds = %5, %0
  %8 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !28, !tbaa !23
  %9 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !29
  %10 = load volatile i8, i8* %9, align 1, !dbg !30, !tbaa !31
  %11 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !32
  %12 = load volatile i8, i8* %11, align 1, !dbg !33, !tbaa !31
  %13 = getelementptr inbounds i8, i8* %8, i64 5, !dbg !34
  %14 = load volatile i8, i8* %13, align 1, !dbg !35, !tbaa !31
  %15 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !36, !tbaa !14
  %16 = icmp ugt i16 %15, 15, !dbg !39
  br i1 %16, label %17, label %svp_simple_031_001_func_3.exit, !dbg !36

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @svp_simple_031_001_gloable_var1, align 4, !dbg !40, !tbaa !41
  %19 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !43, !tbaa !14
  %20 = zext i16 %19 to i32, !dbg !43
  %21 = icmp slt i32 %18, %20, !dbg !44
  br i1 %21, label %22, label %23, !dbg !47

22:                                               ; preds = %17
  br label %svp_simple_031_001_func_1.exit.i, !dbg !48

23:                                               ; preds = %17
  %24 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !49, !tbaa !14
  br label %svp_simple_031_001_func_1.exit.i

svp_simple_031_001_func_1.exit.i:                 ; preds = %23, %22
  br label %svp_simple_031_001_func_3.exit, !dbg !52

svp_simple_031_001_func_3.exit:                   ; preds = %svp_simple_031_001_func_1.exit.i, %7
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @svp_simple_031_001_func_1(i32, i32) #0 !dbg !45 {
  %3 = icmp slt i32 %0, %1, !dbg !54
  br i1 %3, label %4, label %6, !dbg !55

4:                                                ; preds = %2
  %5 = mul nsw i32 %1, %0, !dbg !56
  br label %9, !dbg !57

6:                                                ; preds = %2
  %7 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !58, !tbaa !14
  %8 = icmp eq i16 %7, 0, !dbg !60
  %..i = select i1 %8, i32 0, i32 10, !dbg !61
  br label %9

9:                                                ; preds = %6, %4
  %.0 = phi i32 [ %5, %4 ], [ %..i, %6 ], !dbg !62
  ret i32 %.0, !dbg !63
}

; Function Attrs: nounwind uwtable
define dso_local i32 @svp_simple_031_001_func_2(i32) #0 !dbg !50 {
  %2 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !64, !tbaa !14
  %3 = icmp eq i16 %2, 0, !dbg !65
  %. = select i1 %3, i32 0, i32 %0, !dbg !66
  ret i32 %., !dbg !67
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_init() #0 !dbg !11 {
  %1 = call i32 (...) @rand() #3, !dbg !68
  %2 = trunc i32 %1 to i16, !dbg !68
  store volatile i16 %2, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !69, !tbaa !14
  %3 = call i32 (...) @rand() #3, !dbg !70
  %4 = trunc i32 %3 to i16, !dbg !70
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !71, !tbaa !14
  call void (...) @init() #3, !dbg !72
  ret void, !dbg !73
}

declare dso_local i32 @rand(...) #2

declare dso_local void @init(...) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_func_3() #0 !dbg !37 {
  %1 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !74, !tbaa !14
  %2 = icmp ugt i16 %1, 15, !dbg !75
  br i1 %2, label %3, label %11, !dbg !74

3:                                                ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_031_001_gloable_var1, align 4, !dbg !76, !tbaa !41
  %5 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !77, !tbaa !14
  %6 = zext i16 %5 to i32, !dbg !77
  %7 = icmp slt i32 %4, %6, !dbg !78
  br i1 %7, label %8, label %9, !dbg !80

8:                                                ; preds = %3
  br label %svp_simple_031_001_func_1.exit, !dbg !81

9:                                                ; preds = %3
  %10 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !82, !tbaa !14
  br label %svp_simple_031_001_func_1.exit

svp_simple_031_001_func_1.exit:                   ; preds = %9, %8
  br label %11, !dbg !84

11:                                               ; preds = %svp_simple_031_001_func_1.exit, %0
  ret void, !dbg !85
}

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_031_001_isr_1() #0 !dbg !86 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 268435456, !dbg !87, !tbaa !41
  %2 = lshr i32 %1, 3, !dbg !88
  %3 = trunc i32 %2 to i16, !dbg !89
  %4 = and i16 %3, 8191, !dbg !89
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !90, !tbaa !14
  ret void, !dbg !91
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_031_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_031")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_031_001_main", scope: !8, file: !8, line: 38, type: !9, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_031_001.c", directory: "/home/jack-zhou/Documents/llvm-exp/nasac2019-race-detection-competition/DRace1/test/svp_simple_031")
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
!21 = !DILocation(line: 43, column: 7, scope: !7)
!22 = !DILocation(line: 44, column: 34, scope: !7)
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !16, i64 0}
!25 = !DILocation(line: 46, column: 9, scope: !7)
!26 = !DILocation(line: 45, column: 44, scope: !7)
!27 = !DILocation(line: 47, column: 3, scope: !7)
!28 = !DILocation(line: 49, column: 21, scope: !7)
!29 = !DILocation(line: 49, column: 50, scope: !7)
!30 = !DILocation(line: 49, column: 19, scope: !7)
!31 = !{!16, !16, i64 0}
!32 = !DILocation(line: 50, column: 48, scope: !7)
!33 = !DILocation(line: 50, column: 17, scope: !7)
!34 = !DILocation(line: 51, column: 55, scope: !7)
!35 = !DILocation(line: 51, column: 24, scope: !7)
!36 = !DILocation(line: 83, column: 7, scope: !37, inlinedAt: !38)
!37 = distinct !DISubprogram(name: "svp_simple_031_001_func_3", scope: !8, file: !8, line: 79, type: !9, scopeLine: 79, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = distinct !DILocation(line: 52, column: 3, scope: !7)
!39 = !DILocation(line: 83, column: 50, scope: !37, inlinedAt: !38)
!40 = !DILocation(line: 84, column: 31, scope: !37, inlinedAt: !38)
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !16, i64 0}
!43 = !DILocation(line: 85, column: 27, scope: !37, inlinedAt: !38)
!44 = !DILocation(line: 57, column: 9, scope: !45, inlinedAt: !46)
!45 = distinct !DISubprogram(name: "svp_simple_031_001_func_1", scope: !8, file: !8, line: 55, type: !9, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = distinct !DILocation(line: 84, column: 5, scope: !37, inlinedAt: !38)
!47 = !DILocation(line: 57, column: 7, scope: !45, inlinedAt: !46)
!48 = !DILocation(line: 59, column: 3, scope: !45, inlinedAt: !46)
!49 = !DILocation(line: 65, column: 7, scope: !50, inlinedAt: !51)
!50 = distinct !DISubprogram(name: "svp_simple_031_001_func_2", scope: !8, file: !8, line: 64, type: !9, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!51 = distinct !DILocation(line: 60, column: 9, scope: !45, inlinedAt: !46)
!52 = !DILocation(line: 86, column: 3, scope: !37, inlinedAt: !38)
!53 = !DILocation(line: 53, column: 1, scope: !7)
!54 = !DILocation(line: 57, column: 9, scope: !45)
!55 = !DILocation(line: 57, column: 7, scope: !45)
!56 = !DILocation(line: 58, column: 11, scope: !45)
!57 = !DILocation(line: 59, column: 3, scope: !45)
!58 = !DILocation(line: 65, column: 7, scope: !50, inlinedAt: !59)
!59 = distinct !DILocation(line: 60, column: 9, scope: !45)
!60 = !DILocation(line: 65, column: 50, scope: !50, inlinedAt: !59)
!61 = !DILocation(line: 0, scope: !50, inlinedAt: !59)
!62 = !DILocation(line: 0, scope: !45)
!63 = !DILocation(line: 62, column: 3, scope: !45)
!64 = !DILocation(line: 65, column: 7, scope: !50)
!65 = !DILocation(line: 65, column: 50, scope: !50)
!66 = !DILocation(line: 0, scope: !50)
!67 = !DILocation(line: 70, column: 1, scope: !50)
!68 = !DILocation(line: 73, column: 48, scope: !11)
!69 = !DILocation(line: 73, column: 46, scope: !11)
!70 = !DILocation(line: 74, column: 48, scope: !11)
!71 = !DILocation(line: 74, column: 46, scope: !11)
!72 = !DILocation(line: 76, column: 3, scope: !11)
!73 = !DILocation(line: 77, column: 1, scope: !11)
!74 = !DILocation(line: 83, column: 7, scope: !37)
!75 = !DILocation(line: 83, column: 50, scope: !37)
!76 = !DILocation(line: 84, column: 31, scope: !37)
!77 = !DILocation(line: 85, column: 27, scope: !37)
!78 = !DILocation(line: 57, column: 9, scope: !45, inlinedAt: !79)
!79 = distinct !DILocation(line: 84, column: 5, scope: !37)
!80 = !DILocation(line: 57, column: 7, scope: !45, inlinedAt: !79)
!81 = !DILocation(line: 59, column: 3, scope: !45, inlinedAt: !79)
!82 = !DILocation(line: 65, column: 7, scope: !50, inlinedAt: !83)
!83 = distinct !DILocation(line: 60, column: 9, scope: !45, inlinedAt: !79)
!84 = !DILocation(line: 86, column: 3, scope: !37)
!85 = !DILocation(line: 87, column: 1, scope: !37)
!86 = distinct !DISubprogram(name: "svp_simple_031_001_isr_1", scope: !8, file: !8, line: 89, type: !9, scopeLine: 89, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!87 = !DILocation(line: 91, column: 8, scope: !86)
!88 = !DILocation(line: 91, column: 34, scope: !86)
!89 = !DILocation(line: 91, column: 7, scope: !86)
!90 = !DILocation(line: 90, column: 46, scope: !86)
!91 = !DILocation(line: 92, column: 1, scope: !86)
