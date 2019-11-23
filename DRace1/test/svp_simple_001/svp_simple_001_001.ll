; ModuleID = 'svp_simple_001_001.bc'
source_filename = "./svp_simple_001_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_001_001_global_flag = global i32 0, align 4
@svp_simple_001_001_global_array = common global [10000 x i32] zeroinitializer, align 16
@svp_simple_001_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_001_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  call void @disable_isr(i32 2), !dbg !12
  call void (...) @idlerun(), !dbg !13
  %3 = bitcast i32* %1 to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !14
  store i32 0, i32* %1, align 4, !dbg !15, !tbaa !16
  br label %4, !dbg !14

4:                                                ; preds = %13, %0
  %5 = load i32, i32* %1, align 4, !dbg !20, !tbaa !16
  %6 = icmp slt i32 %5, 10000, !dbg !21
  br i1 %6, label %9, label %7, !dbg !22

7:                                                ; preds = %4
  %8 = bitcast i32* %1 to i8*, !dbg !22
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #3, !dbg !22
  br label %16

9:                                                ; preds = %4
  %10 = load i32, i32* %1, align 4, !dbg !23, !tbaa !16
  %11 = sext i32 %10 to i64, !dbg !24
  %12 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %11, !dbg !24
  store volatile i32 0, i32* %12, align 4, !dbg !25, !tbaa !16
  br label %13, !dbg !24

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4, !dbg !26, !tbaa !16
  %15 = add nsw i32 %14, 1, !dbg !26
  store i32 %15, i32* %1, align 4, !dbg !26, !tbaa !16
  br label %4, !dbg !22, !llvm.loop !27

16:                                               ; preds = %7
  %17 = bitcast i32* %2 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !29
  store i32 0, i32* %2, align 4, !dbg !30, !tbaa !16
  br label %18, !dbg !29

18:                                               ; preds = %31, %16
  %19 = load i32, i32* %2, align 4, !dbg !31, !tbaa !16
  %20 = icmp slt i32 %19, 10000, !dbg !32
  br i1 %20, label %23, label %21, !dbg !33

21:                                               ; preds = %18
  %22 = bitcast i32* %2 to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !33
  br label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4, !dbg !34, !tbaa !16
  %25 = icmp eq i32 %24, 9999, !dbg !35
  br i1 %25, label %26, label %30, !dbg !34

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4, !dbg !36, !tbaa !16
  %28 = sext i32 %27 to i64, !dbg !37
  %29 = getelementptr inbounds [10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 %28, !dbg !37
  store volatile i32 1, i32* %29, align 4, !dbg !38, !tbaa !16
  br label %30, !dbg !37

30:                                               ; preds = %26, %23
  br label %31, !dbg !39

31:                                               ; preds = %30
  %32 = load i32, i32* %2, align 4, !dbg !40, !tbaa !16
  %33 = add nsw i32 %32, 1, !dbg !40
  store i32 %33, i32* %2, align 4, !dbg !40, !tbaa !16
  br label %18, !dbg !33, !llvm.loop !41

34:                                               ; preds = %21
  ret void, !dbg !42
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

declare void @idlerun(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_001_001_isr_1() #0 !dbg !43 {
  call void (...) @idlerun(), !dbg !44
  store volatile i32 1, i32* @svp_simple_001_001_global_flag, align 4, !dbg !45, !tbaa !16
  store volatile i32 0, i32* @svp_simple_001_001_global_var, align 4, !dbg !46, !tbaa !16
  store volatile i32 1, i32* @svp_simple_001_001_global_var, align 4, !dbg !47, !tbaa !16
  call void @enable_isr(i32 2), !dbg !48
  call void (...) @idlerun(), !dbg !49
  ret void, !dbg !50
}

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_001_001_isr_2() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !52
  %5 = bitcast i32* %2 to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !52
  %6 = load volatile i32, i32* @svp_simple_001_001_global_flag, align 4, !dbg !53, !tbaa !16
  %7 = icmp eq i32 %6, 1, !dbg !54
  br i1 %7, label %8, label %10, !dbg !53

8:                                                ; preds = %0
  %9 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 9999), align 4, !dbg !55, !tbaa !16
  store i32 %9, i32* %1, align 4, !dbg !56, !tbaa !16
  br label %12, !dbg !57

