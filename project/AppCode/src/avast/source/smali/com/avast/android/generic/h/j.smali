.class public Lcom/avast/android/generic/h/j;
.super Lcom/avast/android/generic/h/l;
.source "PushAccountTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avast/android/generic/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/avast/android/generic/h/j;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 18
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/avast/android/generic/h/j;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/service/AvastService;->a(Z)V

    .line 22
    new-instance v1, Lcom/avast/android/generic/internet/e;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/internet/b;->a(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/avast/android/generic/internet/e;-><init>(Lcom/avast/a/a/a/ak;Z)V

    .line 27
    invoke-virtual {v1, p3}, Lcom/avast/android/generic/internet/e;->a(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/avast/android/generic/h/j;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/internet/e;Lcom/avast/android/generic/b/a;Z)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/h/j;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/avast/android/generic/service/AvastService;->a(Z)V

    goto :goto_0
.end method
