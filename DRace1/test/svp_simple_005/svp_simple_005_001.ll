; ModuleID = 'svp_simple_005_001.bc'
source_filename = "./svp_simple_005_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_005_001_global_condition = global i32 0, align 4
@svp_simple_005_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_005_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %4 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !12
  store i32 0, i32* %1, align 4, !dbg !13, !tbaa !14
  br label %5, !dbg !12

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %1, align 4, !dbg !18, !tbaa !14
  %7 = icmp slt i32 %6, 10000, !dbg !19
  br i1 %7, label %10, label %8, !dbg !20

8:                                                ; preds = %5
  store i32 2, i32* %2, align 4
  %9 = bitcast i32* %1 to i8*, !dbg !20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3, !dbg !20
  br label %32

10:                                               ; preds = %5
  %11 = bitcast i32* %3 to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !21
  store i32 0, i32* %3, align 4, !dbg !22, !tbaa !14
  br label %12, !dbg !21

12:                                               ; preds = %25, %10
  %13 = load i32, i32* %3, align 4, !dbg !23, !tbaa !14
  %14 = icmp slt i32 %13, 10000, !dbg !24
  br i1 %14, label %17, label %15, !dbg !25

15:                                               ; preds = %12
  store i32 5, i32* %2, align 4
  %16 = bitcast i32* %3 to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !25
  br label %28

17:                                               ; preds = %12
  %18 = load i32, i32* %1, align 4, !dbg !26, !tbaa !14
  %19 = icmp eq i32 %18, 9999, !dbg !27
  br i1 %19, label %20, label %24, !dbg !28

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4, !dbg !29, !tbaa !14
  %22 = icmp eq i32 %21, 1000, !dbg !30
  br i1 %22, label %23, label %24, !dbg !31

23:                                               ; preds = %20
  store volatile i32 1, i32* @svp_simple_005_001_global_var, align 4, !dbg !32, !tbaa !14
  br label %24, !dbg !33

24:                                               ; preds = %23, %20, %17
  br label %25, !dbg !34

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4, !dbg !35, !tbaa !14
  %27 = add nsw i32 %26, 1, !dbg !35
  store i32 %27, i32* %3, align 4, !dbg !35, !tbaa !14
  br label %12, !dbg !25, !llvm.loop !36

28:                                               ; preds = %15
  br label %29, !dbg !37

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4, !dbg !38, !tbaa !14
  %31 = add nsw i32 %30, 1, !dbg !38
  store i32 %31, i32* %1, align 4, !dbg !38, !tbaa !14
  br label %5, !dbg !20, !llvm.loop !39

32:                                               ; preds = %8
  %33 = load volatile i32, i32* @svp_simple_005_001_global_condition, align 4, !dbg !40, !tbaa !14
  %34 = icmp eq i32 %33, 1, !dbg !41
  br i1 %34, label %35, label %36, !dbg !40

35:                                               ; preds = %32
  store volatile i32 9, i32* @svp_simple_005_001_global_var, align 4, !dbg !42, !tbaa !14
  br label %36, !dbg !43

36:                                               ; preds = %35, %32
  store volatile i32 5, i32* @svp_simple_005_001_global_var, align 4, !dbg !44, !tbaa !14
  ret void, !dbg !45
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_005_001_isr_1() #0 !dbg !46 {
  %1 = alloca i32, align 4
  call void (...) @idlerun(), !dbg !47
  %2 = bitcast i32* %1 to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !48
  %3 = load volatile i32, i32* @svp_simple_005_001_global_var, align 4, !dbg !49, !tbaa !14
  store i32 %3, i32* %1, align 4, !dbg !50, !tbaa !14
  %4 = bitcast i32* %1 to i8*, !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #3, !dbg !51
  ret void, !dbg !51
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_005_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_005")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_005_001_main", scope: !9, file: !9, line: 27, type: !10, scopeLine: 27, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_005_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_005")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 28, column: 3, scope: !8)
!12 = !DILocation(line: 29, column: 8, scope: !8)
!13 = !DILocation(line: 29, column: 12, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 29, column: 19, scope: !8)
!19 = !DILocation(line: 29, column: 21, scope: !8)
!20 = !DILocation(line: 29, column: 3, scope: !8)
!21 = !DILocation(line: 30, column: 10, scope: !8)
!22 = !DILocation(line: 30, column: 14, scope: !8)
!23 = !DILocation(line: 30, column: 21, scope: !8)
!24 = !DILocation(line: 30, column: 23, scope: !8)
!25 = !DILocation(line: 30, column: 5, scope: !8)
!26 = !DILocation(line: 31, column: 12, scope: !8)
!27 = !DILocation(line: 31, column: 14, scope: !8)
!28 = !DILocation(line: 31, column: 26, scope: !8)
!29 = !DILocation(line: 31, column: 30, scope: !8)
!30 = !DILocation(line: 31, column: 32, scope: !8)
!31 = !DILocation(line: 31, column: 11, scope: !8)
!32 = !DILocation(line: 32, column: 39, scope: !8)
!33 = !DILocation(line: 32, column: 9, scope: !8)
!34 = !DILocation(line: 33, column: 5, scope: !8)
!35 = !DILocation(line: 30, column: 38, scope: !8)
!36 = distinct !{!36, !25, !34}
!37 = !DILocation(line: 34, column: 3, scope: !8)
!38 = !DILocation(line: 29, column: 36, scope: !8)
!39 = distinct !{!39, !20, !37}
!40 = !DILocation(line: 36, column: 7, scope: !8)
!41 = !DILocation(line: 36, column: 43, scope: !8)
!42 = !DILocation(line: 38, column: 35, scope: !8)
!43 = !DILocation(line: 38, column: 5, scope: !8)
!44 = !DILocation(line: 40, column: 33, scope: !8)
!45 = !DILocation(line: 41, column: 1, scope: !8)
!46 = distinct !DISubprogram(name: "svp_simple_005_001_isr_1", scope: !9, file: !9, line: 43, type: !10, scopeLine: 43, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 44, column: 3, scope: !46)
!48 = !DILocation(line: 45, column: 3, scope: !46)
!49 = !DILocation(line: 46, column: 12, scope: !46)
!50 = !DILocation(line: 46, column: 10, scope: !46)
!51 = !DILocation(line: 47, column: 1, scope: !46)
