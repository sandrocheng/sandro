.class public final Lcom/keniu/security/main/by;
.super Lcom/keniu/security/main/bs;
.source "ModuleFirstCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 20
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    const v1, 0x7f0b0804

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    const-string v1, "process_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    const v1, 0x7f0b0802

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
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
    .line 43
    if-nez p2, :cond_0

    .line 44
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->c()V

    .line 47
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/keniu/security/main/bn;->f:I

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "param1"

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/by;->a(I)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/by;->a(I)V

    goto :goto_0
.end method
