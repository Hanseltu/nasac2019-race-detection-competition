; ModuleID = 'svp_simple_010_001.bc'
source_filename = "./svp_simple_010_001.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%union.pack1 = type { i32 }
%struct.pack2 = type { i8, i32 }

@svp_simple_010_001_global_union = common global %union.pack1 zeroinitializer, align 4
@svp_simple_010_001_global_struct = common global %struct.pack2 zeroinitializer, align 4

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_010_001_main() #0 !dbg !8 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void (...) @init(), !dbg !11
  %5 = bitcast i32* %1 to i8*, !dbg !12
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !12
  store i32 1, i32* %1, align 4, !dbg !13, !tbaa !14
  %6 = bitcast i32* %2 to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !18
  store i32 2, i32* %2, align 4, !dbg !19, !tbaa !14
  %7 = bitcast i32* %3 to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !20
  store i32 3, i32* %3, align 4, !dbg !21, !tbaa !14
  %8 = bitcast i32* %4 to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !22
  store i32 4, i32* %4, align 4, !dbg !23, !tbaa !14
  %9 = load i32, i32* %1, align 4, !dbg !24, !tbaa !14
  %10 = trunc i32 %9 to i8, !dbg !24
  store volatile i8 %10, i8* bitcast (%union.pack1* @svp_simple_010_001_global_union to i8*), align 4, !dbg !25, !tbaa !26
  %11 = load i32, i32* %2, align 4, !dbg !27, !tbaa !14
  store volatile i32 %11, i32* getelementptr inbounds (%union.pack1, %union.pack1* @svp_simple_010_001_global_union, i32 0, i32 0), align 4, !dbg !28, !tbaa !26
  %12 = load i32, i32* %3, align 4, !dbg !29, !tbaa !14
  %13 = trunc i32 %12 to i8, !dbg !29
  store volatile i8 %13, i8* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 0), align 4, !dbg !30, !tbaa !31
  %14 = load i32, i32* %4, align 4, !dbg !33, !tbaa !14
  store volatile i32 %14, i32* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 1), align 4, !dbg !34, !tbaa !35
  %15 = bitcast i32* %4 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #3, !dbg !36
  %16 = bitcast i32* %3 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !36
  %17 = bitcast i32* %2 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #3, !dbg !36
  %18 = bitcast i32* %1 to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !36
  ret void, !dbg !36
}

declare void @init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind ssp uwtable
define void @svp_simple_010_001_isr_1() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void (...) @idlerun(), !dbg !38
  %3 = bitcast i32* %1 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !39
  %4 = bitcast i32* %2 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !39
  %5 = load volatile i8, i8* bitcast (%union.pack1* @svp_simple_010_001_global_union to i8*), align 4, !dbg !40, !tbaa !26
  %6 = zext i8 %5 to i32, !dbg !41
  store i32 %6, i32* %1, align 4, !dbg !42, !tbaa !14
  %7 = load volatile i8, i8* getelementptr inbounds (%struct.pack2, %struct.pack2* @svp_simple_010_001_global_struct, i32 0, i32 0), align 4, !dbg !43, !tbaa !31
  %8 = zext i8 %7 to i32, !dbg !44
  store i32 %8, i32* %2, align 4, !dbg !45, !tbaa !14
  %9 = bitcast i32* %2 to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #3, !dbg !46
  %10 = bitcast i32* %1 to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #3, !dbg !46
  ret void, !dbg !46
}

declare void @idlerun(...) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.0 (trunk 358344)", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: GNU)
!1 = !DIFile(filename: "svp_simple_010_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_010")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 7, !"PIC Level", i32 2}
!7 = !{!"clang version 9.0.0 (trunk 358344)"}
!8 = distinct !DISubprogram(name: "svp_simple_010_001_main", scope: !9, file: !9, line: 32, type: !10, scopeLine: 32, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./svp_simple_010_001.c", directory: "/Users/tuhaoxin/Downloads/DRace1/test/svp_simple_010")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 33, column: 3, scope: !8)
!12 = !DILocation(line: 34, column: 3, scope: !8)
!13 = !DILocation(line: 34, column: 7, scope: !8)
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 35, column: 3, scope: !8)
!19 = !DILocation(line: 35, column: 7, scope: !8)
!20 = !DILocation(line: 37, column: 3, scope: !8)
!21 = !DILocation(line: 37, column: 7, scope: !8)
!22 = !DILocation(line: 38, column: 3, scope: !8)
!23 = !DILocation(line: 38, column: 7, scope: !8)
!24 = !DILocation(line: 40, column: 44, scope: !8)
!25 = !DILocation(line: 40, column: 42, scope: !8)
!26 = !{!16, !16, i64 0}
!27 = !DILocation(line: 41, column: 42, scope: !8)
!28 = !DILocation(line: 41, column: 40, scope: !8)
!29 = !DILocation(line: 43, column: 45, scope: !8)
!30 = !DILocation(line: 43, column: 43, scope: !8)
!31 = !{!32, !16, i64 0}
!32 = !{!"pack2", !16, i64 0, !15, i64 4}
!33 = !DILocation(line: 44, column: 43, scope: !8)
!34 = !DILocation(line: 44, column: 41, scope: !8)
!35 = !{!32, !15, i64 4}
!36 = !DILocation(line: 45, column: 1, scope: !8)
!37 = distinct !DISubprogram(name: "svp_simple_010_001_isr_1", scope: !9, file: !9, line: 47, type: !10, scopeLine: 47, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 48, column: 3, scope: !37)
!39 = !DILocation(line: 49, column: 3, scope: !37)
!40 = !DILocation(line: 51, column: 45, scope: !37)
!41 = !DILocation(line: 51, column: 13, scope: !37)
!42 = !DILocation(line: 51, column: 11, scope: !37)
!43 = !DILocation(line: 53, column: 46, scope: !37)
!44 = !DILocation(line: 53, column: 13, scope: !37)
!45 = !DILocation(line: 53, column: 11, scope: !37)
!46 = !DILocation(line: 54, column: 1, scope: !37)
