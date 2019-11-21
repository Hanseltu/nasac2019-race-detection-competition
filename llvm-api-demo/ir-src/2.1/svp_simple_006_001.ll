; ModuleID = 'svp_simple_006_001.c'
source_filename = "svp_simple_006_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@flag = global i8 85, align 1
@svp_simple_006_001_global_var1 = common global i32 0, align 4
@svp_simple_006_001_global_var2 = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_006_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store i32 0, i32* %3, align 4, !dbg !11
  br label %7, !dbg !12

; <label>:7:                                      ; preds = %41, %0
  %8 = load i32, i32* %3, align 4, !dbg !13
  %9 = icmp slt i32 %8, 5, !dbg !14
  br i1 %9, label %10, label %44, !dbg !15

; <label>:10:                                     ; preds = %7
  store i32 0, i32* %4, align 4, !dbg !16
  br label %11, !dbg !17

; <label>:11:                                     ; preds = %37, %10
  %12 = load i32, i32* %3, align 4, !dbg !18
  %13 = icmp slt i32 %12, 5, !dbg !19
  br i1 %13, label %14, label %40, !dbg !20

; <label>:14:                                     ; preds = %11
  %15 = load i32, i32* %3, align 4, !dbg !21
  %16 = load i32, i32* %4, align 4, !dbg !22
  %17 = icmp eq i32 %15, %16, !dbg !23
  br i1 %17, label %18, label %36, !dbg !21

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %3, align 4, !dbg !24
  %20 = icmp eq i32 %19, 0, !dbg !25
  br i1 %20, label %21, label %23, !dbg !24

; <label>:21:                                     ; preds = %18
  %22 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !26
  store i32 %22, i32* %1, align 4, !dbg !27
  br label %35, !dbg !28

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %3, align 4, !dbg !29
  %25 = icmp eq i32 %24, 4, !dbg !30
  br i1 %25, label %26, label %28, !dbg !29

; <label>:26:                                     ; preds = %23
  %27 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !31
  store i32 %27, i32* %2, align 4, !dbg !32
  br label %34, !dbg !33

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %3, align 4, !dbg !34
  %30 = icmp eq i32 %29, 6, !dbg !35
  br i1 %30, label %31, label %33, !dbg !34

; <label>:31:                                     ; preds = %28
  %32 = load volatile i32, i32* @svp_simple_006_001_global_var1, align 4, !dbg !36
  store i32 %32, i32* %2, align 4, !dbg !37
  br label %33, !dbg !38

; <label>:33:                                     ; preds = %31, %28
  br label %34

; <label>:34:                                     ; preds = %33, %26
  br label %35

; <label>:35:                                     ; preds = %34, %21
  br label %36, !dbg !39

; <label>:36:                                     ; preds = %35, %14
  br label %37, !dbg !40

; <label>:37:                                     ; preds = %36
  %38 = load i32, i32* %4, align 4, !dbg !41
  %39 = add nsw i32 %38, 1, !dbg !41
  store i32 %39, i32* %4, align 4, !dbg !41
  br label %11, !dbg !20, !llvm.loop !42

; <label>:40:                                     ; preds = %11
  br label %41, !dbg !40

; <label>:41:                                     ; preds = %40
  %42 = load i32, i32* %3, align 4, !dbg !43
  %43 = add nsw i32 %42, 1, !dbg !43
  store i32 %43, i32* %3, align 4, !dbg !43
  br label %7, !dbg !15, !llvm.loop !44

; <label>:44:                                     ; preds = %7
  store i32 0, i32* %5, align 4, !dbg !45
  br label %45, !dbg !46

; <label>:45:                                     ; preds = %67, %44
  %46 = load i32, i32* %5, align 4, !dbg !47
  %47 = icmp slt i32 %46, 5, !dbg !48
  br i1 %47, label %48, label %70, !dbg !49

; <label>:48:                                     ; preds = %45
  store i32 0, i32* %6, align 4, !dbg !50
  br label %49, !dbg !51

; <label>:49:                                     ; preds = %63, %48
  %50 = load i32, i32* %6, align 4, !dbg !52
  %51 = icmp slt i32 %50, 5, !dbg !53
  br i1 %51, label %52, label %66, !dbg !54

; <label>:52:                                     ; preds = %49
  %53 = load i32, i32* %5, align 4, !dbg !55
  %54 = load i32, i32* %6, align 4, !dbg !56
  %55 = add nsw i32 %53, %54, !dbg !57
  %56 = icmp eq i32 %55, 6, !dbg !58
  br i1 %56, label %57, label %62, !dbg !59

; <label>:57:                                     ; preds = %52
  %58 = load i32, i32* %5, align 4, !dbg !60
  %59 = load i32, i32* %6, align 4, !dbg !61
  %60 = icmp slt i32 %58, %59, !dbg !62
  br i1 %60, label %61, label %62, !dbg !63

; <label>:61:                                     ; preds = %57
  store volatile i32 2, i32* @svp_simple_006_001_global_var2, align 4, !dbg !64
  br label %62, !dbg !65

; <label>:62:                                     ; preds = %61, %57, %52
  br label %63, !dbg !66

; <label>:63:                                     ; preds = %62
  %64 = load i32, i32* %6, align 4, !dbg !67
  %65 = add nsw i32 %64, 1, !dbg !67
  store i32 %65, i32* %6, align 4, !dbg !67
  br label %49, !dbg !54, !llvm.loop !68

; <label>:66:                                     ; preds = %49
  br label %67, !dbg !66

