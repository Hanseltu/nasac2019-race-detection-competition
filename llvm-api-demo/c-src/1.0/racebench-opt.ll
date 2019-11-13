; ModuleID = 'racebench.c'
source_filename = "racebench.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [40 x i8] c"Data Race Benchmark Program Starting...\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\0A\0DTask1 running....\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\0D\0ATask2 running....\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\0D\0ATask3 running....\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\0D\0ATask4 running....\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\0D\0ATask5 running....\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"\0D\0AEntering <ISR1>....\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\0D\0ALeaving <ISR1>....\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0D\0AEntering <ISR2>....\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"\0D\0ALeaving <ISR2>....\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\0D\0AEntering <ISR3>....\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\0D\0ALeaving <ISR3>....\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\0D\0AEntering <ISR4>....\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0D\0ALeaving <ISR4>....\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @racebench_entry() local_unnamed_addr #0 !dbg !8 {
  %1 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #4, !dbg !10
  ret void, !dbg !11
}

declare i32 @print2(...) local_unnamed_addr #1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define void @Default_int() local_unnamed_addr #2 !dbg !12 {
  ret void, !dbg !13
}

; Function Attrs: noreturn nounwind ssp uwtable
define void @bench_task1() local_unnamed_addr #3 !dbg !14 {
  br label %1, !dbg !15

; <label>:1:                                      ; preds = %0, %1
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !16
  tail call void (...) @case1_main() #4, !dbg !17
  tail call void (...) @idlerun() #4, !dbg !18
  tail call void (...) @case2_main() #4, !dbg !19
  tail call void (...) @idlerun() #4, !dbg !20
  tail call void (...) @case14_task1() #4, !dbg !21
  br label %1, !dbg !15, !llvm.loop !22
}

declare void @case1_main(...) local_unnamed_addr #1

declare void @idlerun(...) local_unnamed_addr #1

declare void @case2_main(...) local_unnamed_addr #1

declare void @case14_task1(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind ssp uwtable
define void @bench_task2() local_unnamed_addr #3 !dbg !24 {
  br label %1, !dbg !25

; <label>:1:                                      ; preds = %0, %1
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !26
  tail call void (...) @case3_main() #4, !dbg !27
  tail call void (...) @idlerun() #4, !dbg !28
  tail call void (...) @case4_main() #4, !dbg !29
  br label %1, !dbg !25, !llvm.loop !30
}

declare void @case3_main(...) local_unnamed_addr #1

declare void @case4_main(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind ssp uwtable
define void @bench_task3() local_unnamed_addr #3 !dbg !32 {
  br label %1, !dbg !33

; <label>:1:                                      ; preds = %0, %1
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #4, !dbg !34
  tail call void (...) @case5_main() #4, !dbg !35
  tail call void (...) @case6_main() #4, !dbg !36
  tail call void (...) @idlerun() #4, !dbg !37
  tail call void (...) @case14_task2() #4, !dbg !38
  br label %1, !dbg !33, !llvm.loop !39
}

declare void @case5_main(...) local_unnamed_addr #1

declare void @case6_main(...) local_unnamed_addr #1

declare void @case14_task2(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind ssp uwtable
define void @bench_task4() local_unnamed_addr #3 !dbg !41 {
  br label %1, !dbg !42

; <label>:1:                                      ; preds = %0, %1
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !43
  tail call void (...) @case7_main() #4, !dbg !44
  tail call void (...) @idlerun() #4, !dbg !45
  tail call void (...) @case9_main() #4, !dbg !46
  br label %1, !dbg !42, !llvm.loop !47
}

declare void @case7_main(...) local_unnamed_addr #1

declare void @case9_main(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind ssp uwtable
define void @bench_task5() local_unnamed_addr #3 !dbg !49 {
  br label %1, !dbg !50

; <label>:1:                                      ; preds = %0, %1
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !51
  tail call void (...) @case10_main() #4, !dbg !52
  tail call void (...) @idlerun() #4, !dbg !53
  tail call void (...) @case13_main() #4, !dbg !54
  br label %1, !dbg !50, !llvm.loop !55
}

declare void @case10_main(...) local_unnamed_addr #1

declare void @case13_main(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @bench_isr1() local_unnamed_addr #0 !dbg !57 {
  %1 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !58
  tail call void (...) @case1_isr() #4, !dbg !59
  tail call void (...) @case4_isr() #4, !dbg !60
  tail call void (...) @case8_isr_low() #4, !dbg !61
  tail call void (...) @case12_isr_low() #4, !dbg !62
  tail call void (...) @case14_isr_low() #4, !dbg !63
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0)) #4, !dbg !64
  ret void, !dbg !65
}

