; ModuleID = 'svp_simple_024_001.c'
source_filename = "svp_simple_024_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.bytetoword = type { i32 }

@svp_simple_024_001_global_array = common global [100 x i32*] zeroinitializer, align 16
@svp_simple_024_001_reset_RT = common global i8 0, align 1
@svp_simple_024_001_global_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_024_001_main() #0 !dbg !8 {
  %1 = alloca %union.bytetoword, align 4
  %2 = alloca %union.bytetoword, align 4
  %3 = alloca i32, align 4
  call void @svp_simple_024_001_init(), !dbg !10
  %4 = call i32 @svp_simple_024_001_RTData(i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i32 0), !dbg !11
  %5 = bitcast %union.bytetoword* %1 to i32*, !dbg !12
  store i32 %4, i32* %5, align 4, !dbg !13
  %6 = call i32 @svp_simple_024_001_RTData(i32* bitcast ([100 x i32*]* @svp_simple_024_001_global_array to i32*), i32 1), !dbg !14
  %7 = bitcast %union.bytetoword* %2 to i32*, !dbg !15
  store i32 %6, i32* %7, align 4, !dbg !16
  %8 = bitcast %union.bytetoword* %1 to i32*, !dbg !17
  %9 = load i32, i32* %8, align 4, !dbg !17
  %10 = bitcast %union.bytetoword* %2 to i32*, !dbg !18
  %11 = load i32, i32* %10, align 4, !dbg !18
  %12 = and i32 %11, 752, !dbg !19
  %13 = or i32 %9, %12, !dbg !20
  store i32 %13, i32* %3, align 4, !dbg !21
  %14 = load i32, i32* %3, align 4, !dbg !22
  switch i32 %14, label %17 [
    i32 752, label %15
    i32 912, label %16
  ], !dbg !23

; <label>:15:                                     ; preds = %0
  store volatile i8 1, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !24
  br label %18, !dbg !25

; <label>:16:                                     ; preds = %0
  store volatile i8 0, i8* @svp_simple_024_001_reset_RT, align 1, !dbg !26
  br label %18, !dbg !27

; <label>:17:                                     ; preds = %0
  br label %18, !dbg !28

; <label>:18:                                     ; preds = %17, %16, %15
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @svp_simple_024_001_RTData(i32*, i32) #0 !dbg !30 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.bytetoword, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8, !dbg !31
  %7 = load i32, i32* %4, align 4, !dbg !32
  %8 = add nsw i32 %7, 1, !dbg !33
  %9 = sext i32 %8 to i64, !dbg !31
  %10 = getelementptr inbounds i32, i32* %6, i64 %9, !dbg !31
  %11 = load i32, i32* %10, align 4, !dbg !31
  %12 = trunc i32 %11 to i8, !dbg !31
  %13 = bitcast %union.bytetoword* %5 to [2 x i8]*, !dbg !34
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0, !dbg !35
  store i8 %12, i8* %14, align 4, !dbg !36
  %15 = load i32*, i32** %3, align 8, !dbg !37
  %16 = load i32, i32* %4, align 4, !dbg !38
  %17 = sext i32 %16 to i64, !dbg !37
  %18 = getelementptr inbounds i32, i32* %15, i64 %17, !dbg !37
  %19 = load i32, i32* %18, align 4, !dbg !37
  %20 = trunc i32 %19 to i8, !dbg !37
  %21 = bitcast %union.bytetoword* %5 to [2 x i8]*, !dbg !39
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %21, i64 0, i64 1, !dbg !40
  store i8 %20, i8* %22, align 1, !dbg !41
  %23 = bitcast %union.bytetoword* %5 to i32*, !dbg !42
  %24 = load i32, i32* %23, align 4, !dbg !42
  ret i32 %24, !dbg !43
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_024_001_init() #0 !dbg !44 {
  %1 = call i32 (...) @rand(), !dbg !45
  store volatile i32 %1, i32* @svp_simple_024_001_global_var, align 4, !dbg !46
  call void (...) @init(), !dbg !47
  ret void, !dbg !48
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_024_001_isr_1() #0 !dbg !49 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4, !dbg !50
  br label %2, !dbg !51

