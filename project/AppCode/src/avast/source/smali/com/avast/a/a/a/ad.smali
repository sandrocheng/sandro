.class public final Lcom/avast/a/a/a/ad;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/af;


# static fields
.field private static final a:Lcom/avast/a/a/a/ad;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13859
    new-instance v0, Lcom/avast/a/a/a/ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/ad;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/ad;->a:Lcom/avast/a/a/a/ad;

    .line 13860
    sget-object v0, Lcom/avast/a/a/a/ad;->a:Lcom/avast/a/a/a/ad;

    invoke-direct {v0}, Lcom/avast/a/a/a/ad;->s()V

    .line 13861
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/ae;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13195
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 13354
    iput-byte v0, p0, Lcom/avast/a/a/a/ad;->h:B

    .line 13403
    iput v0, p0, Lcom/avast/a/a/a/ad;->i:I

    .line 13196
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/ae;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/ad;-><init>(Lcom/avast/a/a/a/ae;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13197
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 13354
    iput-byte v0, p0, Lcom/avast/a/a/a/ad;->h:B

    .line 13403
    iput v0, p0, Lcom/avast/a/a/a/ad;->i:I

    .line 13197
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    iput p1, p0, Lcom/avast/a/a/a/ad;->e:I

    return p1
.end method

.method public static a()Lcom/avast/a/a/a/ad;
    .locals 1

    .prologue
    .line 13201
    sget-object v0, Lcom/avast/a/a/a/ad;->a:Lcom/avast/a/a/a/ad;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 13510
    invoke-static {}, Lcom/avast/a/a/a/ad;->l()Lcom/avast/a/a/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/ae;->a(Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    iput-object p1, p0, Lcom/avast/a/a/a/ad;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    iput p1, p0, Lcom/avast/a/a/a/ad;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    iput-object p1, p0, Lcom/avast/a/a/a/ad;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    iput-object p1, p0, Lcom/avast/a/a/a/ad;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13190
    iput-object p1, p0, Lcom/avast/a/a/a/ad;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public static l()Lcom/avast/a/a/a/ae;
    .locals 1

    .prologue
    .line 13507
    invoke-static {}, Lcom/avast/a/a/a/ae;->n()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 13230
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->c:Ljava/lang/Object;

    .line 13231
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13232
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 13234
    iput-object v0, p0, Lcom/avast/a/a/a/ad;->c:Ljava/lang/Object;

    .line 13237
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private p()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 13262
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->d:Ljava/lang/Object;

    .line 13263
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13264
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 13266
    iput-object v0, p0, Lcom/avast/a/a/a/ad;->d:Ljava/lang/Object;

    .line 13269
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private q()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 13304
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->f:Ljava/lang/Object;

    .line 13305
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13306
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 13308
    iput-object v0, p0, Lcom/avast/a/a/a/ad;->f:Ljava/lang/Object;

    .line 13311
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private r()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 13336
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->g:Ljava/lang/Object;

    .line 13337
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13338
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 13340
    iput-object v0, p0, Lcom/avast/a/a/a/ad;->g:Ljava/lang/Object;

    .line 13343
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 13348
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ad;->c:Ljava/lang/Object;

    .line 13349
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ad;->d:Ljava/lang/Object;

    .line 13350
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/a/a/a/ad;->e:I

    .line 13351
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ad;->f:Ljava/lang/Object;

    .line 13352
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ad;->g:Ljava/lang/Object;

    .line 13353
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 13190
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->n()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 13190
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->m()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13385
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->w()I

    .line 13386
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13387
    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->o()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 13389
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13390
    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->p()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 13392
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 13393
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/a/a/a/ad;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 13395
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 13396
    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->q()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 13398
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 13399
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->r()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 13401
    :cond_4
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13213
    iget v1, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13216
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->c:Ljava/lang/Object;

    .line 13217
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13218
    check-cast v0, Ljava/lang/String;

    .line 13226
    :goto_0
    return-object v0

    .line 13220
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 13222
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 13223
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13224
    iput-object v1, p0, Lcom/avast/a/a/a/ad;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 13226
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 13245
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

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

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13248
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->d:Ljava/lang/Object;

    .line 13249
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13250
    check-cast v0, Ljava/lang/String;

    .line 13258
    :goto_0
    return-object v0

    .line 13252
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 13254
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 13255
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13256
    iput-object v1, p0, Lcom/avast/a/a/a/ad;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 13258
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 13277
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

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

.method public g()I
    .locals 1

    .prologue
    .line 13280
    iget v0, p0, Lcom/avast/a/a/a/ad;->e:I

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 13287
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13290
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->f:Ljava/lang/Object;

    .line 13291
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13292
    check-cast v0, Ljava/lang/String;

    .line 13300
    :goto_0
    return-object v0

    .line 13294
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 13296
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 13297
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13298
    iput-object v1, p0, Lcom/avast/a/a/a/ad;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 13300
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 13319
    iget v0, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13322
    iget-object v0, p0, Lcom/avast/a/a/a/ad;->g:Ljava/lang/Object;

    .line 13323
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13324
    check-cast v0, Ljava/lang/String;

    .line 13332
    :goto_0
    return-object v0

    .line 13326
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 13328
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 13329
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13330
    iput-object v1, p0, Lcom/avast/a/a/a/ad;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 13332
    goto :goto_0
.end method

.method public m()Lcom/avast/a/a/a/ae;
    .locals 1

    .prologue
    .line 13508
    invoke-static {}, Lcom/avast/a/a/a/ad;->l()Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/avast/a/a/a/ae;
    .locals 1

    .prologue
    .line 13512
    invoke-static {p0}, Lcom/avast/a/a/a/ad;->a(Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13356
    iget-byte v2, p0, Lcom/avast/a/a/a/ad;->h:B

    .line 13357
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 13380
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 13357
    goto :goto_0

    .line 13359
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13360
    iput-byte v1, p0, Lcom/avast/a/a/a/ad;->h:B

    goto :goto_1

    .line 13363
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13364
    iput-byte v1, p0, Lcom/avast/a/a/a/ad;->h:B

    goto :goto_1

    .line 13367
    :cond_3
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->f()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13368
    iput-byte v1, p0, Lcom/avast/a/a/a/ad;->h:B

    goto :goto_1

    .line 13371
    :cond_4
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->h()Z

    move-result v2

    if-nez v2, :cond_5

    .line 13372
    iput-byte v1, p0, Lcom/avast/a/a/a/ad;->h:B

    goto :goto_1

    .line 13375
    :cond_5
    invoke-virtual {p0}, Lcom/avast/a/a/a/ad;->j()Z

    move-result v2

    if-nez v2, :cond_6

    .line 13376
    iput-byte v1, p0, Lcom/avast/a/a/a/ad;->h:B

    goto :goto_1

    .line 13379
    :cond_6
    iput-byte v0, p0, Lcom/avast/a/a/a/ad;->h:B

    move v1, v0

    .line 13380
    goto :goto_1
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13405
    iget v0, p0, Lcom/avast/a/a/a/ad;->i:I

    .line 13406
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13430
    :goto_0
    return v0

    .line 13408
    :cond_0
    const/4 v0, 0x0

    .line 13409
    iget v1, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 13410
    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->o()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13413
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 13414
    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->p()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13417
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 13418
    const/4 v1, 0x3

    iget v2, p0, Lcom/avast/a/a/a/ad;->e:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13421
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 13422
    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->q()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13425
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 13426
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/ad;->r()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13429
    :cond_5
    iput v0, p0, Lcom/avast/a/a/a/ad;->i:I

    goto :goto_0
.end method
