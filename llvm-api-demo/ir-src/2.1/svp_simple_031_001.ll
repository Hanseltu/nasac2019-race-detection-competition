; ModuleID = 'svp_simple_031_001.c'
source_filename = "svp_simple_031_001.c"
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_031_001_main() #0 !dbg !8 {
  %1 = alloca %struct.svp_simple_031_001_tc_block_data, align 1
  %2 = alloca i32, align 4
  call void @svp_simple_031_001_init(), !dbg !10
  store i32 0, i32* %2, align 4, !dbg !11
  %3 = load i32, i32* %2, align 4, !dbg !12
  %4 = icmp eq i32 %3, 0, !dbg !13
  br i1 %4, label %5, label %7, !dbg !12

; <label>:5:                                      ; preds = %0
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @svp_simple_031_001_tc_chan1_buff, i32 0, i32 0), i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !14
  %6 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !15
  store volatile i16 %6, i16* @svp_simple_031_001_tc_block_rcvd_bytes, align 2, !dbg !16
  br label %7, !dbg !17

; <label>:7:                                      ; preds = %5, %0
  %8 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !18
  %9 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !19
  %10 = load volatile i8, i8* %9, align 1, !dbg !20
  %11 = getelementptr inbounds %struct.svp_simple_031_001_tc_block_data, %struct.svp_simple_031_001_tc_block_data* %1, i32 0, i32 0, !dbg !21
  store i8 %10, i8* %11, align 1, !dbg !22
  %12 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !23
  %13 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !24
  %14 = load volatile i8, i8* %13, align 1, !dbg !25
  %15 = getelementptr inbounds %struct.svp_simple_031_001_tc_block_data, %struct.svp_simple_031_001_tc_block_data* %1, i32 0, i32 1, !dbg !26
  store i8 %14, i8* %15, align 1, !dbg !27
  %16 = load i8*, i8** @svp_simple_031_001_tc_buff_p, align 8, !dbg !28
  %17 = getelementptr inbounds i8, i8* %16, i64 5, !dbg !29
  %18 = load volatile i8, i8* %17, align 1, !dbg !30
  %19 = getelementptr inbounds %struct.svp_simple_031_001_tc_block_data, %struct.svp_simple_031_001_tc_block_data* %1, i32 0, i32 2, !dbg !31
  store i8 %18, i8* %19, align 1, !dbg !32
  call void @svp_simple_031_001_func_3(), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @svp_simple_031_001_func_1(i32, i32) #0 !dbg !35 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4, !dbg !36
  %7 = load i32, i32* %4, align 4, !dbg !37
  %8 = icmp slt i32 %6, %7, !dbg !38
  br i1 %8, label %9, label %13, !dbg !36

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4, !dbg !39
  %11 = load i32, i32* %4, align 4, !dbg !40
  %12 = mul nsw i32 %10, %11, !dbg !41
  store i32 %12, i32* %5, align 4, !dbg !42
  br label %15, !dbg !43

; <label>:13:                                     ; preds = %2
  %14 = call i32 @svp_simple_031_001_func_2(i32 10), !dbg !44
  store i32 %14, i32* %5, align 4, !dbg !45
  br label %15

; <label>:15:                                     ; preds = %13, %9
  %16 = load i32, i32* %5, align 4, !dbg !46
  ret i32 %16, !dbg !47
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @svp_simple_031_001_func_2(i32) #0 !dbg !48 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !49
  %5 = zext i16 %4 to i32, !dbg !49
  %6 = icmp sgt i32 %5, 0, !dbg !50
  br i1 %6, label %7, label %9, !dbg !49

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4, !dbg !51
  store i32 %8, i32* %2, align 4, !dbg !52
  br label %10, !dbg !52

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !53
  br label %10, !dbg !53

; <label>:10:                                     ; preds = %9, %7
  %11 = load i32, i32* %2, align 4, !dbg !54
  ret i32 %11, !dbg !54
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_031_001_init() #0 !dbg !55 {
  %1 = call i32 (...) @rand(), !dbg !56
  %2 = trunc i32 %1 to i16, !dbg !56
  store volatile i16 %2, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !57
  %3 = call i32 (...) @rand(), !dbg !58
  %4 = trunc i32 %3 to i16, !dbg !58
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch2, align 2, !dbg !59
  call void (...) @init(), !dbg !60
  ret void, !dbg !61
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_031_001_func_3() #0 !dbg !62 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4, !dbg !63
  %2 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !64
  %3 = zext i16 %2 to i32, !dbg !64
  %4 = icmp sge i32 %3, 16, !dbg !65
  br i1 %4, label %5, label %10, !dbg !64

; <label>:5:                                      ; preds = %0
  %6 = load volatile i32, i32* @svp_simple_031_001_gloable_var1, align 4, !dbg !66
  %7 = load volatile i16, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !67
  %8 = zext i16 %7 to i32, !dbg !67
  %9 = call i32 @svp_simple_031_001_func_1(i32 %6, i32 %8), !dbg !68
  br label %10, !dbg !69

