; ModuleID = 'svp_simple_019_001.bc'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %1 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !11
  %7 = bitcast i32* %2 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !11
  %8 = bitcast i32* %3 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !11
  %9 = bitcast i32* %4 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !11
  %10 = bitcast i32* %5 to i8*, !dbg !11
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !11
  call void (...) @init(), !dbg !12
  %11 = call i32 (...) @rand(), !dbg !13
  %12 = srem i32 %11, 10, !dbg !14
  store volatile i32 %12, i32* @svp_simple_019_001_global_para1, align 4, !dbg !15, !tbaa !16
  %13 = call i32 (...) @rand(), !dbg !20
  %14 = srem i32 %13, 10, !dbg !21
  store volatile i32 %14, i32* @svp_simple_019_001_global_para2, align 4, !dbg !22, !tbaa !16
  %15 = call i32 (...) @rand(), !dbg !23
  %16 = srem i32 %15, 10, !dbg !24
  store volatile i32 %16, i32* @svp_simple_019_001_global_para3, align 4, !dbg !25, !tbaa !16
  %17 = call i32 (...) @rand(), !dbg !26
  store volatile i32 %17, i32* @svp_simple_019_001_global_var1, align 4, !dbg !27, !tbaa !16
  %18 = load volatile i32, i32* @svp_simple_019_001_global_para1, align 4, !dbg !28, !tbaa !16
  %19 = load volatile i32, i32* @svp_simple_019_001_global_para3, align 4, !dbg !29, !tbaa !16
  %20 = add nsw i32 %18, %19, !dbg !30
  %21 = load volatile i32, i32* @svp_simple_019_001_global_para2, align 4, !dbg !31, !tbaa !16
  %22 = icmp sgt i32 %20, %21, !dbg !32
  br i1 %22, label %23, label %25, !dbg !33

23:                                               ; preds = %0
  %24 = load volatile i32, i32* @svp_simple_019_001_global_var2, align 4, !dbg !34, !tbaa !16
  store i32 %24, i32* %1, align 4, !dbg !35, !tbaa !16
  br label %25, !dbg !36

25:                                               ; preds = %23, %0
  %26 = load volatile i32, i32* @svp_simple_019_001_global_var2, align 4, !dbg !37, !tbaa !16
  store i32 %26, i32* %2, align 4, !dbg !38, !tbaa !16
  %27 = load volatile i32, i32* @svp_simple_019_001_global_condition1, align 4, !dbg !39, !tbaa !16
  %28 = icmp eq i32 %27, 1, !dbg !40
  br i1 %28, label %29, label %34, !dbg !41

29:                                               ; preds = %25
  %30 = load volatile i32, i32* @svp_simple_019_001_global_condiiton2, align 4, !dbg !42, !tbaa !16
  %31 = icmp eq i32 %30, 1, !dbg !43
  br i1 %31, label %32, label %34, !dbg !44

32:                                               ; preds = %29
  %33 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !45, !tbaa !16
  store i32 %33, i32* %3, align 4, !dbg !46, !tbaa !16
  br label %34, !dbg !47

34:                                               ; preds = %32, %29, %25
  call void (...) @idlerun(), !dbg !48
  call void @disable_isr(i32 1), !dbg !49
  %35 = load volatile i32, i32* @svp_simple_019_001_global_condition1, align 4, !dbg !50, !tbaa !16
  %36 = icmp eq i32 %35, 1, !dbg !51
  br i1 %36, label %37, label %42, !dbg !52

37:                                               ; preds = %34
  %38 = load volatile i32, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !53, !tbaa !16
  %39 = icmp eq i32 %38, 1, !dbg !54
  br i1 %39, label %40, label %42, !dbg !55

40:                                               ; preds = %37
  %41 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !56, !tbaa !16
  store i32 %41, i32* %4, align 4, !dbg !57, !tbaa !16
  br label %42, !dbg !58

42:                                               ; preds = %40, %37, %34
  call void @enable_isr(i32 1), !dbg !59
  call void (...) @idlerun(), !dbg !60
  call void @disable_isr(i32 1), !dbg !61
  %43 = load volatile i32, i32* @svp_simple_019_001_global_condiiton2, align 4, !dbg !62, !tbaa !16
  %44 = icmp eq i32 %43, 1, !dbg !63
  br i1 %44, label %45, label %50, !dbg !64

45:                                               ; preds = %42
  %46 = load volatile i32, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !65, !tbaa !16
  %47 = icmp eq i32 %46, 0, !dbg !66
  br i1 %47, label %48, label %50, !dbg !67

48:                                               ; preds = %45
  %49 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !68, !tbaa !16
  store i32 %49, i32* %5, align 4, !dbg !69, !tbaa !16
  br label %50, !dbg !70

50:                                               ; preds = %48, %45, %42
  call void @enable_isr(i32 1), !dbg !71
  %51 = bitcast i32* %5 to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3, !dbg !72
  %52 = bitcast i32* %4 to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #3, !dbg !72
  %53 = bitcast i32* %3 to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #3, !dbg !72
  %54 = bitcast i32* %2 to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3, !dbg !72
  %55 = bitcast i32* %1 to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3, !dbg !72
  ret void, !dbg !72
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
define void @svp_simple_019_001_isr_1() #0 !dbg !73 {
  call void (...) @idlerun(), !dbg !74
  %1 = load volatile i32, i32* @svp_simple_019_001_global_para1, align 4, !dbg !75, !tbaa !16
  %2 = load volatile i32, i32* @svp_simple_019_001_global_para3, align 4, !dbg !76, !tbaa !16
  %3 = add nsw i32 %1, %2, !dbg !77
  %4 = load volatile i32, i32* @svp_simple_019_001_global_para2, align 4, !dbg !78, !tbaa !16
  %5 = icmp slt i32 %3, %4, !dbg !79
  br i1 %5, label %6, label %7, !dbg !80

