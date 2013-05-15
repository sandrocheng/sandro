.class public final Lcom/avast/android/generic/util/m;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/generic/util/m;->a:Z

    .line 13
    const-string v0, "app"

    sput-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    sget-boolean v1, Lcom/avast/android/generic/util/m;->a:Z

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 40
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    sget-boolean v1, Lcom/avast/android/generic/util/m;->a:Z

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 68
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    sput-object p0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 24
    sput-boolean p0, Lcom/avast/android/generic/util/m;->a:Z

    .line 25
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/avast/android/generic/util/m;->a:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    sget-boolean v1, Lcom/avast/android/generic/util/m;->a:Z

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 60
    :cond_0
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    sget-boolean v1, Lcom/avast/android/generic/util/m;->a:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 96
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/avast/android/generic/util/m;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/avast/android/generic/util/m;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
