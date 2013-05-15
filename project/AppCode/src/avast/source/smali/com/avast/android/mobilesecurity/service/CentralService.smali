.class public Lcom/avast/android/mobilesecurity/service/CentralService;
.super Lcom/avast/android/generic/service/AvastService;
.source "CentralService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avast/android/generic/service/AvastService;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/avast/android/generic/b/h;ZZ)Lcom/avast/android/generic/b/d;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const v0, 0x7f07020e

    invoke-static {p0, v0, p1}, Lcom/avast/android/generic/b/q;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    new-instance v0, Lcom/avast/android/mobilesecurity/service/a/a;

    invoke-direct {v0, p0, p2, p3}, Lcom/avast/android/mobilesecurity/service/a/a;-><init>(Lcom/avast/android/mobilesecurity/service/CentralService;Lcom/avast/android/generic/b/h;Z)V

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Command not supported by avast! Free Mobile Security"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/avast/a/a/a/h;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method protected a(Lcom/avast/android/generic/h/o;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportService;->b(Landroid/content/Context;)V

    .line 84
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportService;->a(Landroid/content/Context;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/account/AccountReportService;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "AvastMobileSecurity"

    const-string v1, "Initializing central service"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "AvastMobileSecurity"

    const-string v1, "Initializing central service successfully finished"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public h()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 67
    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->w()Ljava/lang/String;

    move-result-object v3

    .line 68
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->k:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 70
    return-void
.end method

.method public i()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->l:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 77
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 111
    const v0, 0x7f0c03d8

    return v0
.end method

.method public m()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
