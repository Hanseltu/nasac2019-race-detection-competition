; ModuleID = 'svp_simple_004_001.bc'
source_filename = "./svp_simple_004_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_004_001_condition1 = global i32 1, align 4
@svp_simple_004_001_condition2 = global i32 1, align 4
@svp_simple_004_001_condition3 = global i32 1, align 4
@svp_simple_004_001_condition4 = global i32 1, align 4
@svp_simple_004_001_condition5 = global i32 1, align 4
@svp_simple_004_001_condition6 = global i32 1, align 4
@svp_simple_004_001_global_var1 = global i32 17, align 4
@svp_simple_004_001_global_var2 = global i32 34, align 4
@svp_simple_004_001_global_var3 = global i32 51, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_004_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %7 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !12
  %8 = bitcast i32* %2 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !12
  %9 = bitcast i32* %3 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !13
  %10 = bitcast i32* %4 to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !13
  %11 = bitcast i32* %5 to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !14
  %12 = bitcast i32* %6 to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !14
  call void @disable_isr(i32 2), !dbg !15
  %13 = load volatile i32, i32* @svp_simple_004_001_condition1, align 4, !dbg !16, !tbaa !17
  %14 = icmp eq i32 %13, 1, !dbg !21
  br i1 %14, label %15, label %18, !dbg !16

15:                                               ; preds = %0
  %16 = load volatile i32, i32* @svp_simple_004_001_global_var1, align 4, !dbg !22, !tbaa !17
  store i32 %16, i32* %1, align 4, !dbg !23, !tbaa !17
  %17 = load volatile i32, i32* @svp_simple_004_001_global_var3, align 4, !dbg !24, !tbaa !17
  store i32 %17, i32* %5, align 4, !dbg !25, !tbaa !17
  br label %18, !dbg !26

18:                                               ; preds = %15, %0
  %19 = load volatile i32, i32* @svp_simple_004_001_condition2, align 4, !dbg !27, !tbaa !17
  %20 = icmp eq i32 %19, 1, !dbg !28
  br i1 %20, label %21, label %24, !dbg !27

21:                                               ; preds = %18
  %22 = load volatile i32, i32* @svp_simple_004_001_global_var1, align 4, !dbg !29, !tbaa !17
  store i32 %22, i32* %2, align 4, !dbg !30, !tbaa !17
  %23 = load volatile i32, i32* @svp_simple_004_001_global_var3, align 4, !dbg !31, !tbaa !17
  store i32 %23, i32* %6, align 4, !dbg !32, !tbaa !17
  br label %24, !dbg !33

24:                                               ; preds = %21, %18
  %25 = load volatile i32, i32* @svp_simple_004_001_condition4, align 4, !dbg !34, !tbaa !17
  %26 = icmp eq i32 %25, 1, !dbg !35
  br i1 %26, label %27, label %29, !dbg !34

27:                                               ; preds = %24
  %28 = load volatile i32, i32* @svp_simple_004_001_global_var2, align 4, !dbg !36, !tbaa !17
  store i32 %28, i32* %3, align 4, !dbg !37, !tbaa !17
  br label %29, !dbg !38

29:                                               ; preds = %27, %24
  %30 = load volatile i32, i32* @svp_simple_004_001_condition5, align 4, !dbg !39, !tbaa !17
  %31 = icmp eq i32 %30, 1, !dbg !40
  br i1 %31, label %32, label %34, !dbg !39

32:                                               ; preds = %29
  %33 = load volatile i32, i32* @svp_simple_004_001_global_var2, align 4, !dbg !41, !tbaa !17
  store i32 %33, i32* %4, align 4, !dbg !42, !tbaa !17
  br label %34, !dbg !43

34:                                               ; preds = %32, %29
  %35 = bitcast i32* %6 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3, !dbg !44
  %36 = bitcast i32* %5 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #3, !dbg !44
  %37 = bitcast i32* %4 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !44
  %38 = bitcast i32* %3 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !44
  %39 = bitcast i32* %2 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !44
  %40 = bitcast i32* %1 to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !44
  ret void, !dbg !44
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare void @disable_isr(i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_004_001_isr_1() #0 !dbg !45 {
  store volatile i32 0, i32* @svp_simple_004_001_condition6, align 4, !dbg !46, !tbaa !17
  %1 = load volatile i32, i32* @svp_simple_004_001_condition3, align 4, !dbg !47, !tbaa !17
  %2 = icmp eq i32 %1, 1, !dbg !48
  br i1 %2, label %3, label %4, !dbg !47

3:                                                ; preds = %0
  store volatile i32 170, i32* @svp_simple_004_001_global_var1, align 4, !dbg !49, !tbaa !17
  br label %5, !dbg !50

4:                                                ; preds = %0
  store volatile i32 204, i32* @svp_simple_004_001_global_var3, align 4, !dbg !51, !tbaa !17
  br label %5

5:                                                ; preds = %4, %3
  call void @enable_isr(i32 2), !dbg !52
  ret void, !dbg !53
}

