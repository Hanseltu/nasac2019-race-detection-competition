; ModuleID = 'svp_simple_018_001.c'
source_filename = "svp_simple_018_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@svp_simple_018_001_para1 = common global float 0.000000e+00, align 4
@svp_simple_018_001_para2 = common global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_018_001_main() #0 !dbg !8 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  call void (...) @init(), !dbg !10
  store float 0.000000e+00, float* %1, align 4, !dbg !11
  store float 0.000000e+00, float* %2, align 4, !dbg !12
  %3 = call float @svp_simple_018_001_func1(), !dbg !13
  store float %3, float* %1, align 4, !dbg !14
  %4 = call float @svp_simple_018_001_func2(), !dbg !15
  store float %4, float* %2, align 4, !dbg !16
  ret void, !dbg !17
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @svp_simple_018_001_func1() #0 !dbg !18 {
  %1 = alloca float, align 4
  store float 0.000000e+00, float* %1, align 4, !dbg !19
  %2 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !20
  %3 = fmul float 2.000000e+00, %2, !dbg !21
  %4 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !22
  %5 = fmul float %3, %4, !dbg !23
  store float %5, float* %1, align 4, !dbg !24
  %6 = load float, float* %1, align 4, !dbg !25
  ret float %6, !dbg !26
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define float @svp_simple_018_001_func2() #0 !dbg !27 {
  %1 = alloca float, align 4
  store float 0.000000e+00, float* %1, align 4, !dbg !28
  %2 = load volatile float, float* @svp_simple_018_001_para1, align 4, !dbg !29
  %3 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !30
  %4 = fmul float %2, %3, !dbg !31
  %5 = load volatile float, float* @svp_simple_018_001_para2, align 4, !dbg !32
  %6 = fmul float %4, %5, !dbg !33
  store float %6, float* %1, align 4, !dbg !34
  %7 = load float, float* %1, align 4, !dbg !35
  ret float %7, !dbg !36
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_018_001_isr_func1() #0 !dbg !37 {
  store volatile float 1.000000e+00, float* @svp_simple_018_001_para2, align 4, !dbg !38
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_018_001_isr_1() #0 !dbg !40 {
  call void (...) @idlerun(), !dbg !41
  store volatile float 2.000000e+00, float* @svp_simple_018_001_para1, align 4, !dbg !42
  ret void, !dbg !43
}

declare void @idlerun(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_018_001_isr_2() #0 !dbg !44 {
  call void (...) @idlerun(), !dbg !45
  call void @svp_simple_018_001_isr_func1(), !dbg !46
  ret void, !dbg !47
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_018_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_018")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_018_001_main", scope: !1, file: !1, line: 30, type: !9, isLocal: false, isDefinition: true, scopeLine: 30, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 31, column: 3, scope: !8)
!11 = !DILocation(line: 32, column: 9, scope: !8)
!12 = !DILocation(line: 33, column: 9, scope: !8)
!13 = !DILocation(line: 34, column: 33, scope: !8)
!14 = !DILocation(line: 34, column: 31, scope: !8)
!15 = !DILocation(line: 35, column: 29, scope: !8)
!16 = !DILocation(line: 35, column: 27, scope: !8)
!17 = !DILocation(line: 36, column: 1, scope: !8)
!18 = distinct !DISubprogram(name: "svp_simple_018_001_func1", scope: !1, file: !1, line: 38, type: !9, isLocal: false, isDefinition: true, scopeLine: 38, isOptimized: false, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 39, column: 9, scope: !18)
!20 = !DILocation(line: 40, column: 18, scope: !18)
!21 = !DILocation(line: 40, column: 16, scope: !18)
!22 = !DILocation(line: 41, column: 14, scope: !18)
!23 = !DILocation(line: 40, column: 43, scope: !18)
!24 = !DILocation(line: 40, column: 12, scope: !18)
!25 = !DILocation(line: 42, column: 10, scope: !18)
!26 = !DILocation(line: 42, column: 3, scope: !18)
!27 = distinct !DISubprogram(name: "svp_simple_018_001_func2", scope: !1, file: !1, line: 45, type: !9, isLocal: false, isDefinition: true, scopeLine: 45, isOptimized: false, unit: !0, retainedNodes: !2)
!28 = !DILocation(line: 46, column: 9, scope: !27)
!29 = !DILocation(line: 47, column: 10, scope: !27)
!30 = !DILocation(line: 48, column: 10, scope: !27)
!31 = !DILocation(line: 47, column: 35, scope: !27)
!32 = !DILocation(line: 49, column: 10, scope: !27)
!33 = !DILocation(line: 48, column: 35, scope: !27)
!34 = !DILocation(line: 47, column: 8, scope: !27)
!35 = !DILocation(line: 50, column: 10, scope: !27)
!36 = !DILocation(line: 50, column: 3, scope: !27)
!37 = distinct !DISubprogram(name: "svp_simple_018_001_isr_func1", scope: !1, file: !1, line: 53, type: !9, isLocal: false, isDefinition: true, scopeLine: 53, isOptimized: false, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 54, column: 28, scope: !37)
!39 = !DILocation(line: 55, column: 1, scope: !37)
!40 = distinct !DISubprogram(name: "svp_simple_018_001_isr_1", scope: !1, file: !1, line: 57, type: !9, isLocal: false, isDefinition: true, scopeLine: 57, isOptimized: false, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 58, column: 3, scope: !40)
!42 = !DILocation(line: 59, column: 28, scope: !40)
!43 = !DILocation(line: 60, column: 1, scope: !40)
!44 = distinct !DISubprogram(name: "svp_simple_018_001_isr_2", scope: !1, file: !1, line: 62, type: !9, isLocal: false, isDefinition: true, scopeLine: 62, isOptimized: false, unit: !0, retainedNodes: !2)
!45 = !DILocation(line: 63, column: 3, scope: !44)
!46 = !DILocation(line: 64, column: 3, scope: !44)
!47 = !DILocation(line: 65, column: 1, scope: !44)
