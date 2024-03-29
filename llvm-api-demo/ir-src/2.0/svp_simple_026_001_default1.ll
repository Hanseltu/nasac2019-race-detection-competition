; ModuleID = 'svp_simple_026_001.c'
source_filename = "svp_simple_026_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_026_001_gloable_var = common global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @svp_simple_026_001_main() #0 !dbg !8 {
  call void @svp_simple_026_001_init(), !dbg !10
  call void @disable_isr(i32 1), !dbg !11
  %1 = load volatile i32, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !12
  %2 = icmp sgt i32 %1, 12, !dbg !13
  br i1 %2, label %3, label %4, !dbg !12

; <label>:3:                                      ; preds = %0
  store volatile i32 0, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !14
  br label %4, !dbg !15

; <label>:4:                                      ; preds = %3, %0
  ret i32 0, !dbg !16
}

declare void @disable_isr(i32) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_026_001_init() #0 !dbg !17 {
  %1 = call i32 (...) @rand(), !dbg !18
  store volatile i32 %1, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !19
  call void (...) @init(), !dbg !20
  ret void, !dbg !21
}

declare i32 @rand(...) #1

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_026_001_isr_1() #0 !dbg !22 {
  %1 = load volatile i32, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !23
  %2 = add nsw i32 %1, 1, !dbg !23
  store volatile i32 %2, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !23
  ret void, !dbg !24
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_026_001_isr_2() #0 !dbg !25 {
  %1 = load volatile i32, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !26
  %2 = add nsw i32 %1, -1, !dbg !26
  store volatile i32 %2, i32* @svp_simple_026_001_gloable_var, align 4, !dbg !26
  ret void, !dbg !27
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_026_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.0/svp_simple_026")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_026_001_main", scope: !1, file: !1, line: 22, type: !9, isLocal: false, isDefinition: true, scopeLine: 22, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 23, column: 3, scope: !8)
!11 = !DILocation(line: 25, column: 3, scope: !8)
!12 = !DILocation(line: 26, column: 7, scope: !8)
!13 = !DILocation(line: 26, column: 38, scope: !8)
!14 = !DILocation(line: 27, column: 36, scope: !8)
!15 = !DILocation(line: 28, column: 3, scope: !8)
!16 = !DILocation(line: 31, column: 3, scope: !8)
!17 = distinct !DISubprogram(name: "svp_simple_026_001_init", scope: !1, file: !1, line: 33, type: !9, isLocal: false, isDefinition: true, scopeLine: 33, isOptimized: false, unit: !0, retainedNodes: !2)
!18 = !DILocation(line: 34, column: 36, scope: !17)
!19 = !DILocation(line: 34, column: 34, scope: !17)
!20 = !DILocation(line: 36, column: 3, scope: !17)
!21 = !DILocation(line: 37, column: 1, scope: !17)
!22 = distinct !DISubprogram(name: "svp_simple_026_001_isr_1", scope: !1, file: !1, line: 39, type: !9, isLocal: false, isDefinition: true, scopeLine: 39, isOptimized: false, unit: !0, retainedNodes: !2)
!23 = !DILocation(line: 40, column: 33, scope: !22)
!24 = !DILocation(line: 41, column: 1, scope: !22)
!25 = distinct !DISubprogram(name: "svp_simple_026_001_isr_2", scope: !1, file: !1, line: 42, type: !9, isLocal: false, isDefinition: true, scopeLine: 42, isOptimized: false, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 43, column: 33, scope: !25)
!27 = !DILocation(line: 44, column: 1, scope: !25)
