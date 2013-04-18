.class public final Lcom/keniu/security/sync/d/d/a/jf;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jg;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5124
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 5270
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5306
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5125
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->n()Z

    .line 5126
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 5110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jf;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5129
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 5270
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5306
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5130
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->n()Z

    .line 5131
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jf;)Lcom/keniu/security/sync/d/d/a/je;
    .locals 2
    .parameter

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->v()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/je;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1
    .parameter

    .prologue
    .line 5285
    if-nez p1, :cond_0

    .line 5286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5288
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5289
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5290
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5291
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1
    .parameter

    .prologue
    .line 5321
    if-nez p1, :cond_0

    .line 5322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5324
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5325
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5326
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5327
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1
    .parameter

    .prologue
    .line 5198
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/je;

    if-eqz v0, :cond_0

    .line 5199
    check-cast p1, Lcom/keniu/security/sync/d/d/a/je;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/je;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    .line 5202
    :goto_0
    return-object v0

    .line 5201
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 5202
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5300
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5301
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5302
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5303
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5336
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5337
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5338
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5339
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5110
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jf;-><init>()V

    return-object v0
.end method

.method private static n()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5115
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->r()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 0

    .prologue
    .line 5133
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->n()Z

    .line 5135
    return-void
.end method

.method private static p()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5137
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jf;-><init>()V

    return-object v0
.end method

.method private q()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5141
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 5142
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5143
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5144
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5145
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5146
    return-object p0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 2

    .prologue
    .line 5150
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jf;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jf;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->v()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/keniu/security/sync/d/d/a/je;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/je;
    .locals 1

    .prologue
    .line 5159
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->h()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/je;
    .locals 2

    .prologue
    .line 5163
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->v()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    .line 5164
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/je;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5165
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 5167
    :cond_0
    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/je;
    .locals 2

    .prologue
    .line 5172
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->v()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    .line 5173
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/je;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5174
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jf;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 5177
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/je;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5181
    new-instance v0, Lcom/keniu/security/sync/d/d/a/je;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/je;-><init>(Lcom/keniu/security/sync/d/d/a/jf;)V

    .line 5182
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5183
    const/4 v2, 0x0

    .line 5184
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 5187
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/je;->a(Lcom/keniu/security/sync/d/d/a/je;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5188
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 5189
    or-int/lit8 v1, v2, 0x2

    .line 5191
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/je;->b(Lcom/keniu/security/sync/d/d/a/je;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5192
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/je;->a(Lcom/keniu/security/sync/d/d/a/je;I)I

    .line 5193
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->ab_()V

    .line 5194
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5294
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5295
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->h()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/je;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5296
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5297
    return-object p0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/jf;
    .locals 1

    .prologue
    .line 5330
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5331
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->h()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/je;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5332
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5333
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 5120
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->s()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 5155
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->q()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->r()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5110
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->h()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5110
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->h()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->v()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->t()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->v()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->t()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 5110
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5110
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/je;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 2
    .parameter

    .prologue
    .line 5207
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/je;->h()Lcom/keniu/security/sync/d/d/a/je;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5215
    :goto_0
    return-object v0

    .line 5208
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/je;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5209
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/je;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5211
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/je;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5212
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/je;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    .line 5214
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/je;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jf;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 5215
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5219
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 5227
    :goto_0
    return v0

    .line 5223
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 5225
    goto :goto_0

    .line 5227
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->r()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5110
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->q()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 5110
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/jf;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5110
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->r()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->r()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5110
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/jf;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->r()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jf;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5234
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 5238
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 5239
    sparse-switch v1, :sswitch_data_0

    .line 5245
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/jf;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5247
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jf;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5248
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    move-object v0, p0

    .line 5249
    :goto_1
    return-object v0

    .line 5241
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/jf;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5242
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jf;->af_()V

    move-object v0, p0

    .line 5243
    goto :goto_1

    .line 5254
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5255
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5259
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    .line 5260
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    goto :goto_0

    .line 5239
    nop

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
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->q()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->r()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 5110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jf;->q()Lcom/keniu/security/sync/d/d/a/jf;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5272
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5275
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5276
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5277
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5278
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->b:Ljava/lang/Object;

    .line 5281
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5308
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->a:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5311
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5312
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5313
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5314
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jf;->c:Ljava/lang/Object;

    .line 5317
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
