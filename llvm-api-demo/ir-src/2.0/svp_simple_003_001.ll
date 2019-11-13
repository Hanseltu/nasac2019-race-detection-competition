; ModuleID = 'svp_simple_003_001.c'
source_filename = "svp_simple_003_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_003_001_global_flag = global i32 0, align 4
@svp_simple_003_001_global_var2 = common global i32 0, align 4
@svp_simple_003_001_global_var1 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_main() local_unnamed_addr #0 !dbg !8 {
  tail call void (...) @init() #2, !dbg !10
  tail call void (...) @idlerun() #2, !dbg !11
  tail call void @disable_isr(i32 1) #2, !dbg !12
  tail call void @disable_isr(i32 2) #2, !dbg !13
  br label %1, !dbg !14

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = icmp eq i32 %2, 9975, !dbg !15
  %4 = add nuw nsw i32 %2, 25, !dbg !16
  br i1 %3, label %5, label %1, !dbg !17

; <label>:5:                                      ; preds = %1
  %6 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !18, !tbaa !19
  br label %8, !dbg !23

; <label>:7:                                      ; preds = %28
  tail call void @enable_isr(i32 1) #2, !dbg !24
  br label %11, !dbg !25

; <label>:8:                                      ; preds = %28, %5
  %9 = phi i32 [ 10000, %5 ], [ %29, %28 ]
  %10 = icmp eq i32 %9, 10000, !dbg !23
  br i1 %10, label %26, label %28, !dbg !26

; <label>:11:                                     ; preds = %11, %7
  %12 = phi i32 [ 0, %7 ], [ %14, %11 ]
  %13 = icmp eq i32 %12, 9975, !dbg !27
  %14 = add nuw nsw i32 %12, 25, !dbg !28
  br i1 %13, label %15, label %11, !dbg !29

; <label>:15:                                     ; preds = %11
  %16 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !30, !tbaa !19
  br label %18, !dbg !31

; <label>:17:                                     ; preds = %23
  ret void, !dbg !32

; <label>:18:                                     ; preds = %23, %15
  %19 = phi i32 [ 10000, %15 ], [ %24, %23 ]
  %20 = icmp eq i32 %19, 10000, !dbg !31
  br i1 %20, label %21, label %23, !dbg !33

; <label>:21:                                     ; preds = %18
  %22 = load volatile i32, i32* @svp_simple_003_001_global_var1, align 4, !dbg !34, !tbaa !19
  br label %23, !dbg !35

; <label>:23:                                     ; preds = %18, %21
  %24 = add nsw i32 %19, -5, !dbg !36
  %25 = icmp eq i32 %24, 0, !dbg !37
  br i1 %25, label %17, label %18, !dbg !38, !llvm.loop !39

; <label>:26:                                     ; preds = %8
  %27 = load volatile i32, i32* @svp_simple_003_001_global_var2, align 4, !dbg !41, !tbaa !19
  br label %28, !dbg !42

; <label>:28:                                     ; preds = %8, %26
  %29 = add nsw i32 %9, -5, !dbg !43
  %30 = icmp eq i32 %29, 0, !dbg !44
  br i1 %30, label %7, label %8, !dbg !45, !llvm.loop !46
}

declare void @init(...) local_unnamed_addr #1

declare void @idlerun(...) local_unnamed_addr #1

declare void @disable_isr(i32) local_unnamed_addr #1

declare void @enable_isr(i32) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_isr_1() local_unnamed_addr #0 !dbg !48 {
  tail call void @enable_isr(i32 2) #2, !dbg !49
  store volatile i32 999, i32* @svp_simple_003_001_global_var2, align 4, !dbg !50, !tbaa !19
  %1 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !51, !tbaa !19
  %2 = icmp eq i32 %1, 1, !dbg !52
  br i1 %2, label %6, label %3, !dbg !51

; <label>:3:                                      ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_003_001_global_flag, align 4, !dbg !53, !tbaa !19
  %5 = icmp eq i32 %4, 2, !dbg !54
  br i1 %5, label %6, label %8, !dbg !53

