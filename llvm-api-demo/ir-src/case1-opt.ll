; ModuleID = 'case1.c'
source_filename = "case1.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@shared1_uchar = common global i8 0, align 1

; Function Attrs: norecurse nounwind ssp uwtable
define void @case1_main() local_unnamed_addr #0 !dbg !8 {
  %1 = load volatile i8, i8* @shared1_uchar, align 1, !dbg !10, !tbaa !11
  %2 = icmp eq i8 %1, 0, !dbg !14
  br i1 %2, label %5, label %3, !dbg !10

; <label>:3:                                      ; preds = %0
  %4 = load volatile i8, i8* @shared1_uchar, align 1, !dbg !15, !tbaa !11
  br label %5, !dbg !16

; <label>:5:                                      ; preds = %0, %3
  ret void, !dbg !17
}

; Function Attrs: nounwind ssp uwtable
define void @case1_isr() local_unnamed_addr #1 !dbg !18 {
  tail call void (...) @idlerun() #3, !dbg !19
  store volatile i8 1, i8* @shared1_uchar, align 1, !dbg !20, !tbaa !11
  tail call void (...) @idlerun() #3, !dbg !21
  ret void, !dbg !22
}

declare void @idlerun(...) local_unnamed_addr #2

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "case1.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "case1_main", scope: !1, file: !1, line: 15, type: !9, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 19, column: 5, scope: !8)
!11 = !{!12, !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !DILocation(line: 19, column: 19, scope: !8)
!15 = !DILocation(line: 20, column: 9, scope: !8)
!16 = !DILocation(line: 21, column: 2, scope: !8)
!17 = !DILocation(line: 22, column: 1, scope: !8)
!18 = distinct !DISubprogram(name: "case1_isr", scope: !1, file: !1, line: 24, type: !9, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 26, column: 2, scope: !18)
!20 = !DILocation(line: 27, column: 16, scope: !18)
!21 = !DILocation(line: 28, column: 2, scope: !18)
!22 = !DILocation(line: 29, column: 1, scope: !18)
