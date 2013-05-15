.class public Lcom/avast/android/mobilesecurity/c/a;
.super Lcom/avast/android/generic/internet/b;
.source "MobileSecurityHttp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avast/android/generic/internet/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;I)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/service/CentralService;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return v2

    .line 41
    :cond_0
    invoke-static {}, Lcom/avast/a/a/a/ag;->d()Lcom/avast/a/a/a/ah;

    move-result-object v0

    .line 43
    const v1, 0x7f06000a

    invoke-static {p1, v1}, Lcom/avast/android/generic/util/aw;->a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/avast/android/generic/util/aw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/ah;->a(Ljava/lang/String;)Lcom/avast/a/a/a/ah;

    .line 47
    invoke-virtual {v0}, Lcom/avast/a/a/a/ah;->c()Lcom/avast/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/avast/a/a/a/ak;->a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ak;

    .line 48
    const-string v0, "MS"

    invoke-virtual {p4, v0}, Lcom/avast/a/a/a/ak;->b(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    goto :goto_0
.end method

.method protected a(Lcom/avast/android/generic/service/AvastService;Lcom/avast/android/generic/ae;Lcom/avast/android/generic/ae;Lcom/avast/a/a/a/ak;IJ)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 19
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/service/CentralService;

    if-nez v0, :cond_0

    .line 31
    :goto_0
    return v2

    .line 22
    :cond_0
    invoke-static {}, Lcom/avast/a/a/a/ag;->d()Lcom/avast/a/a/a/ah;

    move-result-object v0

    .line 24
    const v1, 0x7f06000a

    invoke-static {p1, v1}, Lcom/avast/android/generic/util/aw;->a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/avast/android/generic/util/aw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/ah;->a(Ljava/lang/String;)Lcom/avast/a/a/a/ah;

    .line 28
    invoke-virtual {v0}, Lcom/avast/a/a/a/ah;->c()Lcom/avast/a/a/a/ag;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/avast/a/a/a/ak;->a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ak;

    .line 29
    const-string v0, "MS"

    invoke-virtual {p4, v0}, Lcom/avast/a/a/a/ak;->b(Ljava/lang/String;)Lcom/avast/a/a/a/ak;

    goto :goto_0
.end method
