.class public final Lcom/avast/a/a/a/a/g;
.super Lcom/google/a/l;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/i;


# static fields
.field private static final a:Lcom/avast/a/a/a/a/g;


# instance fields
.field private b:I

.field private c:J

.field private d:J

.field private e:Lcom/avast/a/a/a/a/e;

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:J

.field private j:Ljava/lang/Object;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3986
    new-instance v0, Lcom/avast/a/a/a/a/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/g;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/a/g;->a:Lcom/avast/a/a/a/a/g;

    .line 3987
    sget-object v0, Lcom/avast/a/a/a/a/g;->a:Lcom/avast/a/a/a/a/g;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/g;->z()V

    .line 3988
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/a/h;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3217
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 3387
    iput-byte v0, p0, Lcom/avast/a/a/a/a/g;->k:B

    .line 3433
    iput v0, p0, Lcom/avast/a/a/a/a/g;->l:I

    .line 3218
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/a/h;Lcom/avast/a/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/a/g;-><init>(Lcom/avast/a/a/a/a/h;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3219
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 3387
    iput-byte v0, p0, Lcom/avast/a/a/a/a/g;->k:B

    .line 3433
    iput v0, p0, Lcom/avast/a/a/a/a/g;->l:I

    .line 3219
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/g;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput p1, p0, Lcom/avast/a/a/a/a/g;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/g;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-wide p1, p0, Lcom/avast/a/a/a/a/g;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/g;Lcom/avast/a/a/a/a/e;)Lcom/avast/a/a/a/a/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/avast/a/a/a/a/g;->e:Lcom/avast/a/a/a/a/e;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/a/g;
    .locals 1

    .prologue
    .line 3223
    sget-object v0, Lcom/avast/a/a/a/a/g;->a:Lcom/avast/a/a/a/a/g;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 3552
    invoke-static {}, Lcom/avast/a/a/a/a/g;->r()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/a/h;->a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/avast/a/a/a/a/g;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/g;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-wide p1, p0, Lcom/avast/a/a/a/a/g;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/avast/a/a/a/a/g;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/g;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-wide p1, p0, Lcom/avast/a/a/a/a/g;->f:J

    return-wide p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-object p1, p0, Lcom/avast/a/a/a/a/g;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/g;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3212
    iput-wide p1, p0, Lcom/avast/a/a/a/a/g;->i:J

    return-wide p1
.end method

.method public static r()Lcom/avast/a/a/a/a/h;
    .locals 1

    .prologue
    .line 3549
    invoke-static {}, Lcom/avast/a/a/a/a/h;->k()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3292
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->g:Ljava/lang/Object;

    .line 3293
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3294
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3296
    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->g:Ljava/lang/Object;

    .line 3299
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private x()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3324
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->h:Ljava/lang/Object;

    .line 3325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3326
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3328
    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->h:Ljava/lang/Object;

    .line 3331
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private y()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->j:Ljava/lang/Object;

    .line 3367
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3368
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3370
    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->j:Ljava/lang/Object;

    .line 3373
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private z()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 3378
    iput-wide v1, p0, Lcom/avast/a/a/a/a/g;->c:J

    .line 3379
    iput-wide v1, p0, Lcom/avast/a/a/a/a/g;->d:J

    .line 3380
    sget-object v0, Lcom/avast/a/a/a/a/e;->a:Lcom/avast/a/a/a/a/e;

    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->e:Lcom/avast/a/a/a/a/e;

    .line 3381
    iput-wide v1, p0, Lcom/avast/a/a/a/a/g;->f:J

    .line 3382
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->g:Ljava/lang/Object;

    .line 3383
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->h:Ljava/lang/Object;

    .line 3384
    iput-wide v1, p0, Lcom/avast/a/a/a/a/g;->i:J

    .line 3385
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/g;->j:Ljava/lang/Object;

    .line 3386
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3212
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/g;->t()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3212
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/g;->s()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3406
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/g;->w()I

    .line 3407
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 3408
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 3410
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 3411
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->d:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 3413
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 3414
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/a/a/a/a/g;->e:Lcom/avast/a/a/a/a/e;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/e;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 3416
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 3417
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->f:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 3419
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3420
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/a/g;->u()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3422
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 3423
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/g;->x()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3425
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 3426
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/avast/a/a/a/a/g;->i:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 3428
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 3429
    invoke-direct {p0}, Lcom/avast/a/a/a/a/g;->y()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3431
    :cond_7
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3235
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 3238
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3245
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

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

