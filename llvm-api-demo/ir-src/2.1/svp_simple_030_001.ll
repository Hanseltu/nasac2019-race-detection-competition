; ModuleID = 'svp_simple_030_001.c'
source_filename = "svp_simple_030_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_030_001_gloable_var = common global i32 0, align 4
@svp_simple_030_001_isr_1_flag = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @svp_simple_030_001_main() #0 !dbg !8 {
  call void @svp_simple_030_001_init(), !dbg !10
  call void @disable_isr(i32 -1), !dbg !11
  call void @enable_isr(i32 1), !dbg !12
  %1 = load volatile i32, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !13
  %2 = icmp sgt i32 %1, 12, !dbg !14
  br i1 %2, label %3, label %4, !dbg !13

; <label>:3:                                      ; preds = %0
  store volatile i32 0, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !15
  br label %4, !dbg !16

; <label>:4:                                      ; preds = %3, %0
  ret i32 0, !dbg !17
}

declare void @disable_isr(i32) #1

declare void @enable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_030_001_init() #0 !dbg !18 {
  %1 = call i32 (...) @rand(), !dbg !19
  store volatile i32 %1, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !20
  %2 = call i32 (...) @rand(), !dbg !21
  store volatile i32 %2, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !22
  call void (...) @init(), !dbg !23
  ret void, !dbg !24
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @addData() #0 !dbg !25 {
  store volatile i32 12, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !26
  ret void, !dbg !27
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_030_001_isr_1() #0 !dbg !28 {
  call void @addData(), !dbg !29
  store volatile i32 0, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !30
  call void @enable_isr(i32 2), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_030_001_isr_2() #0 !dbg !33 {
  %1 = load volatile i32, i32* @svp_simple_030_001_isr_1_flag, align 4, !dbg !34
  %2 = icmp ne i32 %1, 0, !dbg !34
  br i1 %2, label %3, label %6, !dbg !34

; <label>:3:                                      ; preds = %0
  %4 = load volatile i32, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !35
  %5 = add nsw i32 %4, 1, !dbg !35
  store volatile i32 %5, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !35
  br label %6, !dbg !36

; <label>:6:                                      ; preds = %3, %0
  ret void, !dbg !37
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_030_001_isr_3() #0 !dbg !38 {
  %1 = load volatile i32, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !39
  %2 = add nsw i32 %1, 1, !dbg !39
  store volatile i32 %2, i32* @svp_simple_030_001_gloable_var, align 4, !dbg !39
  ret void, !dbg !40
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_030_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_030")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_030_001_main", scope: !1, file: !1, line: 24, type: !9, isLocal: false, isDefinition: true, scopeLine: 24, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 25, column: 3, scope: !8)
!11 = !DILocation(line: 27, column: 3, scope: !8)
!12 = !DILocation(line: 28, column: 3, scope: !8)
!13 = !DILocation(line: 29, column: 7, scope: !8)
!14 = !DILocation(line: 29, column: 38, scope: !8)
!15 = !DILocation(line: 30, column: 36, scope: !8)
!16 = !DILocation(line: 31, column: 3, scope: !8)
!17 = !DILocation(line: 32, column: 3, scope: !8)
!18 = distinct !DISubprogram(name: "svp_simple_030_001_init", scope: !1, file: !1, line: 35, type: !9, isLocal: false, isDefinition: true, scopeLine: 35, isOptimized: false, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 36, column: 36, scope: !18)
!20 = !DILocation(line: 36, column: 34, scope: !18)
!21 = !DILocation(line: 37, column: 35, scope: !18)
!22 = !DILocation(line: 37, column: 33, scope: !18)
!23 = !DILocation(line: 39, column: 3, scope: !18)
!24 = !DILocation(line: 40, column: 1, scope: !18)
!25 = distinct !DISubprogram(name: "addData", scope: !1, file: !1, line: 42, type: !9, isLocal: false, isDefinition: true, scopeLine: 42, isOptimized: false, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 43, column: 34, scope: !25)
!27 = !DILocation(line: 44, column: 1, scope: !25)
!28 = distinct !DISubprogram(name: "svp_simple_030_001_isr_1", scope: !1, file: !1, line: 45, type: !9, isLocal: false, isDefinition: true, scopeLine: 45, isOptimized: false, unit: !0, retainedNodes: !2)
!29 = !DILocation(line: 46, column: 3, scope: !28)
!30 = !DILocation(line: 47, column: 33, scope: !28)
!31 = !DILocation(line: 48, column: 3, scope: !28)
!32 = !DILocation(line: 49, column: 1, scope: !28)
!33 = distinct !DISubprogram(name: "svp_simple_030_001_isr_2", scope: !1, file: !1, line: 50, type: !9, isLocal: false, isDefinition: true, scopeLine: 50, isOptimized: false, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 51, column: 7, scope: !33)
!35 = !DILocation(line: 52, column: 35, scope: !33)
!36 = !DILocation(line: 53, column: 3, scope: !33)
!37 = !DILocation(line: 54, column: 1, scope: !33)
!38 = distinct !DISubprogram(name: "svp_simple_030_001_isr_3", scope: !1, file: !1, line: 55, type: !9, isLocal: false, isDefinition: true, scopeLine: 55, isOptimized: false, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 56, column: 33, scope: !38)
!40 = !DILocation(line: 57, column: 1, scope: !38)
