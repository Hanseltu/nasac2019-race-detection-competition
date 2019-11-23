; ModuleID = 'svp_simple_008_001.bc'
source_filename = "./svp_simple_008_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_008_001_global_array = common global [100 x i32] zeroinitializer, align 16
@svp_simple_008_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %3 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !12
  store i32 1, i32* %1, align 4, !dbg !13, !tbaa !14
  %4 = bitcast i32* %2 to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !18
  store i32 2, i32* %2, align 4, !dbg !19, !tbaa !14
  %5 = load i32, i32* %1, align 4, !dbg !20, !tbaa !14
  %6 = load i32, i32* %2, align 4, !dbg !21, !tbaa !14
  %7 = add nsw i32 %5, %6, !dbg !22
  %8 = sext i32 %7 to i64, !dbg !23
  %9 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %8, !dbg !23
  store volatile i32 9, i32* %9, align 4, !dbg !24, !tbaa !14
  store volatile i32 1, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 40), align 16, !dbg !25, !tbaa !14
  call void @svp_simple_008_001_func_1(), !dbg !26
  %10 = bitcast i32* %2 to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3, !dbg !27
  %11 = bitcast i32* %1 to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !27
  ret void, !dbg !27
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_func_1() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %1 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !29
  %8 = bitcast i32* %2 to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !29
  %9 = bitcast i32* %3 to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !30
  store i32 1, i32* %3, align 4, !dbg !31, !tbaa !14
  %10 = bitcast i32* %4 to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !32
  store i32 2, i32* %4, align 4, !dbg !33, !tbaa !14
  %11 = bitcast i32* %5 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !34
  store i32 1, i32* %5, align 4, !dbg !35, !tbaa !14
  %12 = bitcast i32* %6 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !36
  store i32 3, i32* %6, align 4, !dbg !37, !tbaa !14
  %13 = load i32, i32* %3, align 4, !dbg !38, !tbaa !14
  %14 = mul nsw i32 %13, 20, !dbg !39
  %15 = load i32, i32* %4, align 4, !dbg !40, !tbaa !14
  %16 = mul nsw i32 %15, 10, !dbg !41
  %17 = add nsw i32 %14, %16, !dbg !42
  %18 = sext i32 %17 to i64, !dbg !43
  %19 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %18, !dbg !43
  %20 = load volatile i32, i32* %19, align 4, !dbg !43, !tbaa !14
  store i32 %20, i32* %1, align 4, !dbg !44, !tbaa !14
  %21 = load i32, i32* %5, align 4, !dbg !45, !tbaa !14
  %22 = load i32, i32* %6, align 4, !dbg !46, !tbaa !14
  %23 = add nsw i32 %21, %22, !dbg !47
  %24 = sext i32 %23 to i64, !dbg !48
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %24, !dbg !48
  %26 = load volatile i32, i32* %25, align 4, !dbg !48, !tbaa !14
  store i32 %26, i32* %2, align 4, !dbg !49, !tbaa !14
  %27 = bitcast i32* %6 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3, !dbg !50
  %28 = bitcast i32* %5 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3, !dbg !50
  %29 = bitcast i32* %4 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3, !dbg !50
  %30 = bitcast i32* %3 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3, !dbg !50
  %31 = bitcast i32* %2 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3, !dbg !50
  %32 = bitcast i32* %1 to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3, !dbg !50
  ret void, !dbg !50
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_008_001_isr_1() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !52
  store i32 0, i32* %1, align 4, !dbg !53, !tbaa !14
  br label %3, !dbg !52

3:                                                ; preds = %12, %0
  %4 = load i32, i32* %1, align 4, !dbg !54, !tbaa !14
  %5 = icmp slt i32 %4, 100, !dbg !55
  br i1 %5, label %8, label %6, !dbg !56

6:                                                ; preds = %3
  %7 = bitcast i32* %1 to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #3, !dbg !56
  br label %15

