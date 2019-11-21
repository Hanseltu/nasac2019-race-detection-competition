; ModuleID = 'svp_simple_019_001.c'
source_filename = "svp_simple_019_001.c"
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

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_019_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  %6 = call i32 (...) @rand(), !dbg !11
  %7 = srem i32 %6, 10, !dbg !12
  store volatile i32 %7, i32* @svp_simple_019_001_global_para1, align 4, !dbg !13
  %8 = call i32 (...) @rand(), !dbg !14
  %9 = srem i32 %8, 10, !dbg !15
  store volatile i32 %9, i32* @svp_simple_019_001_global_para2, align 4, !dbg !16
  %10 = call i32 (...) @rand(), !dbg !17
  %11 = srem i32 %10, 10, !dbg !18
  store volatile i32 %11, i32* @svp_simple_019_001_global_para3, align 4, !dbg !19
  %12 = call i32 (...) @rand(), !dbg !20
  store volatile i32 %12, i32* @svp_simple_019_001_global_var1, align 4, !dbg !21
  %13 = load volatile i32, i32* @svp_simple_019_001_global_para1, align 4, !dbg !22
  %14 = load volatile i32, i32* @svp_simple_019_001_global_para3, align 4, !dbg !23
  %15 = add nsw i32 %13, %14, !dbg !24
  %16 = load volatile i32, i32* @svp_simple_019_001_global_para2, align 4, !dbg !25
  %17 = icmp sgt i32 %15, %16, !dbg !26
  br i1 %17, label %18, label %20, !dbg !27

; <label>:18:                                     ; preds = %0
  %19 = load volatile i32, i32* @svp_simple_019_001_global_var2, align 4, !dbg !28
  store i32 %19, i32* %1, align 4, !dbg !29
  br label %20, !dbg !30

; <label>:20:                                     ; preds = %18, %0
  %21 = load volatile i32, i32* @svp_simple_019_001_global_var2, align 4, !dbg !31
  store i32 %21, i32* %2, align 4, !dbg !32
  %22 = load volatile i32, i32* @svp_simple_019_001_global_condition1, align 4, !dbg !33
  %23 = icmp eq i32 %22, 1, !dbg !34
  br i1 %23, label %24, label %29, !dbg !35

; <label>:24:                                     ; preds = %20
  %25 = load volatile i32, i32* @svp_simple_019_001_global_condiiton2, align 4, !dbg !36
  %26 = icmp eq i32 %25, 1, !dbg !37
  br i1 %26, label %27, label %29, !dbg !38

; <label>:27:                                     ; preds = %24
  %28 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !39
  store i32 %28, i32* %3, align 4, !dbg !40
  br label %29, !dbg !41

; <label>:29:                                     ; preds = %27, %24, %20
  call void (...) @idlerun(), !dbg !42
  call void @disable_isr(i32 1), !dbg !43
  %30 = load volatile i32, i32* @svp_simple_019_001_global_condition1, align 4, !dbg !44
  %31 = icmp eq i32 %30, 1, !dbg !45
  br i1 %31, label %32, label %37, !dbg !46

; <label>:32:                                     ; preds = %29
  %33 = load volatile i32, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !47
  %34 = icmp eq i32 %33, 1, !dbg !48
  br i1 %34, label %35, label %37, !dbg !49

; <label>:35:                                     ; preds = %32
  %36 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !50
  store i32 %36, i32* %4, align 4, !dbg !51
  br label %37, !dbg !52

; <label>:37:                                     ; preds = %35, %32, %29
  call void @enable_isr(i32 1), !dbg !53
  call void (...) @idlerun(), !dbg !54
  call void @disable_isr(i32 1), !dbg !55
  %38 = load volatile i32, i32* @svp_simple_019_001_global_condiiton2, align 4, !dbg !56
  %39 = icmp eq i32 %38, 1, !dbg !57
  br i1 %39, label %40, label %45, !dbg !58

; <label>:40:                                     ; preds = %37
  %41 = load volatile i32, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !59
  %42 = icmp eq i32 %41, 0, !dbg !60
  br i1 %42, label %43, label %45, !dbg !61

; <label>:43:                                     ; preds = %40
  %44 = load volatile i32, i32* @svp_simple_019_001_global_var1, align 4, !dbg !62
  store i32 %44, i32* %5, align 4, !dbg !63
  br label %45, !dbg !64

; <label>:45:                                     ; preds = %43, %40, %37
  call void @enable_isr(i32 1), !dbg !65
  ret void, !dbg !66
}

declare void @init(...) #1

declare i32 @rand(...) #1

declare void @idlerun(...) #1

declare void @disable_isr(i32) #1

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_019_001_isr_1() #0 !dbg !67 {
  call void (...) @idlerun(), !dbg !68
  %1 = load volatile i32, i32* @svp_simple_019_001_global_para1, align 4, !dbg !69
  %2 = load volatile i32, i32* @svp_simple_019_001_global_para3, align 4, !dbg !70
  %3 = add nsw i32 %1, %2, !dbg !71
  %4 = load volatile i32, i32* @svp_simple_019_001_global_para2, align 4, !dbg !72
  %5 = icmp slt i32 %3, %4, !dbg !73
  br i1 %5, label %6, label %7, !dbg !74

