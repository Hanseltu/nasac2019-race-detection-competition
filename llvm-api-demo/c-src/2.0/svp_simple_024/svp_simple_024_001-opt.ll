; ModuleID = 'svp_simple_024_001-opt.bc'
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
  %3 = alloca %union.bytetoword, align 4
  %4 = alloca %union.bytetoword, align 4
  %5 = bitcast %union.bytetoword* %3 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !11
  %6 = bitcast %union.bytetoword* %4 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !11
  %7 = call i32 (...) @rand() #3, !dbg !12
  store volatile i32 %7, i32* @svp_simple_024_001_global_var, align 4, !dbg !15, !tbaa !16
  call void (...) @init() #3, !dbg !20
  %8 = bitcast %union.bytetoword* %2 to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !21
  %9 = load i32, i32* getelementptr (i32, i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i64 1), align 4, !dbg !24, !tbaa !16
  %10 = trunc i32 %9 to i8, !dbg !24
  %11 = bitcast %union.bytetoword* %2 to [2 x i8]*, !dbg !25
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0, !dbg !26
  store i8 %10, i8* %12, align 4, !dbg !27, !tbaa !28
  %13 = load i32, i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), align 4, !dbg !29, !tbaa !16
  %14 = trunc i32 %13 to i8, !dbg !29
  %15 = bitcast %union.bytetoword* %2 to [2 x i8]*, !dbg !30
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1, !dbg !31
  store i8 %14, i8* %16, align 1, !dbg !32, !tbaa !28
  %17 = bitcast %union.bytetoword* %2 to i32*, !dbg !33
  %18 = load i32, i32* %17, align 4, !dbg !33, !tbaa !28
  %19 = bitcast %union.bytetoword* %2 to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3, !dbg !34
  %20 = bitcast %union.bytetoword* %3 to i32*, !dbg !35
  store i32 %18, i32* %20, align 4, !dbg !36, !tbaa !28
  %21 = bitcast %union.bytetoword* %1 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3, !dbg !37
  %22 = load i32, i32* bitcast (i32** getelementptr inbounds ([100 x i32*], [100 x i32*]* @svp_simple_024_001_global_array, i64 0, i64 1) to i32*), align 4, !dbg !39, !tbaa !16
  %23 = trunc i32 %22 to i8, !dbg !39
  %24 = bitcast %union.bytetoword* %1 to [2 x i8]*, !dbg !40
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %24, i64 0, i64 0, !dbg !41
  store i8 %23, i8* %25, align 4, !dbg !42, !tbaa !28
  %26 = load i32, i32* getelementptr (i32, i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i64 1), align 4, !dbg !43, !tbaa !16
  %27 = trunc i32 %26 to i8, !dbg !43
  %28 = bitcast %union.bytetoword* %1 to [2 x i8]*, !dbg !44
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %28, i64 0, i64 1, !dbg !45
  store i8 %27, i8* %29, align 1, !dbg !46, !tbaa !28
  %30 = bitcast %union.bytetoword* %1 to i32*, !dbg !47
  %31 = load i32, i32* %30, align 4, !dbg !47, !tbaa !28
  %32 = bitcast %union.bytetoword* %1 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3, !dbg !48
  %33 = bitcast %union.bytetoword* %4 to i32*, !dbg !49
  store i32 %31, i32* %33, align 4, !dbg !50, !tbaa !28
  %34 = bitcast %union.bytetoword* %3 to i32*, !dbg !51
  %35 = load i32, i32* %34, align 4, !dbg !51, !tbaa !28
  %36 = bitcast %union.bytetoword* %4 to i32*, !dbg !52
  %37 = load i32, i32* %36, align 4, !dbg !52, !tbaa !28
  %38 = and i32 %37, 752, !dbg !53
  %39 = or i32 %35, %38, !dbg !54
  switch i32 %39, label %42 [
    i32 752, label %40
    i32 912, label %41
  ], !dbg !55

40:                                               ; preds = %0
  store volatile i8 1, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !56, !tbaa !28
  br label %43, !dbg !57

41:                                               ; preds = %0
  store volatile i8 0, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !58, !tbaa !28
  br label %43, !dbg !59

42:                                               ; preds = %0
  br label %43, !dbg !60

