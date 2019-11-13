; ModuleID = 'case3-test.c'
source_filename = "case3-test.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Time = type { i32, i32 }
%struct.Place = type { i32, i32 }

@star_time_case3 = common global %struct.Time zeroinitializer, align 4
@star_place_case3 = common global %struct.Place zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define void @case3_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @idlerun() #3, !dbg !10
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.Time, %struct.Time* @star_time_case3, i64 0, i32 1), align 4, !dbg !11, !tbaa !12
  %2 = icmp eq i32 %1, 1000, !dbg !17
  br i1 %2, label %3, label %6, !dbg !18

; <label>:3:                                      ; preds = %0
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.Time, %struct.Time* @star_time_case3, i64 0, i32 0), align 4, !dbg !19, !tbaa !20
  %5 = add nsw i32 %4, 1, !dbg !19
  store volatile i32 %5, i32* getelementptr inbounds (%struct.Time, %struct.Time* @star_time_case3, i64 0, i32 0), align 4, !dbg !19, !tbaa !20
  store volatile i32 0, i32* getelementptr inbounds (%struct.Time, %struct.Time* @star_time_case3, i64 0, i32 1), align 4, !dbg !21, !tbaa !12
  br label %6, !dbg !22

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !23
}

declare void @idlerun(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @case3_isr() local_unnamed_addr #0 !dbg !24 {
  tail call void (...) @idlerun() #3, !dbg !25
  store volatile i32 1, i32* getelementptr inbounds (%struct.Time, %struct.Time* @star_time_case3, i64 0, i32 0), align 4, !dbg !26, !tbaa !20
  store volatile i32 10, i32* getelementptr inbounds (%struct.Place, %struct.Place* @star_place_case3, i64 0, i32 0), align 4, !dbg !29, !tbaa !30
  ret void, !dbg !32
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @case3_nestedfunc() local_unnamed_addr #2 !dbg !27 {
  store volatile i32 1, i32* getelementptr inbounds (%struct.Time, %struct.Time* @star_time_case3, i64 0, i32 0), align 4, !dbg !33, !tbaa !20
  ret void, !dbg !34
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "case3-test.c", directory: "/Users/tuhaoxin/CLionProjects/llvm-api-demo/c-src")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "case3_main", scope: !1, file: !1, line: 26, type: !9, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 27, column: 2, scope: !8)
!11 = !DILocation(line: 28, column: 21, scope: !8)
!12 = !{!13, !14, i64 4}
!13 = !{!"Time", !14, i64 0, !14, i64 4}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 28, column: 29, scope: !8)
!18 = !DILocation(line: 28, column: 5, scope: !8)
!19 = !DILocation(line: 29, column: 25, scope: !8)
!20 = !{!13, !14, i64 0}
!21 = !DILocation(line: 30, column: 28, scope: !8)
!22 = !DILocation(line: 31, column: 2, scope: !8)
!23 = !DILocation(line: 33, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "case3_isr", scope: !1, file: !1, line: 35, type: !9, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 36, column: 2, scope: !24)
!26 = !DILocation(line: 44, column: 25, scope: !27, inlinedAt: !28)
!27 = distinct !DISubprogram(name: "case3_nestedfunc", scope: !1, file: !1, line: 43, type: !9, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!28 = distinct !DILocation(line: 38, column: 2, scope: !24)
!29 = !DILocation(line: 39, column: 26, scope: !24)
!30 = !{!31, !14, i64 0}
!31 = !{!"Place", !14, i64 0, !14, i64 4}
!32 = !DILocation(line: 41, column: 1, scope: !24)
!33 = !DILocation(line: 44, column: 25, scope: !27)
!34 = !DILocation(line: 45, column: 1, scope: !27)
