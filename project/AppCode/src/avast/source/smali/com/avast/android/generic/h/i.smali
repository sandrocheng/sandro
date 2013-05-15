.class public Lcom/avast/android/generic/h/i;
.super Lcom/avast/android/generic/h/l;
.source "C2DMSuccessTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avast/android/generic/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 19
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 20
    const-class v1, Lcom/avast/android/generic/ah;

    invoke-static {p1, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 22
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v2, "registration"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v1, p1, v2}, Lcom/avast/android/generic/ae;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->b()Z

    .line 30
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/avast/android/generic/h/i;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {p0}, Lcom/avast/android/generic/h/i;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lcom/avast/android/generic/internet/j;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2}, Lcom/avast/android/generic/internet/b;->b(Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    invoke-static {v3, v4, v1, v5, v0}, Lcom/avast/android/generic/b/ab;->a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/ak;)Lcom/avast/android/generic/b/a;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v6}, Lcom/avast/android/generic/b/a;->a(Z)V

    .line 41
    invoke-virtual {v0, v6}, Lcom/avast/android/generic/b/a;->c(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/avast/android/generic/h/i;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/b/a;Z)V

    goto :goto_0
.end method
