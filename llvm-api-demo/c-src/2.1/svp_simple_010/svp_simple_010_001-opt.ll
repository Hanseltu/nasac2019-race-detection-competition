; ModuleID = 'svp_simple_010_001-opt.bc'
source_filename = "./svp_simple_010_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.pack1 = type { i32 }
%struct.pack2 = type { i8, i32 }

@svp_simple_010_001_global_union = common global %union.pack1 zeroinitializer, align 4
@svp_simple_010_001_global_struct = common global %struct.pack2 zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_010_001_main() #0 !dbg !8 {
  call void (...) @init(), !dbg !11
  store volatile i8 1, i8* bitcast (%union.pack1* @svp_simple_010_001_global_union to i8*), align 4, !dbg !12, !tbaa !13
  store volatile i32 2, i32* getelementptr inbounds (%union.pack1, %union.pack1* @svp_simple_010_001_global_union, i32 0, i32 0), align 4, !dbg !16, !tbaa !13
  store volatile i8 3, i8* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 0), align 4, !dbg !17, !tbaa !18
  store volatile i32 4, i32* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 1), align 4, !dbg !21, !tbaa !22
  ret void, !dbg !23
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_010_001_isr_1() #0 !dbg !24 {
  call void (...) @idlerun(), !dbg !25
  %1 = load volatile i8, i8* bitcast (%union.pack1* @svp_simple_010_001_global_union to i8*), align 4, !dbg !26, !tbaa !13
  %2 = zext i8 %1 to i32, !dbg !27
  %3 = load volatile i8, i8* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 0), align 4, !dbg !28, !tbaa !18
  %4 = zext i8 %3 to i32, !dbg !29
  ret void, !dbg !30
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_010_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_010")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_010_001_main", scope: !9, file: !9, line: 32, type: !10, scopeLine: 32, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_010_001.c", directory: "/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/c-src/2.1/svp_simple_010")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 33, column: 3, scope: !8)
!12 = !DILocation(line: 40, column: 42, scope: !8)
!13 = !{!14, !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !DILocation(line: 41, column: 40, scope: !8)
!17 = !DILocation(line: 43, column: 43, scope: !8)
!18 = !{!19, !14, i64 0}
!19 = !{!"pack2", !14, i64 0, !20, i64 4}
!20 = !{!"int", !14, i64 0}
!21 = !DILocation(line: 44, column: 41, scope: !8)
!22 = !{!19, !20, i64 4}
!23 = !DILocation(line: 45, column: 1, scope: !8)
!24 = distinct !DISubprogram(name: "svp_simple_010_001_isr_1", scope: !9, file: !9, line: 47, type: !10, scopeLine: 47, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 48, column: 3, scope: !24)
!26 = !DILocation(line: 51, column: 45, scope: !24)
!27 = !DILocation(line: 51, column: 13, scope: !24)
!28 = !DILocation(line: 53, column: 46, scope: !24)
!29 = !DILocation(line: 53, column: 13, scope: !24)
!30 = !DILocation(line: 54, column: 1, scope: !24)
