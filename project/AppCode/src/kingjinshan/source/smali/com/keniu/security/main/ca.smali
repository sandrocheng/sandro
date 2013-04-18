.class public final Lcom/keniu/security/main/ca;
.super Lcom/keniu/security/main/bs;
.source "ModuleOptimiza.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 21
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const v1, 0x7f0b0832

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 25
    :cond_0
    const-string v1, "process_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const v1, 0x7f0b0802

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    sget v1, Lcom/keniu/security/main/bn;->g:I

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
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/keniu/security/main/bn;->g:I

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 40
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 41
    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 45
    invoke-virtual {v1}, Lcom/keniu/security/a;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/keniu/security/a;->aI()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/keniu/security/traffic/y;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/ca;->a(I)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/ca;->a(I)V

    goto :goto_0
.end method
