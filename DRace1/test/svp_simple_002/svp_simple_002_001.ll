; ModuleID = 'svp_simple_002_001.bc'
source_filename = "./svp_simple_002_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_002_001_global_array = common global [10000 x i32] zeroinitializer, align 16
@casee2_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_002_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  call void (...) @idlerun(), !dbg !12
  ret void, !dbg !13
}

declare void @init(...) #1

declare void @idlerun(...) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_002_001_isr_1() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = bitcast i32* %1 to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !15
  %5 = bitcast i32* %2 to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !15
  %6 = bitcast i32* %3 to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !16
  store i32 0, i32* %3, align 4, !dbg !17, !tbaa !18
  br label %7, !dbg !16

7:                                                ; preds = %21, %0
  %8 = load i32, i32* %3, align 4, !dbg !22, !tbaa !18
  %9 = icmp slt i32 %8, 10000, !dbg !23
  br i1 %9, label %12, label %10, !dbg !24

10:                                               ; preds = %7
  %11 = bitcast i32* %3 to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !24
  br label %24

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4, !dbg !25, !tbaa !18
  %14 = icmp eq i32 %13, 9999, !dbg !26
  br i1 %14, label %15, label %16, !dbg !25

15:                                               ; preds = %12
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !27, !tbaa !18
  br label %16, !dbg !28

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %3, align 4, !dbg !29, !tbaa !18
  %18 = icmp eq i32 %17, 10001, !dbg !30
  br i1 %18, label %19, label %20, !dbg !29

19:                                               ; preds = %16
  store volatile i32 1, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !31, !tbaa !18
  br label %20, !dbg !32

20:                                               ; preds = %19, %16
  br label %21, !dbg !33

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4, !dbg !34, !tbaa !18
  %23 = add nsw i32 %22, 1, !dbg !34
  store i32 %23, i32* %3, align 4, !dbg !34, !tbaa !18
  br label %7, !dbg !24, !llvm.loop !35

24:                                               ; preds = %10
  %25 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !36, !tbaa !18
  %26 = sub nsw i32 %25, 10, !dbg !37
  store i32 %26, i32* %1, align 4, !dbg !38, !tbaa !18
  %27 = load volatile i32, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 0), align 16, !dbg !39, !tbaa !18
  %28 = add nsw i32 %27, 10, !dbg !40
  store i32 %28, i32* %2, align 4, !dbg !41, !tbaa !18
  %29 = bitcast i32* %2 to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3, !dbg !42
  %30 = bitcast i32* %1 to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3, !dbg !42
  ret void, !dbg !42
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_002_001_isr_2() #0 !dbg !43 {
  call void (...) @idlerun(), !dbg !44
  store volatile i32 999, i32* getelementptr inbounds ([10000 x i32], [10000 x i32]* @svp_simple_002_001_global_array, i64 0, i64 9999), align 4, !dbg !45, !tbaa !18
  ret void, !dbg !46
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_002_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_002")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_002_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_002_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_002")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 28, column: 1, scope: !8)
!14 = distinct !DISubprogram(name: "svp_simple_002_001_isr_1", scope: !9, file: !9, line: 30, type: !10, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 31, column: 3, scope: !14)
!16 = !DILocation(line: 32, column: 8, scope: !14)
!17 = !DILocation(line: 32, column: 12, scope: !14)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 32, column: 19, scope: !14)
!23 = !DILocation(line: 32, column: 21, scope: !14)
!24 = !DILocation(line: 32, column: 3, scope: !14)
!25 = !DILocation(line: 33, column: 9, scope: !14)
!26 = !DILocation(line: 33, column: 11, scope: !14)
!27 = !DILocation(line: 33, column: 64, scope: !14)
!28 = !DILocation(line: 33, column: 23, scope: !14)
!29 = !DILocation(line: 34, column: 9, scope: !14)
!30 = !DILocation(line: 34, column: 11, scope: !14)
!31 = !DILocation(line: 35, column: 48, scope: !14)
!32 = !DILocation(line: 35, column: 7, scope: !14)
!33 = !DILocation(line: 36, column: 3, scope: !14)
!34 = !DILocation(line: 32, column: 36, scope: !14)
!35 = distinct !{!35, !24, !33}
!36 = !DILocation(line: 37, column: 13, scope: !14)
!37 = !DILocation(line: 37, column: 54, scope: !14)
!38 = !DILocation(line: 37, column: 11, scope: !14)
!39 = !DILocation(line: 39, column: 12, scope: !14)
!40 = !DILocation(line: 39, column: 47, scope: !14)
!41 = !DILocation(line: 39, column: 10, scope: !14)
!42 = !DILocation(line: 40, column: 1, scope: !14)
!43 = distinct !DISubprogram(name: "svp_simple_002_001_isr_2", scope: !9, file: !9, line: 42, type: !10, scopeLine: 42, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 43, column: 3, scope: !43)
!45 = !DILocation(line: 44, column: 44, scope: !43)
!46 = !DILocation(line: 46, column: 1, scope: !43)
