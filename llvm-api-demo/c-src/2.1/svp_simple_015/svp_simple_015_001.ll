; ModuleID = 'svp_simple_015_001.bc'
source_filename = "./svp_simple_015_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_015_001_global_var1 = common global i32 0, align 4
@svp_simple_015_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_015_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %5 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !12
  %6 = call i32 (...) @rand(), !dbg !13
  store i32 %6, i32* %1, align 4, !dbg !14, !tbaa !15
  %7 = bitcast i32* %2 to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !19
  %8 = call i32 (...) @rand(), !dbg !20
  store i32 %8, i32* %2, align 4, !dbg !21, !tbaa !15
  %9 = bitcast i32* %3 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !22
  %10 = bitcast i32* %4 to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !23
  %11 = call i32 (...) @rand(), !dbg !24
  store i32 %11, i32* %4, align 4, !dbg !25, !tbaa !15
  %12 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !26, !tbaa !15
  %13 = load i32, i32* %2, align 4, !dbg !27, !tbaa !15
  %14 = icmp slt i32 %12, %13, !dbg !28
  br i1 %14, label %15, label %23, !dbg !29

15:                                               ; preds = %0
  %16 = load volatile i32, i32* @svp_simple_015_001_global_var1, align 4, !dbg !30, !tbaa !15
  %17 = load i32, i32* %1, align 4, !dbg !31, !tbaa !15
  %18 = icmp sgt i32 %16, %17, !dbg !32
  br i1 %18, label %19, label %23, !dbg !33

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4, !dbg !34, !tbaa !15
  %21 = load i32, i32* %2, align 4, !dbg !35, !tbaa !15
  %22 = add nsw i32 %20, %21, !dbg !36
  store i32 %22, i32* %3, align 4, !dbg !37, !tbaa !15
  br label %23, !dbg !38

23:                                               ; preds = %19, %15, %0
  %24 = load i32, i32* %4, align 4, !dbg !39, !tbaa !15
  %25 = icmp eq i32 %24, 1, !dbg !40
  br i1 %25, label %26, label %28, !dbg !39

26:                                               ; preds = %23
  %27 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !41, !tbaa !15
  br label %30, !dbg !39

28:                                               ; preds = %23
  %29 = load volatile i32, i32* @svp_simple_015_001_global_var2, align 4, !dbg !42, !tbaa !15
  br label %30, !dbg !39

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ], !dbg !39
  %32 = bitcast i32* %4 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #3, !dbg !43
  %33 = bitcast i32* %3 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #3, !dbg !43
  %34 = bitcast i32* %2 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #3, !dbg !43
  %35 = bitcast i32* %1 to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #3, !dbg !43
  ret void, !dbg !43
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare i32 @rand(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_015_001_isr_1() #0 !dbg !44 {
  call void (...) @idlerun(), !dbg !45
  store volatile i32 5, i32* @svp_simple_015_001_global_var1, align 4, !dbg !46, !tbaa !15
  store volatile i32 5, i32* @svp_simple_015_001_global_var2, align 4, !dbg !47, !tbaa !15
  ret void, !dbg !48
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
!1 = !DIFile(filename: "svp_simple_015_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_015")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_015_001_main", scope: !9, file: !9, line: 22, type: !10, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_015_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_015")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 23, column: 3, scope: !8)
!12 = !DILocation(line: 25, column: 3, scope: !8)
!13 = !DILocation(line: 25, column: 11, scope: !8)
!14 = !DILocation(line: 25, column: 7, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 26, column: 3, scope: !8)
!20 = !DILocation(line: 26, column: 11, scope: !8)
!21 = !DILocation(line: 26, column: 7, scope: !8)
!22 = !DILocation(line: 27, column: 3, scope: !8)
!23 = !DILocation(line: 28, column: 3, scope: !8)
!24 = !DILocation(line: 28, column: 11, scope: !8)
!25 = !DILocation(line: 28, column: 7, scope: !8)
!26 = !DILocation(line: 30, column: 8, scope: !8)
!27 = !DILocation(line: 30, column: 41, scope: !8)
!28 = !DILocation(line: 30, column: 39, scope: !8)
!29 = !DILocation(line: 30, column: 44, scope: !8)
!30 = !DILocation(line: 31, column: 8, scope: !8)
!31 = !DILocation(line: 31, column: 41, scope: !8)
!32 = !DILocation(line: 31, column: 39, scope: !8)
!33 = !DILocation(line: 30, column: 7, scope: !8)
!34 = !DILocation(line: 32, column: 9, scope: !8)
!35 = !DILocation(line: 32, column: 13, scope: !8)
!36 = !DILocation(line: 32, column: 11, scope: !8)
!37 = !DILocation(line: 32, column: 7, scope: !8)
!38 = !DILocation(line: 32, column: 5, scope: !8)
!39 = !DILocation(line: 34, column: 3, scope: !8)
!40 = !DILocation(line: 34, column: 5, scope: !8)
!41 = !DILocation(line: 34, column: 12, scope: !8)
!42 = !DILocation(line: 34, column: 45, scope: !8)
!43 = !DILocation(line: 35, column: 1, scope: !8)
!44 = distinct !DISubprogram(name: "svp_simple_015_001_isr_1", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!45 = !DILocation(line: 38, column: 3, scope: !44)
!46 = !DILocation(line: 39, column: 34, scope: !44)
!47 = !DILocation(line: 40, column: 34, scope: !44)
!48 = !DILocation(line: 41, column: 1, scope: !44)
