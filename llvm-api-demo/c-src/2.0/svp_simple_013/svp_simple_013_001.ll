; ModuleID = 'svp_simple_013_001.c'
source_filename = "svp_simple_013_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_013_001_global_flag1 = local_unnamed_addr global i32 0, align 4
@svp_simple_013_001_global_flag2 = local_unnamed_addr global i32 1, align 4
@svp_simple_013_001_global_var1 = common global i32 0, align 4
@svp_simple_013_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #3, !dbg !10
  tail call void @disable_isr(i32 2) #3, !dbg !11
  tail call void @disable_isr(i32 3) #3, !dbg !12
  store volatile i32 5, i32* @svp_simple_013_001_global_var1, align 4, !dbg !13, !tbaa !14
  store volatile i32 5, i32* @svp_simple_013_001_global_var2, align 4, !dbg !18, !tbaa !14
  %1 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !19, !tbaa !14
  %2 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !20, !tbaa !14
  %3 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !21, !tbaa !14
  %4 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !22, !tbaa !14
  ret void, !dbg !23
}

declare void @init(...) local_unnamed_addr #1

declare void @disable_isr(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_1() local_unnamed_addr #0 !dbg !24 {
  tail call void (...) @idlerun() #3, !dbg !25
  tail call void @enable_isr(i32 2) #3, !dbg !26
  tail call void (...) @idlerun() #3, !dbg !27
  ret void, !dbg !28
}

declare void @idlerun(...) local_unnamed_addr #1

declare void @enable_isr(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_2() local_unnamed_addr #0 !dbg !29 {
  tail call void (...) @idlerun() #3, !dbg !30
  store i32 1, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !31, !tbaa !14
  store i32 0, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !32, !tbaa !14
  tail call void @enable_isr(i32 3) #3, !dbg !33
  tail call void (...) @idlerun() #3, !dbg !34
  ret void, !dbg !35
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @svp_simple_013_001_isr_3() local_unnamed_addr #2 !dbg !36 {
  %1 = load i32, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !37, !tbaa !14
  %2 = icmp eq i32 %1, 1, !dbg !38
  br i1 %2, label %3, label %4, !dbg !37

; <label>:3:                                      ; preds = %0
  store volatile i32 1, i32* @svp_simple_013_001_global_var1, align 4, !dbg !39, !tbaa !14
  br label %4, !dbg !40

; <label>:4:                                      ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !41, !tbaa !14
  %6 = icmp eq i32 %5, 1, !dbg !42
  br i1 %6, label %7, label %8, !dbg !41

; <label>:7:                                      ; preds = %4
  store volatile i32 1, i32* @svp_simple_013_001_global_var2, align 4, !dbg !43, !tbaa !14
  br label %8, !dbg !44

; <label>:8:                                      ; preds = %7, %4
  ret void, !dbg !45
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_013")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_013_001_main", scope: !1, file: !1, line: 28, type: !9, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 29, column: 3, scope: !8)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 31, column: 3, scope: !8)
!13 = !DILocation(line: 33, column: 34, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 34, column: 34, scope: !8)
!19 = !DILocation(line: 39, column: 33, scope: !8)
!20 = !DILocation(line: 41, column: 13, scope: !8)
!21 = !DILocation(line: 43, column: 13, scope: !8)
!22 = !DILocation(line: 45, column: 13, scope: !8)
!23 = !DILocation(line: 46, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "svp_simple_013_001_isr_1", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 49, column: 3, scope: !24)
!26 = !DILocation(line: 50, column: 3, scope: !24)
!27 = !DILocation(line: 51, column: 3, scope: !24)
!28 = !DILocation(line: 52, column: 1, scope: !24)
!29 = distinct !DISubprogram(name: "svp_simple_013_001_isr_2", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!30 = !DILocation(line: 55, column: 3, scope: !29)
!31 = !DILocation(line: 56, column: 35, scope: !29)
!32 = !DILocation(line: 58, column: 35, scope: !29)
!33 = !DILocation(line: 60, column: 3, scope: !29)
!34 = !DILocation(line: 61, column: 3, scope: !29)
!35 = !DILocation(line: 62, column: 1, scope: !29)
!36 = distinct !DISubprogram(name: "svp_simple_013_001_isr_3", scope: !1, file: !1, line: 64, type: !9, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 65, column: 7, scope: !36)
!38 = !DILocation(line: 65, column: 39, scope: !36)
!39 = !DILocation(line: 65, column: 76, scope: !36)
!40 = !DILocation(line: 65, column: 45, scope: !36)
!41 = !DILocation(line: 66, column: 7, scope: !36)
!42 = !DILocation(line: 66, column: 39, scope: !36)
!43 = !DILocation(line: 66, column: 76, scope: !36)
!44 = !DILocation(line: 66, column: 45, scope: !36)
!45 = !DILocation(line: 67, column: 1, scope: !36)