; <label>:10:                                     ; preds = %5, %0
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_031_001_isr_1() #0 !dbg !71 {
  %1 = load volatile i32, i32* inttoptr (i64 268435456 to i32*), align 4, !dbg !72
  %2 = lshr i32 %1, 3, !dbg !73
  %3 = and i32 %2, 8191, !dbg !74
  %4 = trunc i32 %3 to i16, !dbg !75
  store volatile i16 %4, i16* @svp_simple_031_001_tc_block_rcvd_bytes_ch1, align 2, !dbg !76
  ret void, !dbg !77
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_031_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_031")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_031_001_main", scope: !1, file: !1, line: 38, type: !9, isLocal: false, isDefinition: true, scopeLine: 38, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 39, column: 3, scope: !8)
!11 = !DILocation(line: 42, column: 7, scope: !8)
!12 = !DILocation(line: 43, column: 7, scope: !8)
!13 = !DILocation(line: 43, column: 13, scope: !8)
!14 = !DILocation(line: 44, column: 34, scope: !8)
!15 = !DILocation(line: 46, column: 9, scope: !8)
!16 = !DILocation(line: 45, column: 44, scope: !8)
!17 = !DILocation(line: 47, column: 3, scope: !8)
!18 = !DILocation(line: 49, column: 21, scope: !8)
!19 = !DILocation(line: 49, column: 50, scope: !8)
!20 = !DILocation(line: 49, column: 19, scope: !8)
!21 = !DILocation(line: 49, column: 12, scope: !8)
!22 = !DILocation(line: 49, column: 17, scope: !8)
!23 = !DILocation(line: 50, column: 19, scope: !8)
!24 = !DILocation(line: 50, column: 48, scope: !8)
!25 = !DILocation(line: 50, column: 17, scope: !8)
!26 = !DILocation(line: 50, column: 12, scope: !8)
!27 = !DILocation(line: 50, column: 15, scope: !8)
!28 = !DILocation(line: 51, column: 26, scope: !8)
!29 = !DILocation(line: 51, column: 55, scope: !8)
!30 = !DILocation(line: 51, column: 24, scope: !8)
!31 = !DILocation(line: 51, column: 12, scope: !8)
!32 = !DILocation(line: 51, column: 22, scope: !8)
!33 = !DILocation(line: 52, column: 3, scope: !8)
!34 = !DILocation(line: 53, column: 1, scope: !8)
!35 = distinct !DISubprogram(name: "svp_simple_031_001_func_1", scope: !1, file: !1, line: 55, type: !9, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 57, column: 7, scope: !35)
!37 = !DILocation(line: 57, column: 11, scope: !35)
!38 = !DILocation(line: 57, column: 9, scope: !35)
!39 = !DILocation(line: 58, column: 9, scope: !35)
!40 = !DILocation(line: 58, column: 13, scope: !35)
!41 = !DILocation(line: 58, column: 11, scope: !35)
!42 = !DILocation(line: 58, column: 7, scope: !35)
!43 = !DILocation(line: 59, column: 3, scope: !35)
!44 = !DILocation(line: 60, column: 9, scope: !35)
!45 = !DILocation(line: 60, column: 7, scope: !35)
!46 = !DILocation(line: 62, column: 10, scope: !35)
!47 = !DILocation(line: 62, column: 3, scope: !35)
!48 = distinct !DISubprogram(name: "svp_simple_031_001_func_2", scope: !1, file: !1, line: 64, type: !9, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!49 = !DILocation(line: 65, column: 7, scope: !48)
!50 = !DILocation(line: 65, column: 50, scope: !48)
!51 = !DILocation(line: 66, column: 12, scope: !48)
!52 = !DILocation(line: 66, column: 5, scope: !48)
!53 = !DILocation(line: 68, column: 5, scope: !48)
!54 = !DILocation(line: 70, column: 1, scope: !48)
!55 = distinct !DISubprogram(name: "svp_simple_031_001_init", scope: !1, file: !1, line: 72, type: !9, isLocal: false, isDefinition: true, scopeLine: 72, isOptimized: false, unit: !0, retainedNodes: !2)
!56 = !DILocation(line: 73, column: 48, scope: !55)
!57 = !DILocation(line: 73, column: 46, scope: !55)
!58 = !DILocation(line: 74, column: 48, scope: !55)
!59 = !DILocation(line: 74, column: 46, scope: !55)
!60 = !DILocation(line: 76, column: 3, scope: !55)
!61 = !DILocation(line: 77, column: 1, scope: !55)
!62 = distinct !DISubprogram(name: "svp_simple_031_001_func_3", scope: !1, file: !1, line: 79, type: !9, isLocal: false, isDefinition: true, scopeLine: 79, isOptimized: false, unit: !0, retainedNodes: !2)
!63 = !DILocation(line: 81, column: 33, scope: !62)
!64 = !DILocation(line: 83, column: 7, scope: !62)
!65 = !DILocation(line: 83, column: 50, scope: !62)
!66 = !DILocation(line: 84, column: 31, scope: !62)
!67 = !DILocation(line: 85, column: 27, scope: !62)
!68 = !DILocation(line: 84, column: 5, scope: !62)
!69 = !DILocation(line: 86, column: 3, scope: !62)
!70 = !DILocation(line: 87, column: 1, scope: !62)
!71 = distinct !DISubprogram(name: "svp_simple_031_001_isr_1", scope: !1, file: !1, line: 89, type: !9, isLocal: false, isDefinition: true, scopeLine: 89, isOptimized: false, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 91, column: 8, scope: !71)
!73 = !DILocation(line: 91, column: 34, scope: !71)
!74 = !DILocation(line: 91, column: 40, scope: !71)
!75 = !DILocation(line: 91, column: 7, scope: !71)
!76 = !DILocation(line: 90, column: 46, scope: !71)
!77 = !DILocation(line: 92, column: 1, scope: !71)
