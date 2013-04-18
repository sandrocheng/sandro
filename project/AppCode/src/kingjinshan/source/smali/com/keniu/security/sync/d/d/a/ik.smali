.class public final Lcom/keniu/security/sync/d/d/a/ik;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/il;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4145
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 4309
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4345
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4381
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4146
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->p()Z

    .line 4147
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 4131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ik;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4150
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 4309
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4345
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4381
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4151
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->p()Z

    .line 4152
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4405
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4406
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ij;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4407
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4408
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ik;)Lcom/keniu/security/sync/d/d/a/ij;
    .locals 2
    .parameter

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->x()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ij;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ik;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1
    .parameter

    .prologue
    .line 4324
    if-nez p1, :cond_0

    .line 4325
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4327
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4328
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4329
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4330
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1
    .parameter

    .prologue
    .line 4360
    if-nez p1, :cond_0

    .line 4361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4363
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4364
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4365
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4366
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1
    .parameter

    .prologue
    .line 4396
    if-nez p1, :cond_0

    .line 4397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4399
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4400
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4401
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4402
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1
    .parameter

    .prologue
    .line 4225
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ij;

    if-eqz v0, :cond_0

    .line 4226
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ij;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ij;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    .line 4229
    :goto_0
    return-object v0

    .line 4228
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 4229
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 4339
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4340
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4341
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4342
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 4375
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4376
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4377
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4378
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 4411
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4412
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4413
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4414
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4131
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ik;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4136
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->n()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static q()V
    .locals 0

    .prologue
    .line 4154
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->p()Z

    .line 4156
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4158
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ik;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4162
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 4163
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4164
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4165
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4166
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4167
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4168
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4169
    return-object p0
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 2

    .prologue
    .line 4173
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ik;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ik;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->x()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/keniu/security/sync/d/d/a/ij;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ij;
    .locals 1

    .prologue
    .line 4182
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ij;
    .locals 2

    .prologue
    .line 4186
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->x()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    .line 4187
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ij;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4188
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ik;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 4190
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/ij;
    .locals 2

    .prologue
    .line 4195
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->x()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    .line 4196
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ij;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4197
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ik;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 4200
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ij;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4204
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ij;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ij;-><init>(Lcom/keniu/security/sync/d/d/a/ik;)V

    .line 4205
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4206
    const/4 v2, 0x0

    .line 4207
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 4210
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ij;->a(Lcom/keniu/security/sync/d/d/a/ij;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4211
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4212
    or-int/lit8 v2, v2, 0x2

    .line 4214
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ij;->b(Lcom/keniu/security/sync/d/d/a/ij;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4215
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 4216
    or-int/lit8 v1, v2, 0x4

    .line 4218
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/ij;->c(Lcom/keniu/security/sync/d/d/a/ij;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4219
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/ij;->a(Lcom/keniu/security/sync/d/d/a/ij;I)I

    .line 4220
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->ab_()V

    .line 4221
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4333
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4334
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ij;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4335
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4336
    return-object p0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/ik;
    .locals 1

    .prologue
    .line 4369
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4370
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ij;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4371
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4372
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4141
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->o()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4178
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->s()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->t()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4131
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4131
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->x()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->v()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->x()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->v()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 4131
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4131
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ik;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ij;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 2
    .parameter

    .prologue
    .line 4234
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ij;->h()Lcom/keniu/security/sync/d/d/a/ij;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4245
    :goto_0
    return-object v0

    .line 4235
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4236
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4238
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4239
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4241
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4242
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    .line 4244
    :cond_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ij;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ik;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 4245
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4249
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 4261
    :goto_0
    return v0

    .line 4253
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 4255
    goto :goto_0

    .line 4257
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->n()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 4259
    goto :goto_0

    .line 4261
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->t()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4131
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ik;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->s()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4131
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ik;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4131
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ik;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->t()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->t()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4131
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ik;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->t()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ik;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4268
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 4272
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 4273
    sparse-switch v1, :sswitch_data_0

    .line 4279
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ik;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4281
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ik;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4282
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    move-object v0, p0

    .line 4283
    :goto_1
    return-object v0

    .line 4275
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ik;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 4276
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ik;->af_()V

    move-object v0, p0

    .line 4277
    goto :goto_1

    .line 4288
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4289
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    goto :goto_0

    .line 4293
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4294
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    goto :goto_0

    .line 4298
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

    .line 4299
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    goto :goto_0

    .line 4273
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->s()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->t()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ik;->s()Lcom/keniu/security/sync/d/d/a/ik;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4311
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

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
    .line 4314
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4315
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4316
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 4317
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->b:Ljava/lang/Object;

    .line 4320
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 4347
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

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
    .line 4350
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4351
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4352
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 4353
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->c:Ljava/lang/Object;

    .line 4356
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 4383
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->a:I

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

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4387
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4388
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 4389
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ik;->d:Ljava/lang/Object;

    .line 4392
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