43:                                               ; preds = %42, %41, %40
  %44 = bitcast %union.bytetoword* %4 to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !61
  %45 = bitcast %union.bytetoword* %3 to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !61
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @svp_simple_024_001_RTData(i32*, i32) #0 !dbg !22 {
  %3 = alloca %union.bytetoword, align 4
  %4 = bitcast %union.bytetoword* %3 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !62
  %5 = add nsw i32 %1, 1, !dbg !63
  %6 = sext i32 %5 to i64, !dbg !64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6, !dbg !64
  %8 = load i32, i32* %7, align 4, !dbg !64, !tbaa !16
  %9 = trunc i32 %8 to i8, !dbg !64
  %10 = bitcast %union.bytetoword* %3 to [2 x i8]*, !dbg !65
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0, !dbg !66
  store i8 %9, i8* %11, align 4, !dbg !67, !tbaa !28
  %12 = sext i32 %1 to i64, !dbg !68
  %13 = getelementptr inbounds i32, i32* %0, i64 %12, !dbg !68
  %14 = load i32, i32* %13, align 4, !dbg !68, !tbaa !16
  %15 = trunc i32 %14 to i8, !dbg !68
  %16 = bitcast %union.bytetoword* %3 to [2 x i8]*, !dbg !69
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 1, !dbg !70
  store i8 %15, i8* %17, align 1, !dbg !71, !tbaa !28
  %18 = bitcast %union.bytetoword* %3 to i32*, !dbg !72
  %19 = load i32, i32* %18, align 4, !dbg !72, !tbaa !28
  %20 = bitcast %union.bytetoword* %3 to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3, !dbg !73
  ret i32 %19, !dbg !74
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_init() #0 !dbg !13 {
  %1 = call i32 (...) @rand(), !dbg !75
  store volatile i32 %1, i32* @svp_simple_024_001_global_var, align 4, !dbg !76, !tbaa !16
  call void (...) @init(), !dbg !77
  ret void, !dbg !78
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_isr_1() #0 !dbg !79 {
  br label %1, !dbg !80

1:                                                ; preds = %7, %0
  %.0 = phi i32 [ 0, %0 ], [ %8, %7 ], !dbg !81
  %2 = icmp slt i32 %.0, 100, !dbg !82
  br i1 %2, label %4, label %3, !dbg !83

3:                                                ; preds = %1
  br label %9

4:                                                ; preds = %1
  %5 = sext i32 %.0 to i64, !dbg !84
  %6 = getelementptr inbounds [100 x i32*], [100 x i32*]* @svp_simple_024_001_global_array, i64 0, i64 %5, !dbg !84
  store i32* null, i32** %6, align 8, !dbg !85, !tbaa !86
  br label %7, !dbg !88

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, 1, !dbg !89
  br label %1, !dbg !83, !llvm.loop !90

