; ModuleID = 'svp_simple_024_001.bc'
source_filename = "./svp_simple_024_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.bytetoword = type { i32 }

@svp_simple_024_001_global_array = common global [100 x i32*] zeroinitializer, align 16
@svp_simple_024_001_reset_RT = common global i8 0, align 1
@svp_simple_024_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_main() #0 !dbg !8 {
  %1 = alloca %union.bytetoword, align 4
  %2 = alloca %union.bytetoword, align 4
  %3 = alloca i32, align 4
  %4 = bitcast %union.bytetoword* %1 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !11
  %5 = bitcast %union.bytetoword* %2 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !11
  call void @svp_simple_024_001_init(), !dbg !12
  %6 = call i32 @svp_simple_024_001_RTData(i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i32 0), !dbg !13
  %7 = bitcast %union.bytetoword* %1 to i32*, !dbg !14
  store i32 %6, i32* %7, align 4, !dbg !15, !tbaa !16
  %8 = call i32 @svp_simple_024_001_RTData(i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i32 1), !dbg !19
  %9 = bitcast %union.bytetoword* %2 to i32*, !dbg !20
  store i32 %8, i32* %9, align 4, !dbg !21, !tbaa !16
  %10 = bitcast i32* %3 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !22
  %11 = bitcast %union.bytetoword* %1 to i32*, !dbg !23
  %12 = load i32, i32* %11, align 4, !dbg !23, !tbaa !16
  %13 = bitcast %union.bytetoword* %2 to i32*, !dbg !24
  %14 = load i32, i32* %13, align 4, !dbg !24, !tbaa !16
  %15 = and i32 %14, 752, !dbg !25
  %16 = or i32 %12, %15, !dbg !26
  store i32 %16, i32* %3, align 4, !dbg !27, !tbaa !28
  %17 = load i32, i32* %3, align 4, !dbg !30, !tbaa !28
  switch i32 %17, label %20 [
    i32 752, label %18
    i32 912, label %19
  ], !dbg !31

18:                                               ; preds = %0
  store volatile i8 1, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !32, !tbaa !16
  br label %21, !dbg !33

19:                                               ; preds = %0
  store volatile i8 0, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !34, !tbaa !16
  br label %21, !dbg !35

20:                                               ; preds = %0
  br label %21, !dbg !36

21:                                               ; preds = %20, %19, %18
  %22 = bitcast i32* %3 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !37
  %23 = bitcast %union.bytetoword* %2 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3, !dbg !37
  %24 = bitcast %union.bytetoword* %1 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3, !dbg !37
  ret void, !dbg !37
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_024_001_RTData(i32*, i32) #0 !dbg !38 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.bytetoword, align 4
  store i32* %0, i32** %3, align 8, !tbaa !39
  store i32 %1, i32* %4, align 4, !tbaa !28
  %6 = bitcast %union.bytetoword* %5 to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !41
  %7 = load i32*, i32** %3, align 8, !dbg !42, !tbaa !39
  %8 = load i32, i32* %4, align 4, !dbg !43, !tbaa !28
  %9 = add nsw i32 %8, 1, !dbg !44
  %10 = sext i32 %9 to i64, !dbg !42
  %11 = getelementptr inbounds i32, i32* %7, i64 %10, !dbg !42
  %12 = load i32, i32* %11, align 4, !dbg !42, !tbaa !28
  %13 = trunc i32 %12 to i8, !dbg !42
  %14 = bitcast %union.bytetoword* %5 to [2 x i8]*, !dbg !45
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0, !dbg !46
  store i8 %13, i8* %15, align 4, !dbg !47, !tbaa !16
  %16 = load i32*, i32** %3, align 8, !dbg !48, !tbaa !39
  %17 = load i32, i32* %4, align 4, !dbg !49, !tbaa !28
  %18 = sext i32 %17 to i64, !dbg !48
  %19 = getelementptr inbounds i32, i32* %16, i64 %18, !dbg !48
  %20 = load i32, i32* %19, align 4, !dbg !48, !tbaa !28
  %21 = trunc i32 %20 to i8, !dbg !48
  %22 = bitcast %union.bytetoword* %5 to [2 x i8]*, !dbg !50
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 1, !dbg !51
  store i8 %21, i8* %23, align 1, !dbg !52, !tbaa !16
  %24 = bitcast %union.bytetoword* %5 to i32*, !dbg !53
  %25 = load i32, i32* %24, align 4, !dbg !53, !tbaa !16
  %26 = bitcast %union.bytetoword* %5 to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !54
  ret i32 %25, !dbg !55
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_init() #0 !dbg !56 {
  %1 = call i32 (...) @rand(), !dbg !57
  store volatile i32 %1, i32* @svp_simple_024_001_global_var, align 4, !dbg !58, !tbaa !28
  call void (...) @init(), !dbg !59
  ret void, !dbg !60
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_isr_1() #0 !dbg !61 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !62
  store i32 0, i32* %1, align 4, !dbg !63, !tbaa !28
  br label %3, !dbg !62

