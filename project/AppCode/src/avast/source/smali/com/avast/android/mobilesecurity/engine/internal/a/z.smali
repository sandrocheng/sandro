.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/z;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ab;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/z;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:Lcom/google/a/c;

.field private e:Lcom/google/a/c;

.field private f:Lcom/google/a/c;

.field private g:Lcom/google/a/c;

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4856
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    .line 4857
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->q()V

    .line 4858
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4312
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 4394
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->i:B

    .line 4426
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->j:I

    .line 4313
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4314
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 4394
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->i:B

    .line 4426
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->j:I

    .line 4314
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->h:I

    return p1
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 4537
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/z;
    .locals 1

    .prologue
    .line 4318
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/z;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/z;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->f:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/engine/internal/a/z;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4307
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->g:Lcom/google/a/c;

    return-object p1
.end method

.method public static n()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1

    .prologue
    .line 4534
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 4387
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c:Lcom/google/a/c;

    .line 4388
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d:Lcom/google/a/c;

    .line 4389
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e:Lcom/google/a/c;

    .line 4390
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->f:Lcom/google/a/c;

    .line 4391
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->g:Lcom/google/a/c;

    .line 4392
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->h:I

    .line 4393
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4307
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->p()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4307
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->o()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

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

    .line 4405
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->w()I

    .line 4406
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4407
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4409
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4410
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d:Lcom/google/a/c;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4412
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 4413
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4415
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4416
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->f:Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4418
    :cond_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 4419
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->g:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4421
    :cond_4
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 4422
    const/4 v0, 0x6

    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->d(II)V

    .line 4424
    :cond_5
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4330
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 4340
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

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

.method public e()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4343
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d:Lcom/google/a/c;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 4350
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

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

.method public g()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e:Lcom/google/a/c;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 4360
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

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

.method public i()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4363
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->f:Lcom/google/a/c;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 4370
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

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

.method public k()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->g:Lcom/google/a/c;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 4380
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

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

.method public m()I
    .locals 1

    .prologue
    .line 4383
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->h:I

    return v0
.end method

.method public o()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1

    .prologue
    .line 4535
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    .locals 1

    .prologue
    .line 4539
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/z;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4396
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->i:B

    .line 4397
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 4400
    :goto_0
    return v0

    .line 4397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4399
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->i:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 4428
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->j:I

    .line 4429
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4457
    :goto_0
    return v0

    .line 4431
    :cond_0
    const/4 v0, 0x0

    .line 4432
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 4433
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4436
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 4437
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->d:Lcom/google/a/c;

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4440
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 4441
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->e:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4444
    :cond_3
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 4445
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->f:Lcom/google/a/c;

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4448
    :cond_4
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 4449
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->g:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4452
    :cond_5
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 4453
    const/4 v1, 0x6

    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->h:I

    invoke-static {v1, v2}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4456
    :cond_6
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->j:I

    goto :goto_0
.end method