9:                                                ; preds = %3
  ret void, !dbg !91
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_024_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_024")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_024_001_main", scope: !9, file: !9, line: 29, type: !10, scopeLine: 29, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_024_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_024")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 49, column: 35, scope: !13, inlinedAt: !14)
!13 = distinct !DISubprogram(name: "svp_simple_024_001_init", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = distinct !DILocation(line: 31, column: 3, scope: !8)
!15 = !DILocation(line: 49, column: 33, scope: !13, inlinedAt: !14)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 51, column: 3, scope: !13, inlinedAt: !14)
!21 = !DILocation(line: 55, column: 3, scope: !22, inlinedAt: !23)
!22 = distinct !DISubprogram(name: "svp_simple_024_001_RTData", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!23 = distinct !DILocation(line: 32, column: 41, scope: !8)
!24 = !DILocation(line: 56, column: 44, scope: !22, inlinedAt: !23)
!25 = !DILocation(line: 56, column: 30, scope: !22, inlinedAt: !23)
!26 = !DILocation(line: 56, column: 3, scope: !22, inlinedAt: !23)
!27 = !DILocation(line: 56, column: 42, scope: !22, inlinedAt: !23)
!28 = !{!18, !18, i64 0}
!29 = !DILocation(line: 57, column: 44, scope: !22, inlinedAt: !23)
!30 = !DILocation(line: 57, column: 30, scope: !22, inlinedAt: !23)
!31 = !DILocation(line: 57, column: 3, scope: !22, inlinedAt: !23)
!32 = !DILocation(line: 57, column: 42, scope: !22, inlinedAt: !23)
!33 = !DILocation(line: 59, column: 37, scope: !22, inlinedAt: !23)
!34 = !DILocation(line: 60, column: 1, scope: !22, inlinedAt: !23)
!35 = !DILocation(line: 32, column: 30, scope: !8)
!36 = !DILocation(line: 32, column: 39, scope: !8)
!37 = !DILocation(line: 55, column: 3, scope: !22, inlinedAt: !38)
!38 = distinct !DILocation(line: 33, column: 41, scope: !8)
!39 = !DILocation(line: 56, column: 44, scope: !22, inlinedAt: !38)
!40 = !DILocation(line: 56, column: 30, scope: !22, inlinedAt: !38)
!41 = !DILocation(line: 56, column: 3, scope: !22, inlinedAt: !38)
!42 = !DILocation(line: 56, column: 42, scope: !22, inlinedAt: !38)
!43 = !DILocation(line: 57, column: 44, scope: !22, inlinedAt: !38)
!44 = !DILocation(line: 57, column: 30, scope: !22, inlinedAt: !38)
!45 = !DILocation(line: 57, column: 3, scope: !22, inlinedAt: !38)
!46 = !DILocation(line: 57, column: 42, scope: !22, inlinedAt: !38)
!47 = !DILocation(line: 59, column: 37, scope: !22, inlinedAt: !38)
!48 = !DILocation(line: 60, column: 1, scope: !22, inlinedAt: !38)
!49 = !DILocation(line: 33, column: 30, scope: !8)
!50 = !DILocation(line: 33, column: 39, scope: !8)
!51 = !DILocation(line: 35, column: 34, scope: !8)
!52 = !DILocation(line: 35, column: 72, scope: !8)
!53 = !DILocation(line: 35, column: 81, scope: !8)
!54 = !DILocation(line: 35, column: 43, scope: !8)
!55 = !DILocation(line: 37, column: 3, scope: !8)
!56 = !DILocation(line: 39, column: 35, scope: !8)
!57 = !DILocation(line: 40, column: 7, scope: !8)
!58 = !DILocation(line: 42, column: 35, scope: !8)
!59 = !DILocation(line: 43, column: 7, scope: !8)
!60 = !DILocation(line: 45, column: 7, scope: !8)
!61 = !DILocation(line: 47, column: 1, scope: !8)
!62 = !DILocation(line: 55, column: 3, scope: !22)
!63 = !DILocation(line: 56, column: 56, scope: !22)
!64 = !DILocation(line: 56, column: 44, scope: !22)
!65 = !DILocation(line: 56, column: 30, scope: !22)
!66 = !DILocation(line: 56, column: 3, scope: !22)
!67 = !DILocation(line: 56, column: 42, scope: !22)
!68 = !DILocation(line: 57, column: 44, scope: !22)
!69 = !DILocation(line: 57, column: 30, scope: !22)
!70 = !DILocation(line: 57, column: 3, scope: !22)
!71 = !DILocation(line: 57, column: 42, scope: !22)
!72 = !DILocation(line: 59, column: 37, scope: !22)
!73 = !DILocation(line: 60, column: 1, scope: !22)
!74 = !DILocation(line: 59, column: 3, scope: !22)
!75 = !DILocation(line: 49, column: 35, scope: !13)
!76 = !DILocation(line: 49, column: 33, scope: !13)
!77 = !DILocation(line: 51, column: 3, scope: !13)
!78 = !DILocation(line: 52, column: 1, scope: !13)
!79 = distinct !DISubprogram(name: "svp_simple_024_001_isr_1", scope: !9, file: !9, line: 61, type: !10, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!80 = !DILocation(line: 62, column: 8, scope: !79)
!81 = !DILocation(line: 0, scope: !79)
!82 = !DILocation(line: 62, column: 21, scope: !79)
!83 = !DILocation(line: 62, column: 3, scope: !79)
!84 = !DILocation(line: 63, column: 5, scope: !79)
!85 = !DILocation(line: 63, column: 40, scope: !79)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !18, i64 0}
!88 = !DILocation(line: 64, column: 3, scope: !79)
!89 = !DILocation(line: 62, column: 29, scope: !79)
!90 = distinct !{!90, !83, !88}
!91 = !DILocation(line: 65, column: 1, scope: !79)
