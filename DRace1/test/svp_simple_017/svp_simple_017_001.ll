; ModuleID = 'svp_simple_017_001.bc'
source_filename = "./svp_simple_017_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_017_001_global_var = common global i32 0, align 4
@svp_simple_017_001_local_array = common global [100 x i32] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_017_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %2 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !12
  store i32 0, i32* %1, align 4, !dbg !13, !tbaa !14
  store volatile i32 0, i32* @svp_simple_017_001_global_var, align 4, !dbg !18, !tbaa !14
  br label %3, !dbg !19

3:                                                ; preds = %12, %0
  %4 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !20, !tbaa !14
  %5 = icmp slt i32 %4, 100, !dbg !21
  br i1 %5, label %6, label %15, !dbg !22

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4, !dbg !23, !tbaa !14
  %8 = add nsw i32 %7, 1, !dbg !23
  store i32 %8, i32* %1, align 4, !dbg !23, !tbaa !14
  %9 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !24, !tbaa !14
  %10 = sext i32 %9 to i64, !dbg !25
  %11 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_017_001_local_array, i64 0, i64 %10, !dbg !25
  store volatile i32 %7, i32* %11, align 4, !dbg !26, !tbaa !14
  br label %12, !dbg !27

12:                                               ; preds = %6
  %13 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !28, !tbaa !14
  %14 = add nsw i32 %13, 1, !dbg !28
  store volatile i32 %14, i32* @svp_simple_017_001_global_var, align 4, !dbg !28, !tbaa !14
  br label %3, !dbg !22, !llvm.loop !29

15:                                               ; preds = %3
  %16 = bitcast i32* %1 to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !30
  ret void, !dbg !30
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_017_001_isr_1() #0 !dbg !31 {
  call void (...) @idlerun(), !dbg !32
  store volatile i32 50, i32* @svp_simple_017_001_global_var, align 4, !dbg !33, !tbaa !14
  %1 = load volatile i32, i32* @svp_simple_017_001_global_var, align 4, !dbg !34, !tbaa !14
  %2 = sext i32 %1 to i64, !dbg !35
  %3 = getelementptr inbounds [100 x i32], [100 x i32]* @svp_simple_017_001_local_array, i64 0, i64 %2, !dbg !35
  store volatile i32 0, i32* %3, align 4, !dbg !36, !tbaa !14
  ret void, !dbg !37
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
!1 = !DIFile(filename: "svp_simple_017_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_017")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_017_001_main", scope: !9, file: !9, line: 25, type: !10, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_017_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_017")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 26, column: 3, scope: !8)
!12 = !DILocation(line: 27, column: 3, scope: !8)
!13 = !DILocation(line: 27, column: 7, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 29, column: 38, scope: !8)
!19 = !DILocation(line: 29, column: 8, scope: !8)
!20 = !DILocation(line: 29, column: 43, scope: !8)
!21 = !DILocation(line: 29, column: 73, scope: !8)
!22 = !DILocation(line: 29, column: 3, scope: !8)
!23 = !DILocation(line: 32, column: 70, scope: !8)
!24 = !DILocation(line: 32, column: 36, scope: !8)
!25 = !DILocation(line: 32, column: 5, scope: !8)
!26 = !DILocation(line: 32, column: 67, scope: !8)
!27 = !DILocation(line: 33, column: 3, scope: !8)
!28 = !DILocation(line: 30, column: 37, scope: !8)
!29 = distinct !{!29, !22, !27}
!30 = !DILocation(line: 34, column: 1, scope: !8)
!31 = distinct !DISubprogram(name: "svp_simple_017_001_isr_1", scope: !9, file: !9, line: 36, type: !10, scopeLine: 36, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!32 = !DILocation(line: 37, column: 3, scope: !31)
!33 = !DILocation(line: 39, column: 33, scope: !31)
!34 = !DILocation(line: 41, column: 34, scope: !31)
!35 = !DILocation(line: 41, column: 3, scope: !31)
!36 = !DILocation(line: 41, column: 65, scope: !31)
!37 = !DILocation(line: 42, column: 1, scope: !31)
