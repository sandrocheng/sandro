.class public Lcom/avast/android/generic/util/l;
.super Ljava/lang/Object;
.source "DebugBuild.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
