; ModuleID = 'svp_simple_024_001.c'
source_filename = "svp_simple_024_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_024_001_global_array = common local_unnamed_addr global [100 x i32*] zeroinitializer, align 16
@svp_simple_024_001_reset_RT = common global i8 0, align 1
@svp_simple_024_001_global_var = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_main() local_unnamed_addr #0 !dbg !8 {
  %1 = tail call i32 (...) @rand() #5, !dbg !10
  store volatile i32 %1, i32* @svp_simple_024_001_global_var, align 4, !dbg !13, !tbaa !14
  tail call void (...) @init() #5, !dbg !18
  %2 = load i32, i32* getelementptr (i32, i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i64 1), align 4, !dbg !19, !tbaa !14
  %3 = load i32, i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), align 16, !dbg !22, !tbaa !14
  %4 = shl i32 %3, 8, !dbg !23
  %5 = and i32 %2, 255, !dbg !23
  %6 = load i32, i32* bitcast (i32** getelementptr inbounds ([100 x i32*], [100 x i32*]* @svp_simple_024_001_global_array, i64 0, i64 1) to i32*), align 8, !dbg !24, !tbaa !14
  %7 = shl i32 %2, 8, !dbg !26
  %8 = and i32 %6, 240, !dbg !26
  %9 = and i32 %7, 512, !dbg !27
  %10 = or i32 %4, %5, !dbg !27
  %11 = or i32 %10, %9, !dbg !23
  %12 = or i32 %11, %8, !dbg !28
  %13 = trunc i32 %12 to i16, !dbg !29
  switch i16 %13, label %17 [
    i16 752, label %15
    i16 912, label %14
  ], !dbg !29

; <label>:14:                                     ; preds = %0
  br label %15, !dbg !30

; <label>:15:                                     ; preds = %0, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %0 ]
  store volatile i8 %16, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !31, !tbaa !32
  br label %17, !dbg !33

; <label>:17:                                     ; preds = %15, %0
  ret void, !dbg !33
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i32 @svp_simple_024_001_RTData(i32* nocapture readonly, i32) local_unnamed_addr #1 !dbg !20 {
  %3 = add nsw i32 %1, 1, !dbg !34
  %4 = sext i32 %3 to i64, !dbg !35
  %5 = getelementptr inbounds i32, i32* %0, i64 %4, !dbg !35
  %6 = load i32, i32* %5, align 4, !dbg !35, !tbaa !14
  %7 = sext i32 %1 to i64, !dbg !36
  %8 = getelementptr inbounds i32, i32* %0, i64 %7, !dbg !36
  %9 = load i32, i32* %8, align 4, !dbg !36, !tbaa !14
  %10 = shl i32 %9, 8, !dbg !37
  %11 = and i32 %10, 65280, !dbg !37
  %12 = and i32 %6, 255, !dbg !37
  %13 = or i32 %11, %12, !dbg !37
  ret i32 %13, !dbg !38
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_024_001_init() local_unnamed_addr #0 !dbg !11 {
  %1 = tail call i32 (...) @rand() #5, !dbg !39
  store volatile i32 %1, i32* @svp_simple_024_001_global_var, align 4, !dbg !40, !tbaa !14
  tail call void (...) @init() #5, !dbg !41
  ret void, !dbg !42
}

declare i32 @rand(...) local_unnamed_addr #2

declare void @init(...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_024_001_isr_1() local_unnamed_addr #3 !dbg !43 {
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i8*), i8 0, i64 800, i1 false), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_024_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_024")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_024_001_main", scope: !1, file: !1, line: 29, type: !9, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 49, column: 35, scope: !11, inlinedAt: !12)
!11 = distinct !DISubprogram(name: "svp_simple_024_001_init", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!12 = distinct !DILocation(line: 31, column: 3, scope: !8)
!13 = !DILocation(line: 49, column: 33, scope: !11, inlinedAt: !12)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 51, column: 3, scope: !11, inlinedAt: !12)
!19 = !DILocation(line: 56, column: 44, scope: !20, inlinedAt: !21)
!20 = distinct !DISubprogram(name: "svp_simple_024_001_RTData", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!21 = distinct !DILocation(line: 32, column: 41, scope: !8)
!22 = !DILocation(line: 57, column: 44, scope: !20, inlinedAt: !21)
!23 = !DILocation(line: 60, column: 1, scope: !20, inlinedAt: !21)
!24 = !DILocation(line: 56, column: 44, scope: !20, inlinedAt: !25)
!25 = distinct !DILocation(line: 33, column: 41, scope: !8)
!26 = !DILocation(line: 60, column: 1, scope: !20, inlinedAt: !25)
!27 = !DILocation(line: 35, column: 81, scope: !8)
!28 = !DILocation(line: 35, column: 43, scope: !8)
!29 = !DILocation(line: 37, column: 3, scope: !8)
!30 = !DILocation(line: 43, column: 7, scope: !8)
!31 = !DILocation(line: 0, scope: !8)
!32 = !{!16, !16, i64 0}
!33 = !DILocation(line: 47, column: 1, scope: !8)
!34 = !DILocation(line: 56, column: 56, scope: !20)
!35 = !DILocation(line: 56, column: 44, scope: !20)
!36 = !DILocation(line: 57, column: 44, scope: !20)
!37 = !DILocation(line: 60, column: 1, scope: !20)
!38 = !DILocation(line: 59, column: 3, scope: !20)
!39 = !DILocation(line: 49, column: 35, scope: !11)
!40 = !DILocation(line: 49, column: 33, scope: !11)
!41 = !DILocation(line: 51, column: 3, scope: !11)
!42 = !DILocation(line: 52, column: 1, scope: !11)
!43 = distinct !DISubprogram(name: "svp_simple_024_001_isr_1", scope: !1, file: !1, line: 61, type: !9, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 63, column: 40, scope: !43)
!45 = !DILocation(line: 65, column: 1, scope: !43)
