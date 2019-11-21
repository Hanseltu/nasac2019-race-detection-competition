; ModuleID = 'svp_simple_019_001-opt.bc'
source_filename = "./svp_simple_019_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_019_001_global_condition1 = global i32 1, align 4
@svp_simple_019_001_global_condiiton2 = global i32 1, align 4
@svp_simple_019_001_global_condition3 = global i32 1, align 4
@svp_simple_019_001_global_para1 = common global i32 0, align 4
@svp_simple_019_001_global_para2 = common global i32 0, align 4
@svp_simple_019_001_global_para3 = common global i32 0, align 4
@svp_simple_019_001_global_var1 = common global i32 0, align 4
@svp_simple_019_001_global_var2 = common global i32 0, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_019_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  %1 = call i32 (...) @rand(), !dbg !12
  %2 = srem i32 %1, 10, !dbg !13
  store volatile i32 %2, i32* @svp_simple_019_001_global_para1, align 4, !dbg !14, !tbaa !15
  %3 = call i32 (...) @rand(), !dbg !19
  %4 = srem i32 %3, 10, !dbg !20
  store volatile i32 %4, i32* @svp_simple_019_001_global_para2, align 4, !dbg !21, !tbaa !15
  %5 = call i32 (...) @rand(), !dbg !22
  %6 = srem i32 %5, 10, !dbg !23
  store volatile i32 %6, i32* @svp_simple_019_001_global_para3, align 4, !dbg !24, !tbaa !15
  %7 = call i32 (...) @rand(), !dbg !25
  store volatile i32 %7, i32* @svp_simple_019_001_global_var1, align 4, !dbg !26, !tbaa !15
  %8 = load volatile i32, i32* @svp_simple_019_001_global_para1, align 4, !dbg !27, !tbaa !15
  %9 = load volatile i32, i32* @svp_simple_019_001_global_para3, align 4, !dbg !28, !tbaa !15
  %10 = add nsw i32 %8, %9, !dbg !29
  %11 = load volatile i32, i32* @svp_simple_019_001_global_para2, align 4, !dbg !30, !tbaa !15
  %12 = icmp sgt i32 %10, %11, !dbg !31
  br i1 %12, label %13, label %15, !dbg !32

13:                                               ; preds = %0
  %14 = load volatile i32, i32* @svp_simple_019_001_global_var2, align 4, !dbg !33, !tbaa !15
  br label %15, !dbg !34

15:                                               ; preds = %13, %0
  %16 = load volatile i32, i32* @svp_simple_019_001_global_var2, align 4, !dbg !35, !tbaa !15
  %17 = load volatile i32, i32* @svp_simple_019_001_global_condition1, align 4, !dbg !36, !tbaa !15
  %18 = icmp eq i32 %17, 1, !dbg !37
  br i1 %18, label %19, label %24, !dbg !38

19:                                               ; preds = %15
  %20 = load volatile i32, i32* @svp_simple_019_001_global_condiiton2, align 4, !dbg !39, !tbaa !15
  %21 = icmp eq i32 %20, 1, !dbg !40
  br i1 %21, label %22, label %24, !dbg !41

22:                                               ; preds = %19
  %23 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !42, !tbaa !15
  br label %24, !dbg !43

24:                                               ; preds = %22, %19, %15
  call void (...) @idlerun(), !dbg !44
  call void @disable_isr(i32 1), !dbg !45
  %25 = load volatile i32, i32* @svp_simple_019_001_global_condition1, align 4, !dbg !46, !tbaa !15
  %26 = icmp eq i32 %25, 1, !dbg !47
  br i1 %26, label %27, label %32, !dbg !48

27:                                               ; preds = %24
  %28 = load volatile i32, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !49, !tbaa !15
  %29 = icmp eq i32 %28, 1, !dbg !50
  br i1 %29, label %30, label %32, !dbg !51

30:                                               ; preds = %27
  %31 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !52, !tbaa !15
  br label %32, !dbg !53

32:                                               ; preds = %30, %27, %24
  call void @enable_isr(i32 1), !dbg !54
  call void (...) @idlerun(), !dbg !55
  call void @disable_isr(i32 1), !dbg !56
  %33 = load volatile i32, i32* @svp_simple_019_001_global_condiiton2, align 4, !dbg !57, !tbaa !15
  %34 = icmp eq i32 %33, 1, !dbg !58
  br i1 %34, label %35, label %40, !dbg !59

35:                                               ; preds = %32
  %36 = load volatile i32, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !60, !tbaa !15
  %37 = icmp eq i32 %36, 0, !dbg !61
  br i1 %37, label %38, label %40, !dbg !62

38:                                               ; preds = %35
  %39 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !63, !tbaa !15
  br label %40, !dbg !64

40:                                               ; preds = %38, %35, %32
  call void @enable_isr(i32 1), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare void @init(...) #2

declare i32 @rand(...) #2

declare void @idlerun(...) #2

declare void @disable_isr(i32) #2

declare void @enable_isr(i32) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_019_001_isr_1() #0 !dbg !67 {
  call void (...) @idlerun(), !dbg !68
  %1 = load volatile i32, i32* @svp_simple_019_001_global_para1, align 4, !dbg !69, !tbaa !15
  %2 = load volatile i32, i32* @svp_simple_019_001_global_para3, align 4, !dbg !70, !tbaa !15
  %3 = add nsw i32 %1, %2, !dbg !71
  %4 = load volatile i32, i32* @svp_simple_019_001_global_para2, align 4, !dbg !72, !tbaa !15
  %5 = icmp slt i32 %3, %4, !dbg !73
  br i1 %5, label %6, label %7, !dbg !74

