; ModuleID = 'case4.c'
source_filename = "case4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@arr_case4 = common global [10 x i8] zeroinitializer, align 1

; Function Attrs: nounwind ssp uwtable
define void @case4_main() local_unnamed_addr #0 !dbg !8 {
  store volatile i8 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @arr_case4, i64 0, i64 0), align 1, !dbg !10, !tbaa !11
  tail call void (...) @idlerun() #2, !dbg !14
  store volatile i8 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @arr_case4, i64 0, i64 0), align 1, !dbg !15, !tbaa !11
  ret void, !dbg !16
}

declare void @idlerun(...) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @case4_isr() local_unnamed_addr #0 !dbg !17 {
  %1 = load volatile i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @arr_case4, i64 0, i64 0), align 1, !dbg !18, !tbaa !11
  tail call void (...) @idlerun() #2, !dbg !19
  ret void, !dbg !20
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "case4.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "case4_main", scope: !1, file: !1, line: 13, type: !9, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 15, column: 15, scope: !8)
!11 = !{!12, !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !DILocation(line: 16, column: 2, scope: !8)
!15 = !DILocation(line: 17, column: 15, scope: !8)
!16 = !DILocation(line: 18, column: 1, scope: !8)
!17 = distinct !DISubprogram(name: "case4_isr", scope: !1, file: !1, line: 20, type: !9, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!18 = !DILocation(line: 22, column: 8, scope: !17)
!19 = !DILocation(line: 23, column: 2, scope: !17)
!20 = !DILocation(line: 24, column: 1, scope: !17)