; <label>:2:                                      ; preds = %9, %0
  %3 = load i32, i32* %1, align 4, !dbg !52
  %4 = icmp slt i32 %3, 100, !dbg !53
  br i1 %4, label %5, label %12, !dbg !54

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !dbg !55
  %7 = sext i32 %6 to i64, !dbg !56
  %8 = getelementptr inbounds [100 x i32*], [100 x i32*]* @svp_simple_024_001_global_array, i64 0, i64 %7, !dbg !56
  store i32* null, i32** %8, align 8, !dbg !57
  br label %9, !dbg !58

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %1, align 4, !dbg !59
  %11 = add nsw i32 %10, 1, !dbg !59
  store i32 %11, i32* %1, align 4, !dbg !59
  br label %2, !dbg !54, !llvm.loop !60

; <label>:12:                                     ; preds = %2
  ret void, !dbg !61
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_024_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_024")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_024_001_main", scope: !1, file: !1, line: 29, type: !9, isLocal: false, isDefinition: true, scopeLine: 29, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 31, column: 3, scope: !8)
!11 = !DILocation(line: 32, column: 41, scope: !8)
!12 = !DILocation(line: 32, column: 30, scope: !8)
!13 = !DILocation(line: 32, column: 39, scope: !8)
!14 = !DILocation(line: 33, column: 41, scope: !8)
!15 = !DILocation(line: 33, column: 30, scope: !8)
!16 = !DILocation(line: 33, column: 39, scope: !8)
!17 = !DILocation(line: 35, column: 34, scope: !8)
!18 = !DILocation(line: 35, column: 72, scope: !8)
!19 = !DILocation(line: 35, column: 81, scope: !8)
!20 = !DILocation(line: 35, column: 43, scope: !8)
!21 = !DILocation(line: 34, column: 7, scope: !8)
!22 = !DILocation(line: 37, column: 11, scope: !8)
!23 = !DILocation(line: 37, column: 3, scope: !8)
!24 = !DILocation(line: 39, column: 35, scope: !8)
!25 = !DILocation(line: 40, column: 7, scope: !8)
!26 = !DILocation(line: 42, column: 35, scope: !8)
!27 = !DILocation(line: 43, column: 7, scope: !8)
!28 = !DILocation(line: 45, column: 7, scope: !8)
!29 = !DILocation(line: 47, column: 1, scope: !8)
!30 = distinct !DISubprogram(name: "svp_simple_024_001_RTData", scope: !1, file: !1, line: 54, type: !9, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 56, column: 44, scope: !30)
!32 = !DILocation(line: 56, column: 50, scope: !30)
!33 = !DILocation(line: 56, column: 56, scope: !30)
!34 = !DILocation(line: 56, column: 30, scope: !30)
!35 = !DILocation(line: 56, column: 3, scope: !30)
!36 = !DILocation(line: 56, column: 42, scope: !30)
!37 = !DILocation(line: 57, column: 44, scope: !30)
!38 = !DILocation(line: 57, column: 50, scope: !30)
!39 = !DILocation(line: 57, column: 30, scope: !30)
!40 = !DILocation(line: 57, column: 3, scope: !30)
!41 = !DILocation(line: 57, column: 42, scope: !30)
!42 = !DILocation(line: 59, column: 37, scope: !30)
!43 = !DILocation(line: 59, column: 3, scope: !30)
!44 = distinct !DISubprogram(name: "svp_simple_024_001_init", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, isOptimized: false, unit: !0, retainedNodes: !2)
!45 = !DILocation(line: 49, column: 35, scope: !44)
!46 = !DILocation(line: 49, column: 33, scope: !44)
!47 = !DILocation(line: 51, column: 3, scope: !44)
!48 = !DILocation(line: 52, column: 1, scope: !44)
!49 = distinct !DISubprogram(name: "svp_simple_024_001_isr_1", scope: !1, file: !1, line: 61, type: !9, isLocal: false, isDefinition: true, scopeLine: 61, isOptimized: false, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 62, column: 12, scope: !49)
!51 = !DILocation(line: 62, column: 8, scope: !49)
!52 = !DILocation(line: 62, column: 19, scope: !49)
!53 = !DILocation(line: 62, column: 21, scope: !49)
!54 = !DILocation(line: 62, column: 3, scope: !49)
!55 = !DILocation(line: 63, column: 37, scope: !49)
!56 = !DILocation(line: 63, column: 5, scope: !49)
!57 = !DILocation(line: 63, column: 40, scope: !49)
!58 = !DILocation(line: 64, column: 3, scope: !49)
!59 = !DILocation(line: 62, column: 29, scope: !49)
!60 = distinct !{!60, !54, !58}
!61 = !DILocation(line: 65, column: 1, scope: !49)