declare void @enable_isr(i32) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_004_001_isr_2() #0 !dbg !54 {
  %1 = load volatile i32, i32* @svp_simple_004_001_condition6, align 4, !dbg !55, !tbaa !17
  %2 = icmp eq i32 %1, 1, !dbg !56
  br i1 %2, label %3, label %4, !dbg !55

3:                                                ; preds = %0
  store volatile i32 34, i32* @svp_simple_004_001_global_var2, align 4, !dbg !57, !tbaa !17
  br label %4, !dbg !58

4:                                                ; preds = %3, %0
  ret void, !dbg !59
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_004_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_004")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_004_001_main", scope: !9, file: !9, line: 33, type: !10, scopeLine: 33, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_004_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_004")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 34, column: 3, scope: !8)
!12 = !DILocation(line: 35, column: 3, scope: !8)
!13 = !DILocation(line: 36, column: 3, scope: !8)
!14 = !DILocation(line: 37, column: 3, scope: !8)
!15 = !DILocation(line: 38, column: 3, scope: !8)
!16 = !DILocation(line: 40, column: 7, scope: !8)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 40, column: 37, scope: !8)
!22 = !DILocation(line: 41, column: 15, scope: !8)
!23 = !DILocation(line: 41, column: 13, scope: !8)
!24 = !DILocation(line: 42, column: 15, scope: !8)
!25 = !DILocation(line: 42, column: 13, scope: !8)
!26 = !DILocation(line: 43, column: 3, scope: !8)
!27 = !DILocation(line: 45, column: 7, scope: !8)
!28 = !DILocation(line: 45, column: 37, scope: !8)
!29 = !DILocation(line: 46, column: 15, scope: !8)
!30 = !DILocation(line: 46, column: 13, scope: !8)
!31 = !DILocation(line: 47, column: 15, scope: !8)
!32 = !DILocation(line: 47, column: 13, scope: !8)
!33 = !DILocation(line: 48, column: 3, scope: !8)
!34 = !DILocation(line: 50, column: 7, scope: !8)
!35 = !DILocation(line: 50, column: 37, scope: !8)
!36 = !DILocation(line: 50, column: 53, scope: !8)
!37 = !DILocation(line: 50, column: 51, scope: !8)
!38 = !DILocation(line: 50, column: 43, scope: !8)
!39 = !DILocation(line: 52, column: 7, scope: !8)
!40 = !DILocation(line: 52, column: 37, scope: !8)
!41 = !DILocation(line: 52, column: 53, scope: !8)
!42 = !DILocation(line: 52, column: 51, scope: !8)
!43 = !DILocation(line: 52, column: 43, scope: !8)
!44 = !DILocation(line: 53, column: 1, scope: !8)
!45 = distinct !DISubprogram(name: "svp_simple_004_001_isr_1", scope: !9, file: !9, line: 55, type: !10, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 56, column: 33, scope: !45)
!47 = !DILocation(line: 58, column: 7, scope: !45)
!48 = !DILocation(line: 58, column: 37, scope: !45)
!49 = !DILocation(line: 59, column: 36, scope: !45)
!50 = !DILocation(line: 59, column: 5, scope: !45)
!51 = !DILocation(line: 61, column: 36, scope: !45)
!52 = !DILocation(line: 63, column: 3, scope: !45)
!53 = !DILocation(line: 64, column: 1, scope: !45)
!54 = distinct !DISubprogram(name: "svp_simple_004_001_isr_2", scope: !9, file: !9, line: 66, type: !10, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 67, column: 7, scope: !54)
!56 = !DILocation(line: 67, column: 37, scope: !54)
!57 = !DILocation(line: 68, column: 36, scope: !54)
!58 = !DILocation(line: 68, column: 5, scope: !54)
!59 = !DILocation(line: 69, column: 1, scope: !54)
