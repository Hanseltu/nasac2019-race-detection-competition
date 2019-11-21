; ModuleID = 'svp_simple_021_001.c'
source_filename = "svp_simple_021_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.svp_simple_021_001_tc_block_data = type { i8, i8, i8 }

@svp_simple_021_001_tc_block_rcvd_bytes_ch1 = common global i16 0, align 2
@svp_simple_021_001_tc_block_rcvd_bytes_ch2 = common global i16 0, align 2
@svp_simple_021_001_tc_chan1_buff = common global [256 x i8] zeroinitializer, align 16
@svp_simple_021_001_tc_buff_p = common global i8* null, align 8
@svp_simple_021_001_tc_block_rcvd_bytes = common global i16 0, align 2
@svp_simple_021_001_tc_chan2_buff = common global [256 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_021_001_init() #0 !dbg !8 {
  %1 = call i32 (...) @rand(), !dbg !10
  %2 = trunc i32 %1 to i16, !dbg !10
  store volatile i16 %2, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !11
  %3 = call i32 (...) @rand(), !dbg !12
  %4 = trunc i32 %3 to i16, !dbg !12
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !13
  call void (...) @init(), !dbg !14
  ret void, !dbg !15
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_021_001_RecvTcBlock() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4, !dbg !17
  %3 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !18
  %4 = zext i16 %3 to i32, !dbg !18
  %5 = icmp sge i32 %4, 16, !dbg !19
  br i1 %5, label %6, label %18, !dbg !18

; <label>:6:                                      ; preds = %0
  store volatile i16 0, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !20
  store i32 0, i32* %2, align 4, !dbg !21
  br label %7, !dbg !22

; <label>:7:                                      ; preds = %14, %6
  %8 = load i32, i32* %2, align 4, !dbg !23
  %9 = icmp slt i32 %8, 256, !dbg !24
  br i1 %9, label %10, label %17, !dbg !25

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %2, align 4, !dbg !26
  %12 = sext i32 %11 to i64, !dbg !27
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i64 0, i64 %12, !dbg !27
  store volatile i8 0, i8* %13, align 1, !dbg !28
  br label %14, !dbg !29

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %2, align 4, !dbg !30
  %16 = add nsw i32 %15, 1, !dbg !30
  store i32 %16, i32* %2, align 4, !dbg !30
  br label %7, !dbg !25, !llvm.loop !31

; <label>:17:                                     ; preds = %7
  store i32 255, i32* %1, align 4, !dbg !32
  br label %18, !dbg !33

; <label>:18:                                     ; preds = %17, %0
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_021_001_main() #0 !dbg !35 {
  %1 = alloca %struct.svp_simple_021_001_tc_block_data, align 1
  %2 = alloca i32, align 4
  call void @svp_simple_021_001_init(), !dbg !36
  call void @svp_simple_021_001_RecvTcBlock(), !dbg !37
  store i32 0, i32* %2, align 4, !dbg !38
  br label %3, !dbg !39

; <label>:3:                                      ; preds = %26, %0
  %4 = load i32, i32* %2, align 4, !dbg !40
  %5 = icmp slt i32 %4, 2, !dbg !41
  br i1 %5, label %6, label %29, !dbg !42

; <label>:6:                                      ; preds = %3
  %7 = load i32, i32* %2, align 4, !dbg !43
  %8 = icmp eq i32 %7, 0, !dbg !44
  br i1 %8, label %9, label %11, !dbg !43

; <label>:9:                                      ; preds = %6
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan1_buff, i32 0, i32 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !45
  %10 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !46
  store volatile i16 %10, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !47
  br label %13, !dbg !48

; <label>:11:                                     ; preds = %6
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_021_001_tc_chan2_buff, i32 0, i32 0), i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !49
  %12 = load volatile i16, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !50
  store volatile i16 %12, i16* @svp_simple_021_001_tc_block_rcvd_bytes, align 2, !dbg !51
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !52
  %15 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !53
  %16 = load volatile i8, i8* %15, align 1, !dbg !54
  %17 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 0, !dbg !55
  store i8 %16, i8* %17, align 1, !dbg !56
  %18 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !57
  %19 = getelementptr inbounds i8, i8* %18, i64 4, !dbg !58
  %20 = load volatile i8, i8* %19, align 1, !dbg !59
  %21 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 1, !dbg !60
  store i8 %20, i8* %21, align 1, !dbg !61
  %22 = load i8*, i8** @svp_simple_021_001_tc_buff_p, align 8, !dbg !62
  %23 = getelementptr inbounds i8, i8* %22, i64 5, !dbg !63
  %24 = load volatile i8, i8* %23, align 1, !dbg !64
  %25 = getelementptr inbounds %struct.svp_simple_021_001_tc_block_data, %struct.svp_simple_021_001_tc_block_data* %1, i32 0, i32 2, !dbg !65
  store i8 %24, i8* %25, align 1, !dbg !66
  br label %26, !dbg !67

; <label>:26:                                     ; preds = %13
  %27 = load i32, i32* %2, align 4, !dbg !68
  %28 = add nsw i32 %27, 1, !dbg !68
  store i32 %28, i32* %2, align 4, !dbg !68
  br label %3, !dbg !42, !llvm.loop !69

