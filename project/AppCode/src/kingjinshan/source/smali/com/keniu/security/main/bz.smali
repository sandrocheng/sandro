.class public final Lcom/keniu/security/main/bz;
.super Lcom/keniu/security/main/bs;
.source "ModuleNormal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 17
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const v1, 0x7f0b0831

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_0
    return-object v0

    .line 21
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

    .line 27
    :cond_1
    sget v1, Lcom/keniu/security/main/bn;->h:I

    invoke-virtual {v0, v1, p1}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->c()V

    .line 42
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/keniu/security/main/bn;->h:I

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bz;->a(I)V

    .line 34
    return-void
.end method
