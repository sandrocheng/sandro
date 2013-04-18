.class public final Lcom/keniu/security/sync/d/d/a/dj;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dk;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gn;

.field private e:Lcom/b/a/fp;

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18943
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 19135
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19225
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 18944
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->u()V

    .line 18945
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 18929
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/dj;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18948
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 19135
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19225
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 18949
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->u()V

    .line 18950
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 19189
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19190
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19191
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19195
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19196
    return-object p0

    .line 19193
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 19199
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19200
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19201
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->E()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private E()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 19213
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19214
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    .line 19219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19221
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 19279
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19280
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 19281
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19285
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19286
    return-object p0

    .line 19283
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/go;
    .locals 1

    .prologue
    .line 19289
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19290
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19291
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->V()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private V()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 19303
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19304
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    .line 19309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 19311
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method private W()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 19329
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19330
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    .line 19331
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19332
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/dj;)Lcom/keniu/security/sync/d/d/a/di;
    .locals 2
    .parameter

    .prologue
    .line 18929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/di;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dj;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 19323
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19324
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    .line 19325
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19326
    return-object p0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 19149
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19150
    if-nez p1, :cond_0

    .line 19151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19153
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19154
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19158
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19159
    return-object p0

    .line 19156
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2
    .parameter

    .prologue
    .line 19163
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19164
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19165
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19169
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19170
    return-object p0

    .line 19167
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 19239
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19240
    if-nez p1, :cond_0

    .line 19241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19243
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 19244
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19248
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19249
    return-object p0

    .line 19246
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2
    .parameter

    .prologue
    .line 19253
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19254
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 19255
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19259
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19260
    return-object p0

    .line 19257
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2
    .parameter

    .prologue
    .line 19173
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19174
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19176
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19181
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19185
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19186
    return-object p0

    .line 19179
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 19183
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2
    .parameter

    .prologue
    .line 19263
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19264
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19266
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 19271
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19275
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19276
    return-object p0

    .line 19269
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0

    .line 19273
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1
    .parameter

    .prologue
    .line 19041
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/di;

    if-eqz v0, :cond_0

    .line 19042
    check-cast p1, Lcom/keniu/security/sync/d/d/a/di;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    .line 19045
    :goto_0
    return-object v0

    .line 19044
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 19045
    goto :goto_0
.end method

.method static synthetic s()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 18929
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dj;-><init>()V

    return-object v0
.end method

.method private static t()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 18934
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ad()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 18952
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18953
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->E()Lcom/b/a/fp;

    .line 18954
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->V()Lcom/b/a/fp;

    .line 18956
    :cond_0
    return-void
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 18958
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dj;-><init>()V

    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 1

    .prologue
    .line 18962
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 18963
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 18964
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 18968
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 18969
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 18970
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 18974
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 18975
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    .line 18976
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 18977
    return-object p0

    .line 18966
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 18972
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/dj;
    .locals 2

    .prologue
    .line 18981
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/dj;-><init>()V

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/di;
    .locals 1

    .prologue
    .line 18990
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->h()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/di;
    .locals 2

    .prologue
    .line 19003
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    .line 19004
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/di;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19005
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dj;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 19008
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 18939
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->ae()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 18986
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->w()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->x()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18929
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->h()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18929
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->h()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 18929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 18929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->i()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 18929
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18929
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/di;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 3
    .parameter

    .prologue
    .line 19050
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/di;->h()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 19061
    :goto_0
    return-object v0

    .line 19051
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19052
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19054
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19055
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19057
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19058
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->q()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    .line 19060
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/di;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dj;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 19061
    goto/16 :goto_0

    .line 19052
    :cond_4
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 19055
    :cond_6
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19065
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 19079
    :goto_0
    return v0

    .line 19069
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 19071
    goto :goto_0

    .line 19073
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19074
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 19076
    goto :goto_0

    .line 19079
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->x()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18929
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->w()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 18929
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/dj;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18929
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->x()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->x()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18929
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/dj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->x()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dj;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 19086
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 19090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 19091
    sparse-switch v1, :sswitch_data_0

    .line 19097
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/dj;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19099
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dj;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 19100
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    move-object v0, p0

    .line 19101
    :goto_1
    return-object v0

    .line 19093
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/dj;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 19094
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    move-object v0, p0

    .line 19095
    goto :goto_1

    .line 19106
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 19107
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19108
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 19110
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 19111
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 19115
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 19116
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19117
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    .line 19119
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 19120
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 19124
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19125
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    goto/16 :goto_0

    .line 19091
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->w()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->x()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 18929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/dj;->w()Lcom/keniu/security/sync/d/d/a/dj;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/di;
    .locals 2

    .prologue
    .line 18994
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->r()Lcom/keniu/security/sync/d/d/a/di;

    move-result-object v0

    .line 18995
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/di;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18996
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dj;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 18998
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19139
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

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
    .line 19142
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19143
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 19145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 19204
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 19205
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 19207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 19229
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 19232
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 19233
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 19235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 19294
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 19295
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 19297
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 19317
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 19320
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    return v0
.end method

.method public final r()Lcom/keniu/security/sync/d/d/a/di;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 19012
    new-instance v1, Lcom/keniu/security/sync/d/d/a/di;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/di;-><init>(Lcom/keniu/security/sync/d/d/a/dj;)V

    .line 19013
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/dj;->a:I

    .line 19014
    const/4 v0, 0x0

    .line 19015
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_4

    move v3, v4

    .line 19018
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 19019
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/di;->a(Lcom/keniu/security/sync/d/d/a/di;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 19023
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 19024
    or-int/lit8 v0, v3, 0x2

    move v3, v0

    .line 19026
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 19027
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/di;->a(Lcom/keniu/security/sync/d/d/a/di;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    .line 19031
    :goto_2
    and-int/lit8 v0, v2, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 19032
    or-int/lit8 v0, v3, 0x4

    .line 19034
    :goto_3
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/dj;->f:I

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/di;->a(Lcom/keniu/security/sync/d/d/a/di;I)I

    .line 19035
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/di;->b(Lcom/keniu/security/sync/d/d/a/di;I)I

    .line 19036
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/dj;->ab_()V

    .line 19037
    return-object v1

    .line 19021
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/di;->a(Lcom/keniu/security/sync/d/d/a/di;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 19029
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/dj;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/di;->a(Lcom/keniu/security/sync/d/d/a/di;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_0
.end method