; <label>:67:                                     ; preds = %66
  %68 = load i32, i32* %5, align 4, !dbg !69
  %69 = add nsw i32 %68, 1, !dbg !69
  store i32 %69, i32* %5, align 4, !dbg !69
  br label %45, !dbg !49, !llvm.loop !70

; <label>:70:                                     ; preds = %45
  ret void, !dbg !71
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_006_001_isr_1() #0 !dbg !72 {
  %1 = alloca i32, align 4
  call void (...) @idlerun(), !dbg !73
  store volatile i32 0, i32* @svp_simple_006_001_global_var1, align 4, !dbg !74
  %2 = load volatile i32, i32* @svp_simple_006_001_global_var2, align 4, !dbg !75
  store i32 %2, i32* %1, align 4, !dbg !76
  ret void, !dbg !77
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_006_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_006")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_006_001_main", scope: !1, file: !1, line: 25, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 26, column: 3, scope: !8)
!11 = !DILocation(line: 29, column: 12, scope: !8)
!12 = !DILocation(line: 29, column: 8, scope: !8)
!13 = !DILocation(line: 29, column: 19, scope: !8)
!14 = !DILocation(line: 29, column: 21, scope: !8)
!15 = !DILocation(line: 29, column: 3, scope: !8)
!16 = !DILocation(line: 30, column: 14, scope: !8)
!17 = !DILocation(line: 30, column: 10, scope: !8)
!18 = !DILocation(line: 30, column: 21, scope: !8)
!19 = !DILocation(line: 30, column: 23, scope: !8)
!20 = !DILocation(line: 30, column: 5, scope: !8)
!21 = !DILocation(line: 31, column: 11, scope: !8)
!22 = !DILocation(line: 31, column: 16, scope: !8)
!23 = !DILocation(line: 31, column: 13, scope: !8)
!24 = !DILocation(line: 32, column: 13, scope: !8)
!25 = !DILocation(line: 32, column: 15, scope: !8)
!26 = !DILocation(line: 33, column: 21, scope: !8)
!27 = !DILocation(line: 33, column: 19, scope: !8)
!28 = !DILocation(line: 33, column: 11, scope: !8)
!29 = !DILocation(line: 34, column: 18, scope: !8)
!30 = !DILocation(line: 34, column: 20, scope: !8)
!31 = !DILocation(line: 35, column: 21, scope: !8)
!32 = !DILocation(line: 35, column: 19, scope: !8)
!33 = !DILocation(line: 35, column: 11, scope: !8)
!34 = !DILocation(line: 36, column: 18, scope: !8)
!35 = !DILocation(line: 36, column: 20, scope: !8)
!36 = !DILocation(line: 37, column: 21, scope: !8)
!37 = !DILocation(line: 37, column: 19, scope: !8)
!38 = !DILocation(line: 37, column: 11, scope: !8)
!39 = !DILocation(line: 38, column: 7, scope: !8)
!40 = !DILocation(line: 39, column: 5, scope: !8)
!41 = !DILocation(line: 30, column: 29, scope: !8)
!42 = distinct !{!42, !20, !40}
!43 = !DILocation(line: 29, column: 27, scope: !8)
!44 = distinct !{!44, !15, !40}
!45 = !DILocation(line: 41, column: 12, scope: !8)
!46 = !DILocation(line: 41, column: 8, scope: !8)
!47 = !DILocation(line: 41, column: 19, scope: !8)
!48 = !DILocation(line: 41, column: 21, scope: !8)
!49 = !DILocation(line: 41, column: 3, scope: !8)
!50 = !DILocation(line: 42, column: 14, scope: !8)
!51 = !DILocation(line: 42, column: 10, scope: !8)
!52 = !DILocation(line: 42, column: 21, scope: !8)
!53 = !DILocation(line: 42, column: 23, scope: !8)
!54 = !DILocation(line: 42, column: 5, scope: !8)
!55 = !DILocation(line: 43, column: 13, scope: !8)
!56 = !DILocation(line: 43, column: 17, scope: !8)
!57 = !DILocation(line: 43, column: 15, scope: !8)
!58 = !DILocation(line: 43, column: 20, scope: !8)
!59 = !DILocation(line: 43, column: 26, scope: !8)
!60 = !DILocation(line: 43, column: 30, scope: !8)
!61 = !DILocation(line: 43, column: 34, scope: !8)
!62 = !DILocation(line: 43, column: 32, scope: !8)
!63 = !DILocation(line: 43, column: 11, scope: !8)
!64 = !DILocation(line: 44, column: 40, scope: !8)
!65 = !DILocation(line: 44, column: 9, scope: !8)
!66 = !DILocation(line: 45, column: 5, scope: !8)
!67 = !DILocation(line: 42, column: 29, scope: !8)
!68 = distinct !{!68, !54, !66}
!69 = !DILocation(line: 41, column: 27, scope: !8)
!70 = distinct !{!70, !49, !66}
!71 = !DILocation(line: 46, column: 1, scope: !8)
!72 = distinct !DISubprogram(name: "svp_simple_006_001_isr_1", scope: !1, file: !1, line: 48, type: !9, isLocal: false, isDefinition: true, scopeLine: 48, isOptimized: false, unit: !0, retainedNodes: !2)
!73 = !DILocation(line: 50, column: 3, scope: !72)
!74 = !DILocation(line: 52, column: 34, scope: !72)
!75 = !DILocation(line: 53, column: 13, scope: !72)
!76 = !DILocation(line: 53, column: 11, scope: !72)
!77 = !DILocation(line: 54, column: 1, scope: !72)