; <label>:6:                                      ; preds = %0
  store volatile i32 85, i32* @svp_simple_019_001_global_var2, align 4, !dbg !75
  br label %7, !dbg !76

; <label>:7:                                      ; preds = %6, %0
  store volatile i32 0, i32* @svp_simple_019_001_global_condition3, align 4, !dbg !77
  store volatile i32 1, i32* @svp_simple_019_001_global_var1, align 4, !dbg !78
  ret void, !dbg !79
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_019_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_019")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_019_001_main", scope: !1, file: !1, line: 30, type: !9, isLocal: false, isDefinition: true, scopeLine: 30, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 32, column: 3, scope: !8)
!11 = !DILocation(line: 33, column: 37, scope: !8)
!12 = !DILocation(line: 33, column: 44, scope: !8)
!13 = !DILocation(line: 33, column: 35, scope: !8)
!14 = !DILocation(line: 34, column: 37, scope: !8)
!15 = !DILocation(line: 34, column: 44, scope: !8)
!16 = !DILocation(line: 34, column: 35, scope: !8)
!17 = !DILocation(line: 35, column: 37, scope: !8)
!18 = !DILocation(line: 35, column: 44, scope: !8)
!19 = !DILocation(line: 35, column: 35, scope: !8)
!20 = !DILocation(line: 37, column: 36, scope: !8)
!21 = !DILocation(line: 37, column: 34, scope: !8)
!22 = !DILocation(line: 39, column: 8, scope: !8)
!23 = !DILocation(line: 39, column: 42, scope: !8)
!24 = !DILocation(line: 39, column: 40, scope: !8)
!25 = !DILocation(line: 39, column: 77, scope: !8)
!26 = !DILocation(line: 39, column: 75, scope: !8)
!27 = !DILocation(line: 39, column: 7, scope: !8)
!28 = !DILocation(line: 40, column: 15, scope: !8)
!29 = !DILocation(line: 40, column: 13, scope: !8)
!30 = !DILocation(line: 40, column: 5, scope: !8)
!31 = !DILocation(line: 42, column: 13, scope: !8)
!32 = !DILocation(line: 42, column: 11, scope: !8)
!33 = !DILocation(line: 44, column: 8, scope: !8)
!34 = !DILocation(line: 44, column: 45, scope: !8)
!35 = !DILocation(line: 44, column: 51, scope: !8)
!36 = !DILocation(line: 44, column: 55, scope: !8)
!37 = !DILocation(line: 44, column: 92, scope: !8)
!38 = !DILocation(line: 44, column: 7, scope: !8)
!39 = !DILocation(line: 45, column: 15, scope: !8)
!40 = !DILocation(line: 45, column: 13, scope: !8)
!41 = !DILocation(line: 45, column: 5, scope: !8)
!42 = !DILocation(line: 46, column: 3, scope: !8)
!43 = !DILocation(line: 47, column: 3, scope: !8)
!44 = !DILocation(line: 48, column: 8, scope: !8)
!45 = !DILocation(line: 48, column: 45, scope: !8)
!46 = !DILocation(line: 48, column: 51, scope: !8)
!47 = !DILocation(line: 48, column: 55, scope: !8)
!48 = !DILocation(line: 48, column: 92, scope: !8)
!49 = !DILocation(line: 48, column: 7, scope: !8)
!50 = !DILocation(line: 49, column: 15, scope: !8)
!51 = !DILocation(line: 49, column: 13, scope: !8)
!52 = !DILocation(line: 49, column: 5, scope: !8)
!53 = !DILocation(line: 50, column: 3, scope: !8)
!54 = !DILocation(line: 51, column: 3, scope: !8)
!55 = !DILocation(line: 52, column: 3, scope: !8)
!56 = !DILocation(line: 53, column: 8, scope: !8)
!57 = !DILocation(line: 53, column: 45, scope: !8)
!58 = !DILocation(line: 53, column: 51, scope: !8)
!59 = !DILocation(line: 53, column: 55, scope: !8)
!60 = !DILocation(line: 53, column: 92, scope: !8)
!61 = !DILocation(line: 53, column: 7, scope: !8)
!62 = !DILocation(line: 54, column: 15, scope: !8)
!63 = !DILocation(line: 54, column: 13, scope: !8)
!64 = !DILocation(line: 54, column: 5, scope: !8)
!65 = !DILocation(line: 55, column: 3, scope: !8)
!66 = !DILocation(line: 56, column: 1, scope: !8)
!67 = distinct !DISubprogram(name: "svp_simple_019_001_isr_1", scope: !1, file: !1, line: 58, type: !9, isLocal: false, isDefinition: true, scopeLine: 58, isOptimized: false, unit: !0, retainedNodes: !2)
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