declare void @case1_isr(...) local_unnamed_addr #1

declare void @case4_isr(...) local_unnamed_addr #1

declare void @case8_isr_low(...) local_unnamed_addr #1

declare void @case12_isr_low(...) local_unnamed_addr #1

declare void @case14_isr_low(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @bench_isr2() local_unnamed_addr #0 !dbg !66 {
  %1 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0)) #4, !dbg !67
  tail call void (...) @case2_isr() #4, !dbg !68
  tail call void (...) @case5_isr() #4, !dbg !69
  tail call void (...) @case9_isr_low() #4, !dbg !70
  tail call void (...) @case11_isr_low() #4, !dbg !71
  tail call void (...) @case13_isr_low() #4, !dbg !72
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)) #4, !dbg !73
  ret void, !dbg !74
}

declare void @case2_isr(...) local_unnamed_addr #1

declare void @case5_isr(...) local_unnamed_addr #1

declare void @case9_isr_low(...) local_unnamed_addr #1

declare void @case11_isr_low(...) local_unnamed_addr #1

declare void @case13_isr_low(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @bench_isr3() local_unnamed_addr #0 !dbg !75 {
  %1 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0)) #4, !dbg !76
  tail call void (...) @case3_isr() #4, !dbg !77
  tail call void (...) @case6_isr() #4, !dbg !78
  tail call void (...) @case8_isr_high() #4, !dbg !79
  tail call void (...) @case11_isr_high() #4, !dbg !80
  tail call void (...) @case13_isr_high() #4, !dbg !81
  tail call void (...) @case14_isr_high() #4, !dbg !82
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0)) #4, !dbg !83
  ret void, !dbg !84
}

declare void @case3_isr(...) local_unnamed_addr #1

declare void @case6_isr(...) local_unnamed_addr #1

declare void @case8_isr_high(...) local_unnamed_addr #1

declare void @case11_isr_high(...) local_unnamed_addr #1

declare void @case13_isr_high(...) local_unnamed_addr #1

declare void @case14_isr_high(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @bench_isr4() local_unnamed_addr #0 !dbg !85 {
  %1 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0)) #4, !dbg !86
  tail call void (...) @case7_isr() #4, !dbg !87
  tail call void (...) @case9_isr_high() #4, !dbg !88
  tail call void (...) @case10_isr() #4, !dbg !89
  tail call void (...) @case12_isr_high() #4, !dbg !90
  %2 = tail call i32 (i8*, ...) bitcast (i32 (...)* @print2 to i32 (i8*, ...)*)(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0)) #4, !dbg !91
  ret void, !dbg !92
}

declare void @case7_isr(...) local_unnamed_addr #1

declare void @case9_isr_high(...) local_unnamed_addr #1

declare void @case10_isr(...) local_unnamed_addr #1

