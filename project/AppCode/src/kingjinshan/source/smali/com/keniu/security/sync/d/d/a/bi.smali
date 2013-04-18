.class public final Lcom/keniu/security/sync/d/d/a/bi;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/bj;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/hc;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31937
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 32109
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32199
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 31938
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->q()V

    .line 31939
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 31923
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/bi;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31942
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 32109
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32199
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 31943
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->q()V

    .line 31944
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 32187
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32188
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    .line 32193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32195
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 32253
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32254
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32255
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32259
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32260
    return-object p0

    .line 32257
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/hd;
    .locals 1

    .prologue
    .line 32263
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32264
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32265
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hd;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 32277
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32278
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    .line 32283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32285
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/bi;)Lcom/keniu/security/sync/d/d/a/bh;
    .locals 2
    .parameter

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->x()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1
    .parameter

    .prologue
    .line 32123
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 32124
    if-nez p1, :cond_0

    .line 32125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32127
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32128
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32132
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32133
    return-object p0

    .line 32130
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 2
    .parameter

    .prologue
    .line 32137
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32138
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32139
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32143
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32144
    return-object p0

    .line 32141
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1
    .parameter

    .prologue
    .line 32213
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 32214
    if-nez p1, :cond_0

    .line 32215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32217
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32218
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32222
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32223
    return-object p0

    .line 32220
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/hd;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 2
    .parameter

    .prologue
    .line 32227
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32228
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32229
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32233
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32234
    return-object p0

    .line 32231
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/hd;->i()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 2
    .parameter

    .prologue
    .line 32147
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 32148
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 32150
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32155
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32159
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32160
    return-object p0

    .line 32153
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 32157
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 2
    .parameter

    .prologue
    .line 32237
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 32238
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 32240
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32245
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32249
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32250
    return-object p0

    .line 32243
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    goto :goto_0

    .line 32247
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1
    .parameter

    .prologue
    .line 32029
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/bh;

    if-eqz v0, :cond_0

    .line 32030
    check-cast p1, Lcom/keniu/security/sync/d/d/a/bh;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bh;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    .line 32033
    :goto_0
    return-object v0

    .line 32032
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 32033
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 31923
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bi;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 31928
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aR()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 31946
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bh;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31947
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->A()Lcom/b/a/fp;

    .line 31948
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->N()Lcom/b/a/fp;

    .line 31950
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 31952
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bi;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 31956
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 31957
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 31958
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 31962
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 31963
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 31964
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 31968
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 31969
    return-object p0

    .line 31960
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 31966
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 2

    .prologue
    .line 31973
    new-instance v0, Lcom/keniu/security/sync/d/d/a/bi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/bi;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->x()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/keniu/security/sync/d/d/a/bh;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/bh;
    .locals 1

    .prologue
    .line 31982
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bh;->h()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/bh;
    .locals 2

    .prologue
    .line 31986
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->x()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    .line 31987
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31988
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 31990
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/bh;
    .locals 2

    .prologue
    .line 31995
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->x()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    .line 31996
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/bh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31997
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/bi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 32000
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/bh;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 32004
    new-instance v1, Lcom/keniu/security/sync/d/d/a/bh;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/bh;-><init>(Lcom/keniu/security/sync/d/d/a/bi;)V

    .line 32005
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32006
    const/4 v0, 0x0

    .line 32007
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 32010
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32011
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bh;->a(Lcom/keniu/security/sync/d/d/a/bh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 32015
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 32016
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 32018
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 32019
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bh;->a(Lcom/keniu/security/sync/d/d/a/bh;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;

    .line 32023
    :goto_3
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/bh;->a(Lcom/keniu/security/sync/d/d/a/bh;I)I

    .line 32024
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->ab_()V

    .line 32025
    return-object v1

    .line 32013
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bh;->a(Lcom/keniu/security/sync/d/d/a/bh;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 32021
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/bh;->a(Lcom/keniu/security/sync/d/d/a/bh;Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hc;

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/bi;
    .locals 1

    .prologue
    .line 32163
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32164
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32165
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32169
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32170
    return-object p0

    .line 32167
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 32173
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32174
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    .line 32175
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->A()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 31933
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->aS()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 31978
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bh;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->s()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->t()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31923
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bh;->h()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31923
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bh;->h()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->x()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->v()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->x()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->v()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 31923
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31923
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/bh;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 3
    .parameter

    .prologue
    .line 32038
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/bh;->h()Lcom/keniu/security/sync/d/d/a/bh;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 32046
    :goto_0
    return-object v0

    .line 32039
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bh;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32040
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bh;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32042
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bh;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32043
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bh;->n()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->h()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/hc;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    .line 32045
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/bh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bi;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 32046
    goto :goto_0

    .line 32040
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 32043
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32050
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 32058
    :goto_0
    return v0

    .line 32054
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 32056
    goto :goto_0

    .line 32058
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->t()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31923
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->s()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 31923
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/bi;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31923
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->t()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->t()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31923
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/bi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->t()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/bi;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 32065
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 32069
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 32070
    sparse-switch v1, :sswitch_data_0

    .line 32076
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/bi;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32078
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bi;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 32079
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    move-object v0, p0

    .line 32080
    :goto_1
    return-object v0

    .line 32072
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/bi;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 32073
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    move-object v0, p0

    .line 32074
    goto :goto_1

    .line 32085
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 32086
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32087
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 32089
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 32090
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 32094
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hc;->O()Lcom/keniu/security/sync/d/d/a/hd;

    move-result-object v1

    .line 32095
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32096
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->n()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/hd;->a(Lcom/keniu/security/sync/d/d/a/hc;)Lcom/keniu/security/sync/d/d/a/hd;

    .line 32098
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 32099
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/hd;->D()Lcom/keniu/security/sync/d/d/a/hc;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/bi;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 32070
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->s()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->t()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 31923
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/bi;->s()Lcom/keniu/security/sync/d/d/a/bi;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32113
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 32116
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32117
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 32119
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 32178
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 32179
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 32181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 32203
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Lcom/keniu/security/sync/d/d/a/hc;
    .locals 1

    .prologue
    .line 32206
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 32207
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    .line 32209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hc;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/hg;
    .locals 1

    .prologue
    .line 32268
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 32269
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/hg;

    move-object v0, p0

    .line 32271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/bi;->d:Lcom/keniu/security/sync/d/d/a/hc;

    goto :goto_0
.end method
