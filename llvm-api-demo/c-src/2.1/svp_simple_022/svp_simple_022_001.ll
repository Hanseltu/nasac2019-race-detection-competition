; ModuleID = 'svp_simple_022_001.bc'
source_filename = "./svp_simple_022_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_022_001_global_var1 = common global i32 0, align 4
@svp_simple_022_001_global_array = common global [256 x i32] zeroinitializer, align 16
@svp_simple_022_001_global_var3 = common global i32 0, align 4
@svp_simple_022_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  call void @svp_simple_022_001_init(), !dbg !11
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !12, !tbaa !13
  call void @svp_simple_022_001_func_1(), !dbg !17
  %2 = bitcast i32* %1 to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !18
  store i32 0, i32* %1, align 4, !dbg !19, !tbaa !13
  br label %3, !dbg !20

3:                                                ; preds = %10, %0
  %4 = load i32, i32* %1, align 4, !dbg !21, !tbaa !13
  %5 = icmp slt i32 %4, 256, !dbg !22
  br i1 %5, label %6, label %13, !dbg !23

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4, !dbg !24, !tbaa !13
  %8 = sext i32 %7 to i64, !dbg !25
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* @svp_simple_022_001_global_array, i64 0, i64 %8, !dbg !25
  store volatile i32 0, i32* %9, align 4, !dbg !26, !tbaa !13
  br label %10, !dbg !27

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4, !dbg !28, !tbaa !13
  %12 = add nsw i32 %11, 1, !dbg !28
  store i32 %12, i32* %1, align 4, !dbg !28, !tbaa !13
  br label %3, !dbg !23, !llvm.loop !29

13:                                               ; preds = %3
  call void @svp_simple_022_001_func_2(), !dbg !30
  %14 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !31, !tbaa !13
  store volatile i32 %14, i32* @svp_simple_022_001_global_var3, align 4, !dbg !32, !tbaa !13
  %15 = bitcast i32* %1 to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3, !dbg !33
  ret void, !dbg !33
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_init() #0 !dbg !34 {
  %1 = call i32 (...) @rand(), !dbg !35
  store volatile i32 %1, i32* @svp_simple_022_001_global_var1, align 4, !dbg !36, !tbaa !13
  %2 = call i32 (...) @rand(), !dbg !37
  store volatile i32 %2, i32* @svp_simple_022_001_global_var2, align 4, !dbg !38, !tbaa !13
  %3 = call i32 (...) @rand(), !dbg !39
  store volatile i32 %3, i32* @svp_simple_022_001_global_var3, align 4, !dbg !40, !tbaa !13
  call void (...) @init(), !dbg !41
  ret void, !dbg !42
}

declare i32 @rand(...) #2

declare void @init(...) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_1() #0 !dbg !43 {
  call void @svp_simple_022_001_func_3(), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_2() #0 !dbg !46 {
  call void @svp_simple_022_001_func_4(), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_3() #0 !dbg !49 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !50, !tbaa !13
  %2 = icmp sge i32 %1, 12, !dbg !51
  br i1 %2, label %3, label %4, !dbg !50

3:                                                ; preds = %0
  store volatile i32 12, i32* @svp_simple_022_001_global_var1, align 4, !dbg !52, !tbaa !13
  br label %5, !dbg !53

4:                                                ; preds = %0
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !54, !tbaa !13
  br label %5

5:                                                ; preds = %4, %3
  ret void, !dbg !55
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_func_4() #0 !dbg !56 {
  %1 = load volatile i32, i32* @svp_simple_022_001_global_var1, align 4, !dbg !57, !tbaa !13
  store volatile i32 %1, i32* @svp_simple_022_001_global_var3, align 4, !dbg !58, !tbaa !13
  ret void, !dbg !59
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_022_001_isr_1() #0 !dbg !60 {
  store volatile i32 0, i32* @svp_simple_022_001_global_var1, align 4, !dbg !61, !tbaa !13
  ret void, !dbg !62
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_022_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_022")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_022_001_main", scope: !9, file: !9, line: 29, type: !10, scopeLine: 29, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_022_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_022")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 30, column: 3, scope: !8)
!12 = !DILocation(line: 32, column: 34, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 33, column: 3, scope: !8)
!18 = !DILocation(line: 34, column: 3, scope: !8)
!19 = !DILocation(line: 35, column: 10, scope: !8)
!20 = !DILocation(line: 35, column: 8, scope: !8)
!21 = !DILocation(line: 35, column: 15, scope: !8)
!22 = !DILocation(line: 35, column: 17, scope: !8)
!23 = !DILocation(line: 35, column: 3, scope: !8)
!24 = !DILocation(line: 36, column: 37, scope: !8)
!25 = !DILocation(line: 36, column: 5, scope: !8)
!26 = !DILocation(line: 36, column: 40, scope: !8)
!27 = !DILocation(line: 37, column: 3, scope: !8)
!28 = !DILocation(line: 35, column: 25, scope: !8)
!29 = distinct !{!29, !23, !27}
!30 = !DILocation(line: 38, column: 3, scope: !8)
!31 = !DILocation(line: 39, column: 36, scope: !8)
!32 = !DILocation(line: 39, column: 34, scope: !8)
!33 = !DILocation(line: 40, column: 1, scope: !8)
!34 = distinct !DISubprogram(name: "svp_simple_022_001_init", scope: !9, file: !9, line: 42, type: !10, scopeLine: 42, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 43, column: 36, scope: !34)
!36 = !DILocation(line: 43, column: 34, scope: !34)
!37 = !DILocation(line: 44, column: 36, scope: !34)
!38 = !DILocation(line: 44, column: 34, scope: !34)
!39 = !DILocation(line: 45, column: 36, scope: !34)
!40 = !DILocation(line: 45, column: 34, scope: !34)
!41 = !DILocation(line: 47, column: 3, scope: !34)
!42 = !DILocation(line: 48, column: 1, scope: !34)
!43 = distinct !DISubprogram(name: "svp_simple_022_001_func_1", scope: !9, file: !9, line: 50, type: !10, scopeLine: 50, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!44 = !DILocation(line: 50, column: 36, scope: !43)
!45 = !DILocation(line: 50, column: 65, scope: !43)
!46 = distinct !DISubprogram(name: "svp_simple_022_001_func_2", scope: !9, file: !9, line: 52, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 52, column: 36, scope: !46)
!48 = !DILocation(line: 52, column: 65, scope: !46)
!49 = distinct !DISubprogram(name: "svp_simple_022_001_func_3", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 55, column: 7, scope: !49)
!51 = !DILocation(line: 55, column: 38, scope: !49)
!52 = !DILocation(line: 56, column: 36, scope: !49)
!53 = !DILocation(line: 57, column: 3, scope: !49)
!54 = !DILocation(line: 58, column: 36, scope: !49)
!55 = !DILocation(line: 60, column: 1, scope: !49)
!56 = distinct !DISubprogram(name: "svp_simple_022_001_func_4", scope: !9, file: !9, line: 62, type: !10, scopeLine: 62, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!57 = !DILocation(line: 63, column: 36, scope: !56)
!58 = !DILocation(line: 63, column: 34, scope: !56)
!59 = !DILocation(line: 64, column: 1, scope: !56)
!60 = distinct !DISubprogram(name: "svp_simple_022_001_isr_1", scope: !9, file: !9, line: 65, type: !10, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!61 = !DILocation(line: 66, column: 34, scope: !60)
!62 = !DILocation(line: 67, column: 1, scope: !60)
