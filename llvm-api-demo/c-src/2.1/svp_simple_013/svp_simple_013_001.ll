; ModuleID = 'svp_simple_013_001.bc'
source_filename = "./svp_simple_013_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_013_001_global_flag1 = global i32 0, align 4
@svp_simple_013_001_global_flag2 = global i32 1, align 4
@svp_simple_013_001_global_var1 = common global i32 0, align 4
@svp_simple_013_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  call void @disable_isr(i32 2), !dbg !12
  call void @disable_isr(i32 3), !dbg !13
  %6 = bitcast i32* %1 to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !14
  %7 = bitcast i32* %2 to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !14
  %8 = bitcast i32* %3 to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !15
  %9 = bitcast i32* %4 to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !15
  %10 = bitcast i32* %5 to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !16
  store i32 0, i32* %5, align 4, !dbg !17, !tbaa !18
  br label %11, !dbg !16

11:                                               ; preds = %22, %0
  %12 = load i32, i32* %5, align 4, !dbg !22, !tbaa !18
  %13 = icmp slt i32 %12, 100, !dbg !23
  br i1 %13, label %16, label %14, !dbg !24

14:                                               ; preds = %11
  %15 = bitcast i32* %5 to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3, !dbg !24
  br label %25

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4, !dbg !25, !tbaa !18
  %18 = icmp eq i32 %17, 99, !dbg !26
  br i1 %18, label %19, label %21, !dbg !25

19:                                               ; preds = %16
  %20 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !27, !tbaa !18
  store i32 %20, i32* %1, align 4, !dbg !28, !tbaa !18
  br label %21, !dbg !29

21:                                               ; preds = %19, %16
  br label %22, !dbg !30

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4, !dbg !31, !tbaa !18
  %24 = add nsw i32 %23, 1, !dbg !31
  store i32 %24, i32* %5, align 4, !dbg !31, !tbaa !18
  br label %11, !dbg !24, !llvm.loop !32

25:                                               ; preds = %14
  %26 = load volatile i32, i32* @svp_simple_013_001_global_var1, align 4, !dbg !33, !tbaa !18
  store i32 %26, i32* %2, align 4, !dbg !34, !tbaa !18
  %27 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !35, !tbaa !18
  store i32 %27, i32* %3, align 4, !dbg !36, !tbaa !18
  %28 = load volatile i32, i32* @svp_simple_013_001_global_var2, align 4, !dbg !37, !tbaa !18
  store i32 %28, i32* %4, align 4, !dbg !38, !tbaa !18
  %29 = bitcast i32* %4 to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3, !dbg !39
  %30 = bitcast i32* %3 to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3, !dbg !39
  %31 = bitcast i32* %2 to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3, !dbg !39
  %32 = bitcast i32* %1 to i8*, !dbg !39
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3, !dbg !39
  ret void, !dbg !39
}

declare void @init(...) #1

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_1() #0 !dbg !40 {
  call void (...) @idlerun(), !dbg !41
  call void @enable_isr(i32 2), !dbg !42
  call void (...) @idlerun(), !dbg !43
  ret void, !dbg !44
}

declare void @idlerun(...) #1

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_2() #0 !dbg !45 {
  call void (...) @idlerun(), !dbg !46
  store i32 1, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !47, !tbaa !18
  store i32 0, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !48, !tbaa !18
  call void @enable_isr(i32 3), !dbg !49
  call void (...) @idlerun(), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_013_001_isr_3() #0 !dbg !52 {
  %1 = load i32, i32* @svp_simple_013_001_global_flag1, align 4, !dbg !53, !tbaa !18
  %2 = icmp eq i32 %1, 1, !dbg !54
  br i1 %2, label %3, label %4, !dbg !53

3:                                                ; preds = %0
  store volatile i32 1, i32* @svp_simple_013_001_global_var1, align 4, !dbg !55, !tbaa !18
  br label %4, !dbg !56

