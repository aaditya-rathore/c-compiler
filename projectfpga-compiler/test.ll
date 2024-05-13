; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.36.32532"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @"?testfunction@@YAXH@Z"(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local noundef i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 320, ptr %1, align 4
  %3 = load i32, ptr %1, align 4
  %4 = add nsw i32 300, %3
  store i32 %4, ptr %2, align 4
  %5 = load i32, ptr %1, align 4
  call void @"?testfunction@@YAXH@Z"(i32 noundef %5)
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local noundef i32 @"?counter@@YAHHH@Z"(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, ptr %6, align 4
  %13 = sub nsw i32 %12, 9
  %14 = mul nsw i32 7, %13
  %15 = sub nsw i32 54, %14
  %16 = load i32, ptr %7, align 4
  %17 = mul nsw i32 3, %16
  %18 = add nsw i32 %15, %17
  %19 = load i32, ptr %8, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, ptr %5, align 4
  store i32 20, ptr %6, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load i32, ptr %8, align 4
  %23 = load i32, ptr %5, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 12, ptr %5, align 4
  br label %45

26:                                               ; preds = %21
  %27 = load i32, ptr %8, align 4
  %28 = load i32, ptr %5, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 12, ptr %5, align 4
  br label %44

31:                                               ; preds = %26
  %32 = load i32, ptr %8, align 4
  %33 = load i32, ptr %5, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 12, ptr %5, align 4
  br label %43

36:                                               ; preds = %31
  %37 = load i32, ptr %8, align 4
  %38 = load i32, ptr %5, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 12, ptr %5, align 4
  br label %42

41:                                               ; preds = %36
  store i32 12, ptr %7, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %35
  br label %44

44:                                               ; preds = %43, %30
  br label %45

45:                                               ; preds = %44, %25
  br label %46

46:                                               ; preds = %45, %11
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"MaxTLSAlign", i32 65536}
!4 = !{!"clang version 18.1.5"}
