; ModuleID = 'svp_simple_010_001.c'
source_filename = "svp_simple_010_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.pack1 = type { i32 }
%struct.pack2 = type { i8, i32 }

@svp_simple_010_001_global_union = common global %union.pack1 zeroinitializer, align 4
@svp_simple_010_001_global_struct = common global %struct.pack2 zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_010_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void (...) @init(), !dbg !10
  store i32 1, i32* %1, align 4, !dbg !11
  store i32 2, i32* %2, align 4, !dbg !12
  store i32 3, i32* %3, align 4, !dbg !13
  store i32 4, i32* %4, align 4, !dbg !14
  %5 = load i32, i32* %1, align 4, !dbg !15
  %6 = trunc i32 %5 to i8, !dbg !15
  store volatile i8 %6, i8* bitcast (%union.pack1* @svp_simple_010_001_global_union to i8*), align 4, !dbg !16
  %7 = load i32, i32* %2, align 4, !dbg !17
  store volatile i32 %7, i32* getelementptr inbounds (%union.pack1, %union.pack1* @svp_simple_010_001_global_union, i32 0, i32 0), align 4, !dbg !18
  %8 = load i32, i32* %3, align 4, !dbg !19
  %9 = trunc i32 %8 to i8, !dbg !19
  store volatile i8 %9, i8* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 0), align 4, !dbg !20
  %10 = load i32, i32* %4, align 4, !dbg !21
  store volatile i32 %10, i32* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 1), align 4, !dbg !22
  ret void, !dbg !23
}

declare void @init(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @svp_simple_010_001_isr_1() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @idlerun(), !dbg !25
  %3 = load volatile i8, i8* bitcast (%union.pack1* @svp_simple_010_001_global_union to i8*), align 4, !dbg !26
  %4 = zext i8 %3 to i32, !dbg !27
  store i32 %4, i32* %1, align 4, !dbg !28
  %5 = load volatile i8, i8* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 0), align 4, !dbg !29
  %6 = zext i8 %5 to i32, !dbg !30
  store i32 %6, i32* %2, align 4, !dbg !31
  ret void, !dbg !32
}

declare void @idlerun(...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 10.0.1 (clang-1001.0.46.4)", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2)
!1 = !DIFile(filename: "svp_simple_010_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_010")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!8 = distinct !DISubprogram(name: "svp_simple_010_001_main", scope: !1, file: !1, line: 32, type: !9, isLocal: false, isDefinition: true, scopeLine: 32, isOptimized: false, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 33, column: 3, scope: !8)
!11 = !DILocation(line: 34, column: 7, scope: !8)
!12 = !DILocation(line: 35, column: 7, scope: !8)
!13 = !DILocation(line: 37, column: 7, scope: !8)
!14 = !DILocation(line: 38, column: 7, scope: !8)
!15 = !DILocation(line: 40, column: 44, scope: !8)
!16 = !DILocation(line: 40, column: 42, scope: !8)
!17 = !DILocation(line: 41, column: 42, scope: !8)
!18 = !DILocation(line: 41, column: 40, scope: !8)
!19 = !DILocation(line: 43, column: 45, scope: !8)
!20 = !DILocation(line: 43, column: 43, scope: !8)
!21 = !DILocation(line: 44, column: 43, scope: !8)
!22 = !DILocation(line: 44, column: 41, scope: !8)
!23 = !DILocation(line: 45, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "svp_simple_010_001_isr_1", scope: !1, file: !1, line: 47, type: !9, isLocal: false, isDefinition: true, scopeLine: 47, isOptimized: false, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 48, column: 3, scope: !24)
!26 = !DILocation(line: 51, column: 45, scope: !24)
!27 = !DILocation(line: 51, column: 13, scope: !24)
!28 = !DILocation(line: 51, column: 11, scope: !24)
!29 = !DILocation(line: 53, column: 46, scope: !24)
!30 = !DILocation(line: 53, column: 13, scope: !24)
!31 = !DILocation(line: 53, column: 11, scope: !24)
!32 = !DILocation(line: 54, column: 1, scope: !24)
