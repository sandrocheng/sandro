.class public Lcom/avast/android/generic/h/c;
.super Lcom/avast/android/generic/h/l;
.source "C2DMDisableSuiteComponentTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avast/android/generic/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 21
    const-string v0, "AvastGeneric"

    const-string v1, "Removing C2DM registration ID..."

    invoke-static {v0, p1, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 24
    const-class v1, Lcom/avast/android/generic/ah;

    invoke-static {p1, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 26
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->E()V

    .line 27
    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->b()Z

    .line 29
    const-string v1, "AvastGeneric"

    const-string v2, "C2DM registration ID removed..."

    invoke-static {v1, p1, v2}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/avast/android/generic/h/c;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const-string v2, "-1"

    sget v3, Lcom/avast/android/generic/z;->x:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/avast/a/a/a/a/m;->R:Lcom/avast/a/a/a/a/m;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/avast/android/generic/b/s;->a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/a/a/a/a/m;)Lcom/avast/android/generic/b/a;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v5}, Lcom/avast/android/generic/b/a;->a(Z)V

    .line 43
    invoke-virtual {v0, v5}, Lcom/avast/android/generic/b/a;->c(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/avast/android/generic/h/c;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/service/AvastService;->a(Lcom/avast/android/generic/b/a;Z)V

    goto :goto_0
.end method
