.class public Lcom/avast/android/generic/h/f;
.super Lcom/avast/android/generic/h/l;
.source "C2DMMessageTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avast/android/generic/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    const-string v0, "message"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/h/f;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/generic/b/u;->a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;)Lcom/avast/android/generic/b/a;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/avast/android/generic/h/f;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/b/a;Z)V
    :try_end_0
    .catch Lcom/avast/android/generic/b/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "AvastGeneric"

    const-string v2, "Authorization failed"

    invoke-static {v1, p1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 35
    const-string v1, "AvastGeneric"

    const-string v2, "Generic throwable in internet command handling"

    invoke-static {v1, p1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