6:                                                ; preds = %0
  store volatile i32 85, i32* @svp_simple_019_001_global_var2, align 4, !dbg !81, !tbaa !16
  br label %7, !dbg !82

7:                                                ; preds = %6, %0
  store volatile i32 0, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !83, !tbaa !16
  store volatile i32 1, i32* @svp_simple_019_001_global_var1, align 4, !dbg !84, !tbaa !16
  ret void, !dbg !85
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_019_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_019")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_019_001_main", scope: !9, file: !9, line: 30, type: !10, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_019_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_019")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 31, column: 3, scope: !8)
!12 = !DILocation(line: 32, column: 3, scope: !8)
!13 = !DILocation(line: 33, column: 37, scope: !8)
!14 = !DILocation(line: 33, column: 44, scope: !8)
!15 = !DILocation(line: 33, column: 35, scope: !8)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 34, column: 37, scope: !8)
!21 = !DILocation(line: 34, column: 44, scope: !8)
!22 = !DILocation(line: 34, column: 35, scope: !8)
!23 = !DILocation(line: 35, column: 37, scope: !8)
!24 = !DILocation(line: 35, column: 44, scope: !8)
!25 = !DILocation(line: 35, column: 35, scope: !8)
!26 = !DILocation(line: 37, column: 36, scope: !8)
!27 = !DILocation(line: 37, column: 34, scope: !8)
!28 = !DILocation(line: 39, column: 8, scope: !8)
!29 = !DILocation(line: 39, column: 42, scope: !8)
!30 = !DILocation(line: 39, column: 40, scope: !8)
!31 = !DILocation(line: 39, column: 77, scope: !8)
!32 = !DILocation(line: 39, column: 75, scope: !8)
!33 = !DILocation(line: 39, column: 7, scope: !8)
!34 = !DILocation(line: 40, column: 15, scope: !8)
!35 = !DILocation(line: 40, column: 13, scope: !8)
!36 = !DILocation(line: 40, column: 5, scope: !8)
!37 = !DILocation(line: 42, column: 13, scope: !8)
!38 = !DILocation(line: 42, column: 11, scope: !8)
!39 = !DILocation(line: 44, column: 8, scope: !8)
!40 = !DILocation(line: 44, column: 45, scope: !8)
!41 = !DILocation(line: 44, column: 51, scope: !8)
!42 = !DILocation(line: 44, column: 55, scope: !8)
!43 = !DILocation(line: 44, column: 92, scope: !8)
!44 = !DILocation(line: 44, column: 7, scope: !8)
!45 = !DILocation(line: 45, column: 15, scope: !8)
!46 = !DILocation(line: 45, column: 13, scope: !8)
!47 = !DILocation(line: 45, column: 5, scope: !8)
!48 = !DILocation(line: 46, column: 3, scope: !8)
!49 = !DILocation(line: 47, column: 3, scope: !8)
!50 = !DILocation(line: 48, column: 8, scope: !8)
!51 = !DILocation(line: 48, column: 45, scope: !8)
!52 = !DILocation(line: 48, column: 51, scope: !8)
!53 = !DILocation(line: 48, column: 55, scope: !8)
!54 = !DILocation(line: 48, column: 92, scope: !8)
!55 = !DILocation(line: 48, column: 7, scope: !8)
!56 = !DILocation(line: 49, column: 15, scope: !8)
!57 = !DILocation(line: 49, column: 13, scope: !8)
!58 = !DILocation(line: 49, column: 5, scope: !8)
!59 = !DILocation(line: 50, column: 3, scope: !8)
!60 = !DILocation(line: 51, column: 3, scope: !8)
!61 = !DILocation(line: 52, column: 3, scope: !8)
!62 = !DILocation(line: 53, column: 8, scope: !8)
!63 = !DILocation(line: 53, column: 45, scope: !8)
!64 = !DILocation(line: 53, column: 51, scope: !8)
!65 = !DILocation(line: 53, column: 55, scope: !8)
!66 = !DILocation(line: 53, column: 92, scope: !8)
!67 = !DILocation(line: 53, column: 7, scope: !8)
!68 = !DILocation(line: 54, column: 15, scope: !8)
!69 = !DILocation(line: 54, column: 13, scope: !8)
!70 = !DILocation(line: 54, column: 5, scope: !8)
!71 = !DILocation(line: 55, column: 3, scope: !8)
!72 = !DILocation(line: 56, column: 1, scope: !8)
!73 = distinct !DISubprogram(name: "svp_simple_019_001_isr_1", scope: !9, file: !9, line: 58, type: !10, scopeLine: 58, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!74 = !DILocation(line: 59, column: 3, scope: !73)
!75 = !DILocation(line: 60, column: 8, scope: !73)
!76 = !DILocation(line: 60, column: 42, scope: !73)
!77 = !DILocation(line: 60, column: 40, scope: !73)
!78 = !DILocation(line: 60, column: 77, scope: !73)
!79 = !DILocation(line: 60, column: 75, scope: !73)
!80 = !DILocation(line: 60, column: 7, scope: !73)
!81 = !DILocation(line: 61, column: 36, scope: !73)
!82 = !DILocation(line: 61, column: 5, scope: !73)
!83 = !DILocation(line: 63, column: 40, scope: !73)
!84 = !DILocation(line: 65, column: 34, scope: !73)
!85 = !DILocation(line: 66, column: 1, scope: !73)
