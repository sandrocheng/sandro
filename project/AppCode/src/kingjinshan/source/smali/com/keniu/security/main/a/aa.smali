.class public abstract Lcom/keniu/security/main/a/aa;
.super Ljava/lang/Object;
.source "PrefManuCheckModule.java"

# interfaces
.implements Lcom/keniu/security/main/a/m;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "\u7acb\u5373\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/aa;->b:Ljava/lang/String;

    .line 29
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/aa;->c:Ljava/lang/String;

    .line 30
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/aa;->d:Ljava/lang/String;

    .line 31
    const-string v0, "\u672a\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/aa;->e:Ljava/lang/String;

    .line 32
    const-string v0, "\u662f\u5426\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/aa;->f:Ljava/lang/String;

    .line 34
    sget v0, Lcom/keniu/security/main/a/k;->d:I

    iput v0, p0, Lcom/keniu/security/main/a/aa;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/keniu/security/main/a/aa;->g:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/keniu/security/main/a/aa;->a:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    .line 103
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/keniu/security/main/a/aa;->b:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/keniu/security/main/a/aa;->c:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/keniu/security/main/a/aa;->d:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/keniu/security/main/a/aa;->f:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 121
    invoke-virtual {p0, p2}, Lcom/keniu/security/main/a/aa;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    .line 127
    :goto_0
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 128
    return-void

    .line 124
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/keniu/security/main/a/aa;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/keniu/security/main/a/aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract c(Landroid/content/Context;)Z
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/aa;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 54
    :cond_0
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
