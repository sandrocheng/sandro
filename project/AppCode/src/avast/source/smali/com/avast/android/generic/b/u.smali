.class public Lcom/avast/android/generic/b/u;
.super Lcom/avast/android/generic/b/a;
.source "InternetCommand.java"


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avast/android/generic/b/a;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;)Lcom/avast/android/generic/b/a;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 22
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->j()Z

    move-result v4

    .line 23
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->u()Z

    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 28
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/avast/android/generic/b/d;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/android/generic/b/d;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/d;->a(Z)V

    .line 31
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->b()Ljava/lang/String;

    move-result-object v5

    .line 33
    if-nez v4, :cond_1

    .line 35
    :goto_0
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 38
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    :cond_1
    move v2, v3

    .line 33
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/d;->b(Z)V

    .line 43
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    sget v2, Lcom/avast/android/generic/z;->aK:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/avast/a/a/a/a/m;->d:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v1, v2, v4}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V

    .line 52
    :cond_3
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v2

    .line 53
    instance-of v0, v1, Lcom/avast/android/generic/b/w;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 55
    check-cast v0, Lcom/avast/android/generic/b/w;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/w;->B()Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_4

    .line 60
    :goto_1
    new-instance v2, Lcom/avast/android/generic/b/u;

    invoke-direct {v2, v1, v5, v0, p1}, Lcom/avast/android/generic/b/u;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, v3}, Lcom/avast/android/generic/b/u;->c(Z)V

    .line 63
    return-object v2

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method
