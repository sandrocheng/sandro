.class public Lcom/avast/android/generic/b/ab;
.super Lcom/avast/android/generic/b/u;
.source "SuccessCommand.java"


# direct methods
.method protected constructor <init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avast/android/generic/b/u;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/ak;)Lcom/avast/android/generic/b/a;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    new-instance v0, Lcom/avast/android/generic/b/ac;

    invoke-direct {v0, p0, p3, p4}, Lcom/avast/android/generic/b/ac;-><init>(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Lcom/avast/a/a/a/ak;)V

    .line 14
    new-instance v1, Lcom/avast/android/generic/b/ab;

    invoke-direct {v1, v0, p1, p2}, Lcom/avast/android/generic/b/ab;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
