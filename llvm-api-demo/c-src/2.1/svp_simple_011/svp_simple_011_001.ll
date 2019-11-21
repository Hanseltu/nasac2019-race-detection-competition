; ModuleID = 'svp_simple_011_001.bc'
source_filename = "./svp_simple_011_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_011_001_global_var1 = common global i32 0, align 4
@svp_simple_011_001_global_var2 = common global i32 0, align 4
@svp_simple_011_001_u = common global i32* null, align 8
@svp_simple_011_001_global_var3 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_011_001_main() #0 !dbg !8 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  call void (...) @init(), !dbg !11
  %3 = bitcast i32** %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #3, !dbg !12
  store i32* @svp_simple_011_001_global_var1, i32** %1, align 8, !dbg !13, !tbaa !14
  %4 = bitcast i32** %2 to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #3, !dbg !18
  store i32* @svp_simple_011_001_global_var1, i32** %2, align 8, !dbg !19, !tbaa !14
  %5 = load i32*, i32** %1, align 8, !dbg !20, !tbaa !14
  store i32 1, i32* %5, align 4, !dbg !21, !tbaa !22
  %6 = load i32*, i32** %2, align 8, !dbg !24, !tbaa !14
  store i32 2, i32* %6, align 4, !dbg !25, !tbaa !22
  store i32* @svp_simple_011_001_global_var2, i32** @svp_simple_011_001_u, align 8, !dbg !26, !tbaa !14
  %7 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !27, !tbaa !14
  store volatile i32 1, i32* %7, align 4, !dbg !28, !tbaa !22
  store i32* @svp_simple_011_001_global_var3, i32** @svp_simple_011_001_u, align 8, !dbg !29, !tbaa !14
  %8 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !30, !tbaa !14
  store volatile i32 2, i32* %8, align 4, !dbg !31, !tbaa !22
  %9 = bitcast i32** %2 to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #3, !dbg !32
  %10 = bitcast i32** %1 to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #3, !dbg !32
  ret void, !dbg !32
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_011_001_isr_1() #0 !dbg !33 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast i32* %1 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !34
  %5 = bitcast i32* %2 to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !34
  %6 = bitcast i32** %3 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #3, !dbg !35
  store i32* @svp_simple_011_001_global_var1, i32** %3, align 8, !dbg !36, !tbaa !14
  %7 = load i32*, i32** %3, align 8, !dbg !37, !tbaa !14
  %8 = load i32, i32* %7, align 4, !dbg !38, !tbaa !22
  store i32 %8, i32* %1, align 4, !dbg !39, !tbaa !22
  %9 = load i32*, i32** @svp_simple_011_001_u, align 8, !dbg !40, !tbaa !14
  %10 = load volatile i32, i32* %9, align 4, !dbg !41, !tbaa !22
  store i32 %10, i32* %2, align 4, !dbg !42, !tbaa !22
  %11 = bitcast i32** %3 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #3, !dbg !43
  %12 = bitcast i32* %2 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !43
  %13 = bitcast i32* %1 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !43
  ret void, !dbg !43
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_011_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_011")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_011_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_011_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_011")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 27, column: 8, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 28, column: 3, scope: !8)
!19 = !DILocation(line: 28, column: 8, scope: !8)
!20 = !DILocation(line: 30, column: 4, scope: !8)
!21 = !DILocation(line: 30, column: 6, scope: !8)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !16, i64 0}
!24 = !DILocation(line: 31, column: 4, scope: !8)
!25 = !DILocation(line: 31, column: 6, scope: !8)
!26 = !DILocation(line: 33, column: 24, scope: !8)
!27 = !DILocation(line: 34, column: 4, scope: !8)
!28 = !DILocation(line: 34, column: 25, scope: !8)
!29 = !DILocation(line: 35, column: 24, scope: !8)
!30 = !DILocation(line: 36, column: 4, scope: !8)
!31 = !DILocation(line: 36, column: 25, scope: !8)
!32 = !DILocation(line: 37, column: 1, scope: !8)
!33 = distinct !DISubprogram(name: "svp_simple_011_001_isr_1", scope: !9, file: !9, line: 39, type: !10, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 40, column: 3, scope: !33)
!35 = !DILocation(line: 41, column: 3, scope: !33)
!36 = !DILocation(line: 41, column: 8, scope: !33)
!37 = !DILocation(line: 42, column: 14, scope: !33)
!38 = !DILocation(line: 42, column: 13, scope: !33)
!39 = !DILocation(line: 42, column: 11, scope: !33)
!40 = !DILocation(line: 43, column: 14, scope: !33)
!41 = !DILocation(line: 43, column: 13, scope: !33)
!42 = !DILocation(line: 43, column: 11, scope: !33)
!43 = !DILocation(line: 44, column: 1, scope: !33)