4:                                                ; preds = %3, %0
  %5 = load i32, i32* @svp_simple_013_001_global_flag2, align 4, !dbg !57, !tbaa !18
  %6 = icmp eq i32 %5, 1, !dbg !58
  br i1 %6, label %7, label %8, !dbg !57

7:                                                ; preds = %4
  store volatile i32 1, i32* @svp_simple_013_001_global_var2, align 4, !dbg !59, !tbaa !18
  br label %8, !dbg !60

8:                                                ; preds = %7, %4
  ret void, !dbg !61
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_013")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_013_001_main", scope: !9, file: !9, line: 28, type: !10, scopeLine: 28, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_013_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_013")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 29, column: 3, scope: !8)
!12 = !DILocation(line: 30, column: 3, scope: !8)
!13 = !DILocation(line: 31, column: 3, scope: !8)
!14 = !DILocation(line: 35, column: 3, scope: !8)
!15 = !DILocation(line: 36, column: 3, scope: !8)
!16 = !DILocation(line: 38, column: 8, scope: !8)
!17 = !DILocation(line: 38, column: 12, scope: !8)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 38, column: 19, scope: !8)
!23 = !DILocation(line: 38, column: 21, scope: !8)
!24 = !DILocation(line: 38, column: 3, scope: !8)
!25 = !DILocation(line: 39, column: 9, scope: !8)
!26 = !DILocation(line: 39, column: 11, scope: !8)
!27 = !DILocation(line: 39, column: 33, scope: !8)
!28 = !DILocation(line: 39, column: 31, scope: !8)
!29 = !DILocation(line: 39, column: 23, scope: !8)
!30 = !DILocation(line: 39, column: 14, scope: !8)
!31 = !DILocation(line: 38, column: 36, scope: !8)
!32 = distinct !{!32, !24, !27}
!33 = !DILocation(line: 41, column: 13, scope: !8)
!34 = !DILocation(line: 41, column: 11, scope: !8)
!35 = !DILocation(line: 43, column: 13, scope: !8)
!36 = !DILocation(line: 43, column: 11, scope: !8)
!37 = !DILocation(line: 45, column: 13, scope: !8)
!38 = !DILocation(line: 45, column: 11, scope: !8)
!39 = !DILocation(line: 46, column: 1, scope: !8)
!40 = distinct !DISubprogram(name: "svp_simple_013_001_isr_1", scope: !9, file: !9, line: 48, type: !10, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 49, column: 3, scope: !40)
!42 = !DILocation(line: 50, column: 3, scope: !40)
!43 = !DILocation(line: 51, column: 3, scope: !40)
!44 = !DILocation(line: 52, column: 1, scope: !40)
!45 = distinct !DISubprogram(name: "svp_simple_013_001_isr_2", scope: !9, file: !9, line: 54, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 55, column: 3, scope: !45)
!47 = !DILocation(line: 56, column: 35, scope: !45)
!48 = !DILocation(line: 58, column: 35, scope: !45)
!49 = !DILocation(line: 60, column: 3, scope: !45)
!50 = !DILocation(line: 61, column: 3, scope: !45)
!51 = !DILocation(line: 62, column: 1, scope: !45)
!52 = distinct !DISubprogram(name: "svp_simple_013_001_isr_3", scope: !9, file: !9, line: 64, type: !10, scopeLine: 64, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!53 = !DILocation(line: 65, column: 7, scope: !52)
!54 = !DILocation(line: 65, column: 39, scope: !52)
!55 = !DILocation(line: 65, column: 76, scope: !52)
!56 = !DILocation(line: 65, column: 45, scope: !52)
!57 = !DILocation(line: 66, column: 7, scope: !52)
!58 = !DILocation(line: 66, column: 39, scope: !52)
!59 = !DILocation(line: 66, column: 76, scope: !52)
!60 = !DILocation(line: 66, column: 45, scope: !52)
!61 = !DILocation(line: 67, column: 1, scope: !52)
