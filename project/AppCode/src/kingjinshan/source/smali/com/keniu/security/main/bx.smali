.class public final Lcom/keniu/security/main/bx;
.super Lcom/keniu/security/main/bs;
.source "ModuleCheckTip.java"


# instance fields
.field private u:Z

.field private v:Z

.field private w:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/keniu/security/main/bx;->u:Z

    .line 13
    iput-boolean v0, p0, Lcom/keniu/security/main/bx;->v:Z

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/main/bx;->w:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0b0806

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 23
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 24
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 25
    iget-boolean v1, p0, Lcom/keniu/security/main/bx;->u:Z

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0805

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/keniu/security/main/bx;->v:Z

    if-eqz v1, :cond_4

    .line 29
    iget-wide v1, p0, Lcom/keniu/security/main/bx;->w:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 30
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/keniu/security/main/bx;->w:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "process_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    const v1, 0x7f0b0802

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    const-string v1, "param2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    sget v1, Lcom/keniu/security/main/bn;->f:I

    const-string v2, "param2"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_4
    sget v1, Lcom/keniu/security/main/bn;->f:I

    invoke-virtual {v0, v1, p1}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->c()V

    .line 81
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/keniu/security/main/bx;->u:Z

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/keniu/security/main/bn;->f:I

    return v0
.end method

.method public final e()V
    .locals 11

    .prologue
    const-wide/32 v9, 0x5265c00

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 49
    const-string v0, "param2"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iput-boolean v7, p0, Lcom/keniu/security/main/bx;->u:Z

    .line 53
    invoke-virtual {p0, v8}, Lcom/keniu/security/main/bx;->a(I)V

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "param3"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 60
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 61
    add-long v5, v3, v9

    cmp-long v0, v5, v1

    if-gez v0, :cond_1

    .line 64
    iput-boolean v7, p0, Lcom/keniu/security/main/bx;->v:Z

    .line 65
    sub-long v0, v1, v3

    div-long/2addr v0, v9

    iput-wide v0, p0, Lcom/keniu/security/main/bx;->w:J

    .line 66
    invoke-virtual {p0, v8}, Lcom/keniu/security/main/bx;->a(I)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0, v7}, Lcom/keniu/security/main/bx;->a(I)V

    goto :goto_0
.end method