3:                                                ; preds = %12, %0
  %4 = load i32, i32* %1, align 4, !dbg !64, !tbaa !28
  %5 = icmp slt i32 %4, 100, !dbg !65
  br i1 %5, label %8, label %6, !dbg !66

6:                                                ; preds = %3
  %7 = bitcast i32* %1 to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #3, !dbg !66
  br label %15

8:                                                ; preds = %3
  %9 = load i32, i32* %1, align 4, !dbg !67, !tbaa !28
  %10 = sext i32 %9 to i64, !dbg !68
  %11 = getelementptr inbounds [100 x i32*], [100 x i32*]* @svp_simple_024_001_global_array, i64 0, i64 %10, !dbg !68
  store i32* null, i32** %11, align 8, !dbg !69, !tbaa !39
  br label %12, !dbg !70

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4, !dbg !71, !tbaa !28
  %14 = add nsw i32 %13, 1, !dbg !71
  store i32 %14, i32* %1, align 4, !dbg !71, !tbaa !28
  br label %3, !dbg !66, !llvm.loop !72

15:                                               ; preds = %6
  ret void, !dbg !73
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_024_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_024")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_024_001_main", scope: !9, file: !9, line: 29, type: !10, scopeLine: 29, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_024_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_024")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 31, column: 3, scope: !8)
!13 = !DILocation(line: 32, column: 41, scope: !8)
!14 = !DILocation(line: 32, column: 30, scope: !8)
!15 = !DILocation(line: 32, column: 39, scope: !8)
!16 = !{!17, !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 33, column: 41, scope: !8)
!20 = !DILocation(line: 33, column: 30, scope: !8)
!21 = !DILocation(line: 33, column: 39, scope: !8)
!22 = !DILocation(line: 34, column: 3, scope: !8)
!23 = !DILocation(line: 35, column: 34, scope: !8)
!24 = !DILocation(line: 35, column: 72, scope: !8)
!25 = !DILocation(line: 35, column: 81, scope: !8)
!26 = !DILocation(line: 35, column: 43, scope: !8)
!27 = !DILocation(line: 34, column: 7, scope: !8)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !17, i64 0}
!30 = !DILocation(line: 37, column: 11, scope: !8)
!31 = !DILocation(line: 37, column: 3, scope: !8)
!32 = !DILocation(line: 39, column: 35, scope: !8)
!33 = !DILocation(line: 40, column: 7, scope: !8)
!34 = !DILocation(line: 42, column: 35, scope: !8)
!35 = !DILocation(line: 43, column: 7, scope: !8)
!36 = !DILocation(line: 45, column: 7, scope: !8)
!37 = !DILocation(line: 47, column: 1, scope: !8)
!38 = distinct !DISubprogram(name: "svp_simple_024_001_RTData", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !17, i64 0}
!41 = !DILocation(line: 55, column: 3, scope: !38)
!42 = !DILocation(line: 56, column: 44, scope: !38)
!43 = !DILocation(line: 56, column: 50, scope: !38)
!44 = !DILocation(line: 56, column: 56, scope: !38)
!45 = !DILocation(line: 56, column: 30, scope: !38)
!46 = !DILocation(line: 56, column: 3, scope: !38)
!47 = !DILocation(line: 56, column: 42, scope: !38)
!48 = !DILocation(line: 57, column: 44, scope: !38)
!49 = !DILocation(line: 57, column: 50, scope: !38)
!50 = !DILocation(line: 57, column: 30, scope: !38)
!51 = !DILocation(line: 57, column: 3, scope: !38)
!52 = !DILocation(line: 57, column: 42, scope: !38)
!53 = !DILocation(line: 59, column: 37, scope: !38)
!54 = !DILocation(line: 60, column: 1, scope: !38)
!55 = !DILocation(line: 59, column: 3, scope: !38)
!56 = distinct !DISubprogram(name: "svp_simple_024_001_init", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!57 = !DILocation(line: 49, column: 35, scope: !56)
!58 = !DILocation(line: 49, column: 33, scope: !56)
!59 = !DILocation(line: 51, column: 3, scope: !56)
!60 = !DILocation(line: 52, column: 1, scope: !56)
!61 = distinct !DISubprogram(name: "svp_simple_024_001_isr_1", scope: !9, file: !9, line: 61, type: !10, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!62 = !DILocation(line: 62, column: 8, scope: !61)
!63 = !DILocation(line: 62, column: 12, scope: !61)
!64 = !DILocation(line: 62, column: 19, scope: !61)
!65 = !DILocation(line: 62, column: 21, scope: !61)
!66 = !DILocation(line: 62, column: 3, scope: !61)
!67 = !DILocation(line: 63, column: 37, scope: !61)
!68 = !DILocation(line: 63, column: 5, scope: !61)
!69 = !DILocation(line: 63, column: 40, scope: !61)
!70 = !DILocation(line: 64, column: 3, scope: !61)
!71 = !DILocation(line: 62, column: 29, scope: !61)
!72 = distinct !{!72, !66, !70}
!73 = !DILocation(line: 65, column: 1, scope: !61)