declare void @case12_isr_high(...) local_unnamed_addr #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "racebench.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "racebench_entry", scope: !1, file: !1, line: 10, type: !9, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 11, column: 2, scope: !8)
!11 = !DILocation(line: 18, column: 1, scope: !8)
!12 = distinct !DISubprogram(name: "Default_int", scope: !1, file: !1, line: 20, type: !9, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 25, column: 1, scope: !12)
!14 = distinct !DISubprogram(name: "bench_task1", scope: !1, file: !1, line: 37, type: !9, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 39, column: 2, scope: !14)
!16 = !DILocation(line: 41, column: 3, scope: !14)
!17 = !DILocation(line: 43, column: 3, scope: !14)
!18 = !DILocation(line: 44, column: 3, scope: !14)
!19 = !DILocation(line: 45, column: 3, scope: !14)
!20 = !DILocation(line: 46, column: 3, scope: !14)
!21 = !DILocation(line: 47, column: 3, scope: !14)
!22 = distinct !{!22, !15, !23}
!23 = !DILocation(line: 49, column: 2, scope: !14)
!24 = distinct !DISubprogram(name: "bench_task2", scope: !1, file: !1, line: 53, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 55, column: 2, scope: !24)
!26 = !DILocation(line: 57, column: 3, scope: !24)
!27 = !DILocation(line: 59, column: 3, scope: !24)
!28 = !DILocation(line: 60, column: 3, scope: !24)
!29 = !DILocation(line: 61, column: 3, scope: !24)
!30 = distinct !{!30, !25, !31}
!31 = !DILocation(line: 63, column: 2, scope: !24)
!32 = distinct !DISubprogram(name: "bench_task3", scope: !1, file: !1, line: 66, type: !9, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!33 = !DILocation(line: 68, column: 2, scope: !32)
!34 = !DILocation(line: 70, column: 3, scope: !32)
!35 = !DILocation(line: 71, column: 3, scope: !32)
!36 = !DILocation(line: 72, column: 3, scope: !32)
!37 = !DILocation(line: 73, column: 3, scope: !32)
!38 = !DILocation(line: 74, column: 3, scope: !32)
!39 = distinct !{!39, !33, !40}
!40 = !DILocation(line: 76, column: 3, scope: !32)
!41 = distinct !DISubprogram(name: "bench_task4", scope: !1, file: !1, line: 80, type: !9, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!42 = !DILocation(line: 82, column: 2, scope: !41)
!43 = !DILocation(line: 84, column: 3, scope: !41)
!44 = !DILocation(line: 85, column: 3, scope: !41)
!45 = !DILocation(line: 86, column: 3, scope: !41)
!46 = !DILocation(line: 87, column: 3, scope: !41)
!47 = distinct !{!47, !42, !48}
!48 = !DILocation(line: 89, column: 2, scope: !41)
!49 = distinct !DISubprogram(name: "bench_task5", scope: !1, file: !1, line: 93, type: !9, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 95, column: 2, scope: !49)
!51 = !DILocation(line: 97, column: 3, scope: !49)
!52 = !DILocation(line: 98, column: 3, scope: !49)
!53 = !DILocation(line: 99, column: 3, scope: !49)
!54 = !DILocation(line: 100, column: 3, scope: !49)
!55 = distinct !{!55, !50, !56}
!56 = !DILocation(line: 102, column: 2, scope: !49)
!57 = distinct !DISubprogram(name: "bench_isr1", scope: !1, file: !1, line: 107, type: !9, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!58 = !DILocation(line: 108, column: 2, scope: !57)
!59 = !DILocation(line: 109, column: 2, scope: !57)
!60 = !DILocation(line: 110, column: 2, scope: !57)
!61 = !DILocation(line: 111, column: 2, scope: !57)
!62 = !DILocation(line: 112, column: 2, scope: !57)
!63 = !DILocation(line: 113, column: 2, scope: !57)
!64 = !DILocation(line: 114, column: 2, scope: !57)
!65 = !DILocation(line: 115, column: 1, scope: !57)
!66 = distinct !DISubprogram(name: "bench_isr2", scope: !1, file: !1, line: 117, type: !9, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!67 = !DILocation(line: 118, column: 2, scope: !66)
!68 = !DILocation(line: 120, column: 2, scope: !66)
!69 = !DILocation(line: 121, column: 2, scope: !66)
!70 = !DILocation(line: 122, column: 2, scope: !66)
!71 = !DILocation(line: 123, column: 2, scope: !66)
!72 = !DILocation(line: 124, column: 2, scope: !66)
!73 = !DILocation(line: 125, column: 2, scope: !66)
!74 = !DILocation(line: 127, column: 1, scope: !66)
!75 = distinct !DISubprogram(name: "bench_isr3", scope: !1, file: !1, line: 129, type: !9, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!76 = !DILocation(line: 130, column: 2, scope: !75)
!77 = !DILocation(line: 132, column: 2, scope: !75)
!78 = !DILocation(line: 133, column: 2, scope: !75)
!79 = !DILocation(line: 134, column: 2, scope: !75)
!80 = !DILocation(line: 135, column: 2, scope: !75)
!81 = !DILocation(line: 136, column: 2, scope: !75)
!82 = !DILocation(line: 137, column: 2, scope: !75)
!83 = !DILocation(line: 139, column: 2, scope: !75)
!84 = !DILocation(line: 141, column: 1, scope: !75)
!85 = distinct !DISubprogram(name: "bench_isr4", scope: !1, file: !1, line: 143, type: !9, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!86 = !DILocation(line: 144, column: 2, scope: !85)
!87 = !DILocation(line: 146, column: 2, scope: !85)
!88 = !DILocation(line: 147, column: 2, scope: !85)
!89 = !DILocation(line: 148, column: 2, scope: !85)
!90 = !DILocation(line: 149, column: 2, scope: !85)
!91 = !DILocation(line: 151, column: 2, scope: !85)
!92 = !DILocation(line: 153, column: 1, scope: !85)
