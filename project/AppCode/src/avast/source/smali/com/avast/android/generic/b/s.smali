.class public Lcom/avast/android/generic/b/s;
.super Lcom/avast/android/generic/b/u;
.source "ErrorCommand.java"


# direct methods
.method protected constructor <init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avast/android/generic/b/u;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/a/m;)Lcom/avast/android/generic/b/a;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    new-instance v0, Lcom/avast/android/generic/b/t;

    invoke-direct {v0, p0, p3, p4}, Lcom/avast/android/generic/b/t;-><init>(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V

    .line 18
    new-instance v1, Lcom/avast/android/generic/b/s;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/avast/android/generic/b/s;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
