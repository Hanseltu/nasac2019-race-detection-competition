; ModuleID = 'svp_simple_020_001-opt-opt.bc'
source_filename = "./svp_simple_020_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_020_001_global_flag = dso_local global i32 0, align 4
@svp_simple_020_001_global_para = common dso_local global i32 0, align 4
@svp_simple_020_001_global_var = common dso_local global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_020_001_main() #0 !dbg !7 {
  call void (...) @init() #3, !dbg !10
  call void @disable_isr(i32 2) #3, !dbg !11
  %1 = call i32 (...) @rand() #3, !dbg !12
  %2 = call i32 (...) @rand() #3, !dbg !13
  %3 = add nsw i32 %2, %1, !dbg !14
  %4 = load volatile i32, i32* @svp_simple_020_001_global_para, align 4, !dbg !15, !tbaa !16
  %5 = icmp sgt i32 %3, %4, !dbg !20
  br i1 %5, label %6, label %8, !dbg !21

6:                                                ; preds = %0
  %7 = load volatile i32, i32* @svp_simple_020_001_global_var, align 4, !dbg !22, !tbaa !16
  br label %8, !dbg !23

8:                                                ; preds = %6, %0
  %9 = add nsw i32 %2, %1, !dbg !24
  %10 = load volatile i32, i32* @svp_simple_020_001_global_para, align 4, !dbg !25, !tbaa !16
  %11 = icmp slt i32 %9, %10, !dbg !26
  br i1 %11, label %12, label %14, !dbg !27

12:                                               ; preds = %8
  %13 = load volatile i32, i32* @svp_simple_020_001_global_var, align 4, !dbg !28, !tbaa !16
  br label %14, !dbg !29

14:                                               ; preds = %12, %8
  ret void, !dbg !30
}

declare dso_local void @init(...) #1

declare dso_local void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_020_001_isr_1() #0 !dbg !31 {
  store volatile i32 1, i32* @svp_simple_020_001_global_var, align 4, !dbg !32, !tbaa !16
  store volatile i32 1, i32* @svp_simple_020_001_global_flag, align 4, !dbg !33, !tbaa !16
  call void @enable_isr(i32 2) #3, !dbg !34
  ret void, !dbg !35
}

declare dso_local void @enable_isr(i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @svp_simple_020_001_isr_2() #0 !dbg !36 {
  %1 = load volatile i32, i32* @svp_simple_020_001_global_flag, align 4, !dbg !37, !tbaa !16
  %2 = icmp eq i32 %1, 1, !dbg !38
  br i1 %2, label %3, label %4, !dbg !37

3:                                                ; preds = %0
  store volatile i32 11, i32* @svp_simple_020_001_global_para, align 4, !dbg !39, !tbaa !16
  store volatile i32 5, i32* @svp_simple_020_001_global_var, align 4, !dbg !40, !tbaa !16
  br label %4, !dbg !41

4:                                                ; preds = %3, %0
  ret void, !dbg !42
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 8.0.0 (tags/RELEASE_800/final)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "svp_simple_020_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_020")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!7 = distinct !DISubprogram(name: "svp_simple_020_001_main", scope: !8, file: !8, line: 25, type: !9, scopeLine: 25, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DIFile(filename: "./svp_simple_020_001.c", directory: "/home/jack-zhou/Documents/dataset/racebench/2.1/svp_simple_020")
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !7)
!11 = !DILocation(line: 27, column: 3, scope: !7)
!12 = !DILocation(line: 30, column: 35, scope: !7)
!13 = !DILocation(line: 31, column: 35, scope: !7)
!14 = !DILocation(line: 36, column: 37, scope: !7)
!15 = !DILocation(line: 36, column: 71, scope: !7)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 36, column: 69, scope: !7)
!21 = !DILocation(line: 36, column: 7, scope: !7)
!22 = !DILocation(line: 37, column: 15, scope: !7)
!23 = !DILocation(line: 37, column: 5, scope: !7)
!24 = !DILocation(line: 39, column: 37, scope: !7)
!25 = !DILocation(line: 39, column: 71, scope: !7)
!26 = !DILocation(line: 39, column: 69, scope: !7)
!27 = !DILocation(line: 39, column: 7, scope: !7)
!28 = !DILocation(line: 40, column: 15, scope: !7)
!29 = !DILocation(line: 40, column: 5, scope: !7)
!30 = !DILocation(line: 41, column: 1, scope: !7)
!31 = distinct !DISubprogram(name: "svp_simple_020_001_isr_1", scope: !8, file: !8, line: 43, type: !9, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!32 = !DILocation(line: 44, column: 33, scope: !31)
!33 = !DILocation(line: 46, column: 34, scope: !31)
!34 = !DILocation(line: 47, column: 3, scope: !31)
!35 = !DILocation(line: 48, column: 1, scope: !31)
!36 = distinct !DISubprogram(name: "svp_simple_020_001_isr_2", scope: !8, file: !8, line: 50, type: !9, scopeLine: 50, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 51, column: 7, scope: !36)
!38 = !DILocation(line: 51, column: 38, scope: !36)
!39 = !DILocation(line: 52, column: 36, scope: !36)
!40 = !DILocation(line: 53, column: 35, scope: !36)
!41 = !DILocation(line: 54, column: 3, scope: !36)
!42 = !DILocation(line: 55, column: 1, scope: !36)
