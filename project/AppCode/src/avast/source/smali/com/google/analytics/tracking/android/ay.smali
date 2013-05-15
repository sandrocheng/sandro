.class Lcom/google/analytics/tracking/android/ay;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static a:Z


# direct methods
.method static a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 46
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 26
    sput-boolean p0, Lcom/google/analytics/tracking/android/ay;->a:Z

    .line 27
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/google/analytics/tracking/android/ay;->a:Z

    return v0
.end method

.method static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    sget-boolean v0, Lcom/google/analytics/tracking/android/ay;->a:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->a(Ljava/lang/String;)I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 71
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static d(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 96
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 107
    sget-boolean v0, Lcom/google/analytics/tracking/android/ay;->a:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->d(Ljava/lang/String;)I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 121
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static g(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 132
    sget-boolean v0, Lcom/google/analytics/tracking/android/ay;->a:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->f(Ljava/lang/String;)I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static h(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 146
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 157
    sget-boolean v0, Lcom/google/analytics/tracking/android/ay;->a:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0}, Lcom/google/analytics/tracking/android/ay;->h(Ljava/lang/String;)I

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