; <label>:29:                                     ; preds = %3
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_021_001_isr_1() #0 !dbg !71 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 4, !dbg !72
  %2 = lshr i32 %1, 3, !dbg !73
  %3 = and i32 %2, 8191, !dbg !74
  %4 = trunc i32 %3 to i16, !dbg !75
  store volatile i16 %4, i16* @svp_simple_021_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !76
  ret void, !dbg !77
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_021_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_021")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_021_001_init", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 34, column: 48, scope: !8)
!11 = !DILocation(line: 34, column: 46, scope: !8)
!12 = !DILocation(line: 35, column: 48, scope: !8)
!13 = !DILocation(line: 35, column: 46, scope: !8)
!14 = !DILocation(line: 37, column: 3, scope: !8)
!15 = !DILocation(line: 38, column: 1, scope: !8)
!16 = distinct !DISubprogram(name: "svp_simple_021_001_RecvTcBlock", scope: !1, file: !1, line: 40, type: !9, isLocal: false, isDefinition: true, scopeLine: 40, isOptimized: false, unit: !0, retainedNodes: !2)
!17 = !DILocation(line: 42, column: 33, scope: !16)
!18 = !DILocation(line: 44, column: 7, scope: !16)
!19 = !DILocation(line: 44, column: 50, scope: !16)
!20 = !DILocation(line: 45, column: 48, scope: !16)
!21 = !DILocation(line: 47, column: 12, scope: !16)
!22 = !DILocation(line: 47, column: 10, scope: !16)
!23 = !DILocation(line: 47, column: 17, scope: !16)
!24 = !DILocation(line: 47, column: 19, scope: !16)
!25 = !DILocation(line: 47, column: 5, scope: !16)
!26 = !DILocation(line: 48, column: 40, scope: !16)
!27 = !DILocation(line: 48, column: 7, scope: !16)
!28 = !DILocation(line: 48, column: 43, scope: !16)
!29 = !DILocation(line: 49, column: 5, scope: !16)
!30 = !DILocation(line: 47, column: 27, scope: !16)
!31 = distinct !{!31, !25, !29}
!32 = !DILocation(line: 50, column: 35, scope: !16)
!33 = !DILocation(line: 51, column: 3, scope: !16)
!34 = !DILocation(line: 52, column: 1, scope: !16)
!35 = distinct !DISubprogram(name: "svp_simple_021_001_main", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, isOptimized: false, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 57, column: 3, scope: !35)
!37 = !DILocation(line: 59, column: 3, scope: !35)
!38 = !DILocation(line: 61, column: 14, scope: !35)
!39 = !DILocation(line: 61, column: 8, scope: !35)
!40 = !DILocation(line: 61, column: 19, scope: !35)
!41 = !DILocation(line: 61, column: 25, scope: !35)
!42 = !DILocation(line: 61, column: 3, scope: !35)
!43 = !DILocation(line: 62, column: 9, scope: !35)
!44 = !DILocation(line: 62, column: 15, scope: !35)
!45 = !DILocation(line: 63, column: 36, scope: !35)
!46 = !DILocation(line: 65, column: 11, scope: !35)
!47 = !DILocation(line: 64, column: 46, scope: !35)
!48 = !DILocation(line: 66, column: 5, scope: !35)
!49 = !DILocation(line: 67, column: 36, scope: !35)
!50 = !DILocation(line: 69, column: 11, scope: !35)
!51 = !DILocation(line: 68, column: 46, scope: !35)
!52 = !DILocation(line: 72, column: 23, scope: !35)
!53 = !DILocation(line: 72, column: 52, scope: !35)
!54 = !DILocation(line: 72, column: 21, scope: !35)
!55 = !DILocation(line: 72, column: 14, scope: !35)
!56 = !DILocation(line: 72, column: 19, scope: !35)
!57 = !DILocation(line: 73, column: 21, scope: !35)
!58 = !DILocation(line: 73, column: 50, scope: !35)
!59 = !DILocation(line: 73, column: 19, scope: !35)
!60 = !DILocation(line: 73, column: 14, scope: !35)
!61 = !DILocation(line: 73, column: 17, scope: !35)
!62 = !DILocation(line: 74, column: 28, scope: !35)
!63 = !DILocation(line: 74, column: 57, scope: !35)
!64 = !DILocation(line: 74, column: 26, scope: !35)
!65 = !DILocation(line: 74, column: 14, scope: !35)
!66 = !DILocation(line: 74, column: 24, scope: !35)
!67 = !DILocation(line: 75, column: 3, scope: !35)
!68 = !DILocation(line: 61, column: 35, scope: !35)
!69 = distinct !{!69, !42, !67}
!70 = !DILocation(line: 76, column: 1, scope: !35)
!71 = distinct !DISubprogram(name: "svp_simple_021_001_isr_1", scope: !1, file: !1, line: 78, type: !9, isLocal: false, isDefinition: true, scopeLine: 78, isOptimized: false, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 80, column: 8, scope: !71)
!73 = !DILocation(line: 80, column: 34, scope: !71)
!74 = !DILocation(line: 80, column: 40, scope: !71)
!75 = !DILocation(line: 80, column: 7, scope: !71)
!76 = !DILocation(line: 79, column: 46, scope: !71)
!77 = !DILocation(line: 81, column: 1, scope: !71)
