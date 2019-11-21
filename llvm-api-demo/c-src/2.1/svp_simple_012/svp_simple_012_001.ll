; ModuleID = 'svp_simple_012_001.bc'
source_filename = "./svp_simple_012_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_012_001_global_var = common global i32 0, align 4
@svp_simple_012_001_global_pointer = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_012_001_main() #0 !dbg !8 {
  %1 = alloca i32*, align 8
  call void (...) @init(), !dbg !11
  %2 = bitcast i32** %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #3, !dbg !12
  store i32* @svp_simple_012_001_global_var, i32** %1, align 8, !dbg !13, !tbaa !14
  store i32 1, i32* @svp_simple_012_001_global_var, align 4, !dbg !18, !tbaa !19
  %3 = load i32*, i32** %1, align 8, !dbg !21, !tbaa !14
  store i32 2, i32* %3, align 4, !dbg !22, !tbaa !19
  %4 = bitcast i32** %1 to i8*, !dbg !23
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #3, !dbg !23
  ret void, !dbg !23
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_012_001_isr_1() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !25
  %3 = load i32, i32* @svp_simple_012_001_global_var, align 4, !dbg !26, !tbaa !19
  store i32 %3, i32* %1, align 4, !dbg !27, !tbaa !19
  %4 = bitcast i32* %1 to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #3, !dbg !28
  ret void, !dbg !28
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_012_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_012")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_012_001_main", scope: !9, file: !9, line: 23, type: !10, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_012_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_012")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 24, column: 3, scope: !8)
!12 = !DILocation(line: 25, column: 3, scope: !8)
!13 = !DILocation(line: 25, column: 8, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 27, column: 33, scope: !8)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !16, i64 0}
!21 = !DILocation(line: 29, column: 4, scope: !8)
!22 = !DILocation(line: 29, column: 6, scope: !8)
!23 = !DILocation(line: 30, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "svp_simple_012_001_isr_1", scope: !9, file: !9, line: 32, type: !10, scopeLine: 32, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 33, column: 3, scope: !24)
!26 = !DILocation(line: 34, column: 13, scope: !24)
!27 = !DILocation(line: 34, column: 11, scope: !24)
!28 = !DILocation(line: 35, column: 1, scope: !24)
