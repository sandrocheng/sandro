.class public abstract Lcom/keniu/security/main/a/v;
.super Ljava/lang/Object;
.source "PrefBooleanCheckModule.java"

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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "\u7acb\u5373\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/v;->b:Ljava/lang/String;

    .line 31
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/v;->c:Ljava/lang/String;

    .line 32
    const-string v0, "\u5df2\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/v;->d:Ljava/lang/String;

    .line 33
    const-string v0, "\u672a\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/v;->e:Ljava/lang/String;

    .line 34
    const-string v0, "\u662f\u5426\u5f00\u542f"

    iput-object v0, p0, Lcom/keniu/security/main/a/v;->f:Ljava/lang/String;

    .line 36
    sget v0, Lcom/keniu/security/main/a/k;->c:I

    iput v0, p0, Lcom/keniu/security/main/a/v;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/keniu/security/main/a/v;->g:I

    return v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 104
    sget v0, Lcom/keniu/security/main/a/k;->k:I

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/keniu/security/main/a/v;->a:Ljava/lang/String;

    .line 115
    :goto_0
    return-object v0

    .line 106
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->l:I

    if-ne p1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/keniu/security/main/a/v;->b:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_1
    sget v0, Lcom/keniu/security/main/a/k;->m:I

    if-ne p1, v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/keniu/security/main/a/v;->c:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_2
    sget v0, Lcom/keniu/security/main/a/k;->n:I

    if-ne p1, v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/keniu/security/main/a/v;->d:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_3
    sget v0, Lcom/keniu/security/main/a/k;->o:I

    if-ne p1, v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/keniu/security/main/a/v;->f:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/main/a/l;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->a(Lcom/keniu/security/main/a/m;)I

    .line 124
    invoke-virtual {p0, p2}, Lcom/keniu/security/main/a/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/v;->h:I

    .line 131
    :goto_0
    invoke-interface {p1, p0}, Lcom/keniu/security/main/a/l;->b(Lcom/keniu/security/main/a/m;)I

    .line 132
    return-void

    .line 127
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/v;->h:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 82
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/keniu/security/main/a/v;->h:I

    return v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/keniu/security/main/a/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget v0, Lcom/keniu/security/main/a/k;->g:I

    iput v0, p0, Lcom/keniu/security/main/a/v;->h:I

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    sget v0, Lcom/keniu/security/main/a/k;->i:I

    iput v0, p0, Lcom/keniu/security/main/a/v;->h:I

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/keniu/security/main/a/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract c(Landroid/content/Context;)Z
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/keniu/security/main/a/v;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->h:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/keniu/security/main/a/v;->h:I

    sget v1, Lcom/keniu/security/main/a/k;->g:I

    if-ne v0, v1, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