6:                                                ; preds = %0
  store volatile i32 85, i32* @svp_simple_019_001_global_var2, align 4, !dbg !75, !tbaa !15
  br label %7, !dbg !76

7:                                                ; preds = %6, %0
  store volatile i32 0, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !77, !tbaa !15
  store volatile i32 1, i32* @svp_simple_019_001_global_var1, align 4, !dbg !78, !tbaa !15
  ret void, !dbg !79
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_019_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_019")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_019_001_main", scope: !9, file: !9, line: 30, type: !10, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_019_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_019")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 32, column: 3, scope: !8)
!12 = !DILocation(line: 33, column: 37, scope: !8)
!13 = !DILocation(line: 33, column: 44, scope: !8)
!14 = !DILocation(line: 33, column: 35, scope: !8)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 34, column: 37, scope: !8)
!20 = !DILocation(line: 34, column: 44, scope: !8)
!21 = !DILocation(line: 34, column: 35, scope: !8)
!22 = !DILocation(line: 35, column: 37, scope: !8)
!23 = !DILocation(line: 35, column: 44, scope: !8)
!24 = !DILocation(line: 35, column: 35, scope: !8)
!25 = !DILocation(line: 37, column: 36, scope: !8)
!26 = !DILocation(line: 37, column: 34, scope: !8)
!27 = !DILocation(line: 39, column: 8, scope: !8)
!28 = !DILocation(line: 39, column: 42, scope: !8)
!29 = !DILocation(line: 39, column: 40, scope: !8)
!30 = !DILocation(line: 39, column: 77, scope: !8)
!31 = !DILocation(line: 39, column: 75, scope: !8)
!32 = !DILocation(line: 39, column: 7, scope: !8)
!33 = !DILocation(line: 40, column: 15, scope: !8)
!34 = !DILocation(line: 40, column: 5, scope: !8)
!35 = !DILocation(line: 42, column: 13, scope: !8)
!36 = !DILocation(line: 44, column: 8, scope: !8)
!37 = !DILocation(line: 44, column: 45, scope: !8)
!38 = !DILocation(line: 44, column: 51, scope: !8)
!39 = !DILocation(line: 44, column: 55, scope: !8)
!40 = !DILocation(line: 44, column: 92, scope: !8)
!41 = !DILocation(line: 44, column: 7, scope: !8)
!42 = !DILocation(line: 45, column: 15, scope: !8)
!43 = !DILocation(line: 45, column: 5, scope: !8)
!44 = !DILocation(line: 46, column: 3, scope: !8)
!45 = !DILocation(line: 47, column: 3, scope: !8)
!46 = !DILocation(line: 48, column: 8, scope: !8)
!47 = !DILocation(line: 48, column: 45, scope: !8)
!48 = !DILocation(line: 48, column: 51, scope: !8)
!49 = !DILocation(line: 48, column: 55, scope: !8)
!50 = !DILocation(line: 48, column: 92, scope: !8)
!51 = !DILocation(line: 48, column: 7, scope: !8)
!52 = !DILocation(line: 49, column: 15, scope: !8)
!53 = !DILocation(line: 49, column: 5, scope: !8)
!54 = !DILocation(line: 50, column: 3, scope: !8)
!55 = !DILocation(line: 51, column: 3, scope: !8)
!56 = !DILocation(line: 52, column: 3, scope: !8)
!57 = !DILocation(line: 53, column: 8, scope: !8)
!58 = !DILocation(line: 53, column: 45, scope: !8)
!59 = !DILocation(line: 53, column: 51, scope: !8)
!60 = !DILocation(line: 53, column: 55, scope: !8)
!61 = !DILocation(line: 53, column: 92, scope: !8)
!62 = !DILocation(line: 53, column: 7, scope: !8)
!63 = !DILocation(line: 54, column: 15, scope: !8)
!64 = !DILocation(line: 54, column: 5, scope: !8)
!65 = !DILocation(line: 55, column: 3, scope: !8)
!66 = !DILocation(line: 56, column: 1, scope: !8)
!67 = distinct !DISubprogram(name: "svp_simple_019_001_isr_1", scope: !9, file: !9, line: 58, type: !10, scopeLine: 58, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!68 = !DILocation(line: 59, column: 3, scope: !67)
!69 = !DILocation(line: 60, column: 8, scope: !67)
!70 = !DILocation(line: 60, column: 42, scope: !67)
!71 = !DILocation(line: 60, column: 40, scope: !67)
!72 = !DILocation(line: 60, column: 77, scope: !67)
!73 = !DILocation(line: 60, column: 75, scope: !67)
!74 = !DILocation(line: 60, column: 7, scope: !67)
!75 = !DILocation(line: 61, column: 36, scope: !67)
!76 = !DILocation(line: 61, column: 5, scope: !67)
!77 = !DILocation(line: 63, column: 40, scope: !67)
!78 = !DILocation(line: 65, column: 34, scope: !67)
!79 = !DILocation(line: 66, column: 1, scope: !67)