.method public e()J
    .locals 2

    .prologue
    .line 3248
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->d:J

    return-wide v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3255
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

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

.method public g()Lcom/avast/a/a/a/a/e;
    .locals 1

    .prologue
    .line 3258
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->e:Lcom/avast/a/a/a/a/e;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 3265
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

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

.method public i()J
    .locals 2

    .prologue
    .line 3268
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->f:J

    return-wide v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 3275
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

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
    .line 3278
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->g:Ljava/lang/Object;

    .line 3279
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3280
    check-cast v0, Ljava/lang/String;

    .line 3288
    :goto_0
    return-object v0

    .line 3282
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3284
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3285
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3286
    iput-object v1, p0, Lcom/avast/a/a/a/a/g;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3288
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 3307
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->h:Ljava/lang/Object;

    .line 3311
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3312
    check-cast v0, Ljava/lang/String;

    .line 3320
    :goto_0
    return-object v0

    .line 3314
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3316
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3317
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3318
    iput-object v1, p0, Lcom/avast/a/a/a/a/g;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3320
    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 3339
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 3342
    iget-wide v0, p0, Lcom/avast/a/a/a/a/g;->i:J

    return-wide v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 3349
    iget v0, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/avast/a/a/a/a/g;->j:Ljava/lang/Object;

    .line 3353
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3354
    check-cast v0, Ljava/lang/String;

    .line 3362
    :goto_0
    return-object v0

    .line 3356
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3358
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3359
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3360
    iput-object v1, p0, Lcom/avast/a/a/a/a/g;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3362
    goto :goto_0
.end method

.method public s()Lcom/avast/a/a/a/a/h;
    .locals 1

    .prologue
    .line 3550
    invoke-static {}, Lcom/avast/a/a/a/a/g;->r()Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/avast/a/a/a/a/h;
    .locals 1

    .prologue
    .line 3554
    invoke-static {p0}, Lcom/avast/a/a/a/a/g;->a(Lcom/avast/a/a/a/a/g;)Lcom/avast/a/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3389
    iget-byte v2, p0, Lcom/avast/a/a/a/a/g;->k:B

    .line 3390
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 3401
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 3390
    goto :goto_0

    .line 3392
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/g;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3393
    iput-byte v1, p0, Lcom/avast/a/a/a/a/g;->k:B

    move v0, v1

    .line 3394
    goto :goto_0

    .line 3396
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/g;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3397
    iput-byte v1, p0, Lcom/avast/a/a/a/a/g;->k:B

    move v0, v1

    .line 3398
    goto :goto_0

    .line 3400
    :cond_3
    iput-byte v0, p0, Lcom/avast/a/a/a/a/g;->k:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3435
    iget v0, p0, Lcom/avast/a/a/a/a/g;->l:I

    .line 3436
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3472
    :goto_0
    return v0

    .line 3438
    :cond_0
    const/4 v0, 0x0

    .line 3439
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 3440
    iget-wide v1, p0, Lcom/avast/a/a/a/a/g;->c:J

    invoke-static {v3, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3443
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 3444
    iget-wide v1, p0, Lcom/avast/a/a/a/a/g;->d:J

    invoke-static {v4, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3447
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    .line 3448
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/a/a/a/a/g;->e:Lcom/avast/a/a/a/a/e;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/e;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3451
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_4

    .line 3452
    iget-wide v1, p0, Lcom/avast/a/a/a/a/g;->f:J

    invoke-static {v5, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3455
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 3456
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/a/g;->u()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3459
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 3460
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/g;->x()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3463
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 3464
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/avast/a/a/a/a/g;->i:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3467
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/a/g;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 3468
    invoke-direct {p0}, Lcom/avast/a/a/a/a/g;->y()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3471
    :cond_8
    iput v0, p0, Lcom/avast/a/a/a/a/g;->l:I

    goto/16 :goto_0
.end method
