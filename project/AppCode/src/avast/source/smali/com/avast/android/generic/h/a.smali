.class public Lcom/avast/android/generic/h/a;
.super Lcom/avast/android/generic/h/l;
.source "AccountConnectedTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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
    .line 19
    const-string v0, "Account connected task"

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/avast/android/generic/h/a;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ag;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 22
    invoke-virtual {p0}, Lcom/avast/android/generic/h/a;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const-class v2, Lcom/avast/android/generic/ah;

    invoke-static {v1, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 24
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->P()V

    .line 25
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->P()V

    .line 27
    const-string v0, "accountReset"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->b()Z

    .line 30
    invoke-virtual {p0}, Lcom/avast/android/generic/h/a;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->f()V

    .line 31
    return-void
.end method
