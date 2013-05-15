.class public Lcom/avast/android/generic/h/d;
.super Lcom/avast/android/generic/h/l;
.source "C2DMEnableSuiteComponentTask.java"


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
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    const-string v0, "AvastGeneric"

    const-string v1, "Sending C2DM registration message..."

    invoke-static {v0, p1, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/avast/android/generic/util/g;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Lcom/avast/android/generic/util/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    const-string v0, "AvastGeneric"

    const-string v1, "C2DM registration message sent..."

    invoke-static {v0, p1, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void

    .line 20
    :catch_0
    move-exception v0

    goto :goto_0
.end method