8:                                                ; preds = %3
  %9 = load i32, i32* %1, align 4, !dbg !57, !tbaa !14
  %10 = sext i32 %9 to i64, !dbg !58
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_008_001_global_array, i64 0, i64 %10, !dbg !58
  store volatile i32 5, i32* %11, align 4, !dbg !59, !tbaa !14
  br label %12, !dbg !58

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4, !dbg !60, !tbaa !14
  %14 = add nsw i32 %13, 1, !dbg !60
  store i32 %14, i32* %1, align 4, !dbg !60, !tbaa !14
  br label %3, !dbg !56, !llvm.loop !61

15:                                               ; preds = %6
  ret void, !dbg !63
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_008_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_008")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_008_001_main", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_008_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_008")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 3, scope: !8)
!13 = !DILocation(line: 30, column: 7, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 31, column: 3, scope: !8)
!19 = !DILocation(line: 31, column: 7, scope: !8)
!20 = !DILocation(line: 33, column: 35, scope: !8)
!21 = !DILocation(line: 33, column: 39, scope: !8)
!22 = !DILocation(line: 33, column: 37, scope: !8)
!23 = !DILocation(line: 33, column: 3, scope: !8)
!24 = !DILocation(line: 33, column: 42, scope: !8)
!25 = !DILocation(line: 35, column: 39, scope: !8)
!26 = !DILocation(line: 37, column: 3, scope: !8)
!27 = !DILocation(line: 38, column: 1, scope: !8)
!28 = distinct !DISubprogram(name: "svp_simple_008_001_func_1", scope: !9, file: !9, line: 40, type: !10, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!29 = !DILocation(line: 41, column: 3, scope: !28)
!30 = !DILocation(line: 42, column: 3, scope: !28)
!31 = !DILocation(line: 42, column: 7, scope: !28)
!32 = !DILocation(line: 43, column: 3, scope: !28)
!33 = !DILocation(line: 43, column: 7, scope: !28)
!34 = !DILocation(line: 44, column: 3, scope: !28)
!35 = !DILocation(line: 44, column: 7, scope: !28)
!36 = !DILocation(line: 45, column: 3, scope: !28)
!37 = !DILocation(line: 45, column: 7, scope: !28)
!38 = !DILocation(line: 46, column: 45, scope: !28)
!39 = !DILocation(line: 46, column: 47, scope: !28)
!40 = !DILocation(line: 46, column: 54, scope: !28)
!41 = !DILocation(line: 46, column: 56, scope: !28)
!42 = !DILocation(line: 46, column: 52, scope: !28)
!43 = !DILocation(line: 46, column: 13, scope: !28)
!44 = !DILocation(line: 46, column: 11, scope: !28)
!45 = !DILocation(line: 48, column: 45, scope: !28)
!46 = !DILocation(line: 48, column: 49, scope: !28)
!47 = !DILocation(line: 48, column: 47, scope: !28)
!48 = !DILocation(line: 48, column: 13, scope: !28)
!49 = !DILocation(line: 48, column: 11, scope: !28)
!50 = !DILocation(line: 49, column: 1, scope: !28)
!51 = distinct !DISubprogram(name: "svp_simple_008_001_isr_1", scope: !9, file: !9, line: 51, type: !10, scopeLine: 51, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!52 = !DILocation(line: 52, column: 8, scope: !51)
!53 = !DILocation(line: 52, column: 12, scope: !51)
!54 = !DILocation(line: 52, column: 19, scope: !51)
!55 = !DILocation(line: 52, column: 21, scope: !51)
!56 = !DILocation(line: 52, column: 3, scope: !51)
!57 = !DILocation(line: 52, column: 65, scope: !51)
!58 = !DILocation(line: 52, column: 33, scope: !51)
!59 = !DILocation(line: 52, column: 68, scope: !51)
!60 = !DILocation(line: 52, column: 29, scope: !51)
!61 = distinct !{!61, !56, !62}
!62 = !DILocation(line: 52, column: 70, scope: !51)
!63 = !DILocation(line: 53, column: 1, scope: !51)