; <label>:6:                                      ; preds = %3, %0
  %7 = phi i32 [ 999, %0 ], [ 888, %3 ]
  store volatile i32 %7, i32* @svp_simple_003_001_global_var1, align 4, !dbg !55, !tbaa !19
  br label %8, !dbg !56

; <label>:8:                                      ; preds = %6, %3
  ret void, !dbg !56
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_003_001_isr_2() local_unnamed_addr #0 !dbg !57 {
  tail call void (...) @idlerun() #2, !dbg !58
  store volatile i32 1, i32* @svp_simple_003_001_global_flag, align 4, !dbg !59, !tbaa !19
  ret void, !dbg !60
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_003_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_003")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_003_001_main", scope: !1, file: !1, line: 27, type: !9, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 28, column: 3, scope: !8)
!11 = !DILocation(line: 31, column: 3, scope: !8)
!12 = !DILocation(line: 33, column: 3, scope: !8)
!13 = !DILocation(line: 34, column: 3, scope: !8)
!14 = !DILocation(line: 36, column: 3, scope: !8)
!15 = !DILocation(line: 37, column: 11, scope: !8)
!16 = !DILocation(line: 36, column: 36, scope: !8)
!17 = !DILocation(line: 37, column: 9, scope: !8)
!18 = !DILocation(line: 38, column: 17, scope: !8)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 42, column: 11, scope: !8)
!24 = !DILocation(line: 47, column: 3, scope: !8)
!25 = !DILocation(line: 48, column: 3, scope: !8)
!26 = !DILocation(line: 42, column: 9, scope: !8)
!27 = !DILocation(line: 49, column: 11, scope: !8)
!28 = !DILocation(line: 48, column: 36, scope: !8)
!29 = !DILocation(line: 49, column: 9, scope: !8)
!30 = !DILocation(line: 50, column: 17, scope: !8)
!31 = !DILocation(line: 54, column: 11, scope: !8)
!32 = !DILocation(line: 58, column: 1, scope: !8)
!33 = !DILocation(line: 54, column: 9, scope: !8)
!34 = !DILocation(line: 55, column: 17, scope: !8)
!35 = !DILocation(line: 56, column: 5, scope: !8)
!36 = !DILocation(line: 53, column: 36, scope: !8)
!37 = !DILocation(line: 53, column: 30, scope: !8)
!38 = !DILocation(line: 53, column: 3, scope: !8)
!39 = distinct !{!39, !38, !40}
!40 = !DILocation(line: 57, column: 3, scope: !8)
!41 = !DILocation(line: 43, column: 17, scope: !8)
!42 = !DILocation(line: 44, column: 5, scope: !8)
!43 = !DILocation(line: 41, column: 36, scope: !8)
!44 = !DILocation(line: 41, column: 30, scope: !8)
!45 = !DILocation(line: 41, column: 3, scope: !8)
!46 = distinct !{!46, !45, !47}
!47 = !DILocation(line: 45, column: 3, scope: !8)
!48 = distinct !DISubprogram(name: "svp_simple_003_001_isr_1", scope: !1, file: !1, line: 60, type: !9, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!49 = !DILocation(line: 61, column: 3, scope: !48)
!50 = !DILocation(line: 62, column: 34, scope: !48)
!51 = !DILocation(line: 64, column: 7, scope: !48)
!52 = !DILocation(line: 64, column: 38, scope: !48)
!53 = !DILocation(line: 66, column: 14, scope: !48)
!54 = !DILocation(line: 66, column: 45, scope: !48)
!55 = !DILocation(line: 0, scope: !48)
!56 = !DILocation(line: 69, column: 1, scope: !48)
!57 = distinct !DISubprogram(name: "svp_simple_003_001_isr_2", scope: !1, file: !1, line: 71, type: !9, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagAllCallsDescribed, isOptimized: true, unit: !0, retainedNodes: !2)
!58 = !DILocation(line: 72, column: 3, scope: !57)
!59 = !DILocation(line: 73, column: 34, scope: !57)
!60 = !DILocation(line: 74, column: 1, scope: !57)
