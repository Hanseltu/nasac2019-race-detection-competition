; ModuleID = 'svp_simple_007_001.bc'
source_filename = "./svp_simple_007_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_007_001_global_array = common global [5 x i32] zeroinitializer, align 16
@svp_simple_007_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_007_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %4 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !12
  %5 = bitcast i32* %2 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !12
  %6 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !13, !tbaa !14
  %7 = sext i32 %6 to i64, !dbg !18
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %7, !dbg !18
  store volatile i32 1, i32* %8, align 4, !dbg !19, !tbaa !14
  %9 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !20, !tbaa !14
  %10 = sext i32 %9 to i64, !dbg !21
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %10, !dbg !21
  %12 = load volatile i32, i32* %11, align 4, !dbg !21, !tbaa !14
  store i32 %12, i32* %2, align 4, !dbg !22, !tbaa !14
  %13 = bitcast i32* %3 to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !23
  %14 = call i32 (...) @rand(), !dbg !24
  store i32 %14, i32* %3, align 4, !dbg !25, !tbaa !14
  %15 = load i32, i32* %3, align 4, !dbg !26, !tbaa !14
  %16 = icmp eq i32 %15, 2, !dbg !27
  br i1 %16, label %17, label %21, !dbg !26

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4, !dbg !28, !tbaa !14
  %19 = sext i32 %18 to i64, !dbg !29
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %19, !dbg !29
  store volatile i32 2, i32* %20, align 4, !dbg !30, !tbaa !14
  br label %25, !dbg !29

21:                                               ; preds = %0
  %22 = load i32, i32* %3, align 4, !dbg !31, !tbaa !14
  %23 = sext i32 %22 to i64, !dbg !32
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %23, !dbg !32
  store volatile i32 9, i32* %24, align 4, !dbg !33, !tbaa !14
  br label %25

25:                                               ; preds = %21, %17
  %26 = load volatile i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !34, !tbaa !14
  store i32 %26, i32* %1, align 4, !dbg !35, !tbaa !14
  %27 = bitcast i32* %3 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #3, !dbg !36
  %28 = bitcast i32* %2 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3, !dbg !36
  %29 = bitcast i32* %1 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3, !dbg !36
  ret void, !dbg !36
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_007_001_isr_1() #0 !dbg !37 {
  call void (...) @idlerun(), !dbg !38
  store volatile i32 9, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 2), align 8, !dbg !39, !tbaa !14
  %1 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !40, !tbaa !14
  %2 = add nsw i32 %1, 1, !dbg !40
  store volatile i32 %2, i32* @svp_simple_007_001_global_var, align 4, !dbg !40, !tbaa !14
  %3 = load volatile i32, i32* @svp_simple_007_001_global_var, align 4, !dbg !41, !tbaa !14
  %4 = sext i32 %3 to i64, !dbg !42
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* @svp_simple_007_001_global_array, i64 0, i64 %4, !dbg !42
  store volatile i32 9, i32* %5, align 4, !dbg !43, !tbaa !14
  ret void, !dbg !44
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
!1 = !DIFile(filename: "svp_simple_007_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_007")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_007_001_main", scope: !9, file: !9, line: 26, type: !10, scopeLine: 26, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_007_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_007")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 27, column: 3, scope: !8)
!12 = !DILocation(line: 28, column: 3, scope: !8)
!13 = !DILocation(line: 32, column: 35, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 32, column: 3, scope: !8)
!19 = !DILocation(line: 32, column: 66, scope: !8)
!20 = !DILocation(line: 34, column: 45, scope: !8)
!21 = !DILocation(line: 34, column: 13, scope: !8)
!22 = !DILocation(line: 34, column: 11, scope: !8)
!23 = !DILocation(line: 36, column: 3, scope: !8)
!24 = !DILocation(line: 36, column: 11, scope: !8)
!25 = !DILocation(line: 36, column: 7, scope: !8)
!26 = !DILocation(line: 37, column: 7, scope: !8)
!27 = !DILocation(line: 37, column: 9, scope: !8)
!28 = !DILocation(line: 38, column: 37, scope: !8)
!29 = !DILocation(line: 38, column: 5, scope: !8)
!30 = !DILocation(line: 38, column: 40, scope: !8)
!31 = !DILocation(line: 40, column: 37, scope: !8)
!32 = !DILocation(line: 40, column: 5, scope: !8)
!33 = !DILocation(line: 40, column: 40, scope: !8)
!34 = !DILocation(line: 42, column: 13, scope: !8)
!35 = !DILocation(line: 42, column: 11, scope: !8)
!36 = !DILocation(line: 43, column: 1, scope: !8)
!37 = distinct !DISubprogram(name: "svp_simple_007_001_isr_1", scope: !9, file: !9, line: 45, type: !10, scopeLine: 45, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 46, column: 3, scope: !37)
!39 = !DILocation(line: 47, column: 38, scope: !37)
!40 = !DILocation(line: 49, column: 33, scope: !37)
!41 = !DILocation(line: 50, column: 35, scope: !37)
!42 = !DILocation(line: 50, column: 3, scope: !37)
!43 = !DILocation(line: 50, column: 66, scope: !37)
!44 = !DILocation(line: 51, column: 1, scope: !37)