10:                                               ; preds = %0
  %11 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 0), align 16, !dbg !58, !tbaa !16
  store i32 %11, i32* %1, align 4, !dbg !59, !tbaa !16
  br label %12

12:                                               ; preds = %10, %8
  %13 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_001_001_global_array, i64 0, i64 1000), align 16, !dbg !60, !tbaa !16
  store i32 %13, i32* %2, align 4, !dbg !61, !tbaa !16
  %14 = bitcast i32* %3 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !62
  %15 = load volatile i32, i32* @svp_simple_001_001_global_var, align 4, !dbg !63, !tbaa !16
  store i32 %15, i32* %3, align 4, !dbg !64, !tbaa !16
  %16 = bitcast i32* %3 to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !65
  %17 = bitcast i32* %2 to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !65
  %18 = bitcast i32* %1 to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !65
  ret void, !dbg !65
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_001_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_001")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_001_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_001_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_001")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 28, column: 3, scope: !8)
!13 = !DILocation(line: 30, column: 3, scope: !8)
!14 = !DILocation(line: 32, column: 8, scope: !8)
!15 = !DILocation(line: 32, column: 12, scope: !8)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 32, column: 19, scope: !8)
!21 = !DILocation(line: 32, column: 21, scope: !8)
!22 = !DILocation(line: 32, column: 3, scope: !8)
!23 = !DILocation(line: 32, column: 67, scope: !8)
!24 = !DILocation(line: 32, column: 35, scope: !8)
!25 = !DILocation(line: 32, column: 70, scope: !8)
!26 = !DILocation(line: 32, column: 31, scope: !8)
!27 = distinct !{!27, !22, !28}
!28 = !DILocation(line: 32, column: 72, scope: !8)
!29 = !DILocation(line: 34, column: 8, scope: !8)
!30 = !DILocation(line: 34, column: 12, scope: !8)
!31 = !DILocation(line: 34, column: 19, scope: !8)
!32 = !DILocation(line: 34, column: 21, scope: !8)
!33 = !DILocation(line: 34, column: 3, scope: !8)
!34 = !DILocation(line: 35, column: 9, scope: !8)
!35 = !DILocation(line: 35, column: 11, scope: !8)
!36 = !DILocation(line: 35, column: 55, scope: !8)
!37 = !DILocation(line: 35, column: 23, scope: !8)
!38 = !DILocation(line: 35, column: 58, scope: !8)
!39 = !DILocation(line: 36, column: 3, scope: !8)
!40 = !DILocation(line: 34, column: 31, scope: !8)
!41 = distinct !{!41, !33, !39}
!42 = !DILocation(line: 37, column: 1, scope: !8)
!43 = distinct !DISubprogram(name: "svp_simple_001_001_isr_1", scope: !9, file: !9, line: 39, type: !10, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 40, column: 3, scope: !43)
!45 = !DILocation(line: 41, column: 34, scope: !43)
!46 = !DILocation(line: 43, column: 33, scope: !43)
!47 = !DILocation(line: 44, column: 33, scope: !43)
!48 = !DILocation(line: 46, column: 3, scope: !43)
!49 = !DILocation(line: 48, column: 3, scope: !43)
!50 = !DILocation(line: 49, column: 1, scope: !43)
!51 = distinct !DISubprogram(name: "svp_simple_001_001_isr_2", scope: !9, file: !9, line: 51, type: !10, scopeLine: 51, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!52 = !DILocation(line: 52, column: 3, scope: !51)
!53 = !DILocation(line: 53, column: 7, scope: !51)
!54 = !DILocation(line: 53, column: 38, scope: !51)
!55 = !DILocation(line: 55, column: 15, scope: !51)
!56 = !DILocation(line: 55, column: 13, scope: !51)
!57 = !DILocation(line: 55, column: 5, scope: !51)
!58 = !DILocation(line: 58, column: 9, scope: !51)
!59 = !DILocation(line: 57, column: 13, scope: !51)
!60 = !DILocation(line: 60, column: 13, scope: !51)
!61 = !DILocation(line: 60, column: 11, scope: !51)
!62 = !DILocation(line: 63, column: 3, scope: !51)
!63 = !DILocation(line: 64, column: 13, scope: !51)
!64 = !DILocation(line: 64, column: 11, scope: !51)
!65 = !DILocation(line: 65, column: 1, scope: !51)
