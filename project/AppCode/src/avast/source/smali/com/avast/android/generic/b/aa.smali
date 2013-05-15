.class public Lcom/avast/android/generic/b/aa;
.super Lcom/avast/android/generic/b/a;
.source "SmsCommand.java"


# direct methods
.method private constructor <init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/avast/android/generic/b/a;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static a(Lcom/avast/android/generic/service/AvastService;Ljava/lang/String;Ljava/lang/String;)Lcom/avast/android/generic/b/a;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    const-class v0, Lcom/avast/android/generic/ag;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 20
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->j()Z

    move-result v5

    .line 21
    invoke-virtual {p0}, Lcom/avast/android/generic/service/AvastService;->k()Z

    move-result v6

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/service/AvastService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 25
    invoke-static {p0, v0, p2}, Lcom/avast/android/generic/b/d;->a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Ljava/lang/String;)Lcom/avast/android/generic/b/d;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v2

    .line 31
    :cond_0
    if-eqz v4, :cond_3

    .line 33
    if-eqz v6, :cond_1

    if-nez v5, :cond_8

    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    :goto_0
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->p()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 50
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 41
    :cond_2
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Lcom/avast/android/generic/b/a/a;

    invoke-direct {v0}, Lcom/avast/android/generic/b/a/a;-><init>()V

    throw v0

    .line 53
    :cond_4
    invoke-virtual {v1, v2}, Lcom/avast/android/generic/b/d;->b(Z)V

    .line 55
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->r()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 57
    sget v2, Lcom/avast/android/generic/z;->aK:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/service/AvastService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/avast/a/a/a/a/m;->d:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v1, v2, v4}, Lcom/avast/android/generic/b/d;->a(Ljava/lang/String;Lcom/avast/a/a/a/a/m;)V

    .line 62
    :cond_5
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 66
    invoke-virtual {v1}, Lcom/avast/android/generic/b/d;->b()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->I()Ljava/lang/String;

    move-result-object v2

    .line 69
    instance-of v0, v1, Lcom/avast/android/generic/b/w;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 71
    check-cast v0, Lcom/avast/android/generic/b/w;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/w;->B()Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_7

    .line 76
    :goto_1
    new-instance v2, Lcom/avast/android/generic/b/u;

    invoke-direct {v2, v1, v4, v0, p2}, Lcom/avast/android/generic/b/u;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v3}, Lcom/avast/android/generic/b/u;->c(Z)V

    move-object v0, v2

    .line 82
    :goto_2
    return-object v0

    .line 81
    :cond_6
    new-instance v0, Lcom/avast/android/generic/b/aa;

    invoke-direct {v0, v1, p1, p2}, Lcom/avast/android/generic/b/aa;-><init>(Lcom/avast/android/generic/b/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_0
.end method
