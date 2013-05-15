.class public final Lcom/avast/a/a/a/h;
.super Lcom/google/a/l;
.source "AvastToDevice.java"

# interfaces
.implements Lcom/avast/a/a/a/j;


# static fields
.field private static final a:Lcom/avast/a/a/a/h;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/google/a/z;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1224
    new-instance v0, Lcom/avast/a/a/a/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/h;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/h;->a:Lcom/avast/a/a/a/h;

    .line 1225
    sget-object v0, Lcom/avast/a/a/a/h;->a:Lcom/avast/a/a/a/h;

    invoke-direct {v0}, Lcom/avast/a/a/a/h;->M()V

    .line 1226
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/i;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 157
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 342
    iput-byte v0, p0, Lcom/avast/a/a/a/h;->r:B

    .line 405
    iput v0, p0, Lcom/avast/a/a/a/h;->s:I

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/i;Lcom/avast/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/h;-><init>(Lcom/avast/a/a/a/i;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 159
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 342
    iput-byte v0, p0, Lcom/avast/a/a/a/h;->r:B

    .line 405
    iput v0, p0, Lcom/avast/a/a/a/h;->s:I

    .line 159
    return-void
.end method

.method public static J()Lcom/avast/a/a/a/i;
    .locals 1

    .prologue
    .line 554
    invoke-static {}, Lcom/avast/a/a/a/i;->f()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method private M()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iput v1, p0, Lcom/avast/a/a/a/h;->c:I

    .line 327
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    .line 328
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->e:Z

    .line 329
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->f:Z

    .line 330
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->g:Z

    .line 331
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->h:Z

    .line 332
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->i:Z

    .line 333
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->j:Z

    .line 334
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->k:Z

    .line 335
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->l:Z

    .line 336
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->m:Z

    .line 337
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->n:Z

    .line 338
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->o:Z

    .line 339
    iput v1, p0, Lcom/avast/a/a/a/h;->p:I

    .line 340
    iput-boolean v1, p0, Lcom/avast/a/a/a/h;->q:Z

    .line 341
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/avast/a/a/a/h;->c:I

    return p1
.end method

.method public static a()Lcom/avast/a/a/a/h;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/avast/a/a/a/h;->a:Lcom/avast/a/a/a/h;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 512
    invoke-static {}, Lcom/avast/a/a/a/h;->J()Lcom/avast/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/i;->a(Ljava/io/InputStream;)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/i;

    invoke-static {v0}, Lcom/avast/a/a/a/i;->a(Lcom/avast/a/a/a/i;)Lcom/avast/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lcom/avast/a/a/a/h;
    .locals 1
    .parameter

    .prologue
    .line 501
    invoke-static {}, Lcom/avast/a/a/a/h;->J()Lcom/avast/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/i;->a([B)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/i;

    invoke-static {v0}, Lcom/avast/a/a/a/i;->a(Lcom/avast/a/a/a/i;)Lcom/avast/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/h;)Lcom/avast/a/a/a/i;
    .locals 1
    .parameter

    .prologue
    .line 557
    invoke-static {}, Lcom/avast/a/a/a/h;->J()Lcom/avast/a/a/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/i;->a(Lcom/avast/a/a/a/h;)Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/h;Lcom/google/a/z;)Lcom/google/a/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/avast/a/a/a/h;->p:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/h;)Lcom/google/a/z;
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput p1, p0, Lcom/avast/a/a/a/h;->b:I

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->g:Z

    return p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->h:Z

    return p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->i:Z

    return p1
.end method

.method static synthetic f(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->j:Z

    return p1
.end method

.method static synthetic g(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->k:Z

    return p1
.end method

.method static synthetic h(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->l:Z

    return p1
.end method

.method static synthetic i(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->m:Z

    return p1
.end method

.method static synthetic j(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->n:Z

    return p1
.end method

.method static synthetic k(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->o:Z

    return p1
.end method

.method static synthetic l(Lcom/avast/a/a/a/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/avast/a/a/a/h;->q:Z

    return p1
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/avast/a/a/a/h;->L()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/avast/a/a/a/h;->K()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->n:Z

    return v0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->o:Z

    return v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/avast/a/a/a/h;->p:I

    return v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->q:Z

    return v0
.end method

.method public K()Lcom/avast/a/a/a/i;
    .locals 1

    .prologue
    .line 555
    invoke-static {}, Lcom/avast/a/a/a/h;->J()Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public L()Lcom/avast/a/a/a/i;
    .locals 1

    .prologue
    .line 559
    invoke-static {p0}, Lcom/avast/a/a/a/h;->a(Lcom/avast/a/a/a/h;)Lcom/avast/a/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/avast/a/a/a/h;->w()I

    .line 358
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 359
    iget v0, p0, Lcom/avast/a/a/a/h;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(II)V

    .line 361
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    invoke-interface {v1}, Lcom/google/a/z;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    invoke-interface {v1, v0}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 365
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 367
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3

    .line 368
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->f:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(IZ)V

    .line 370
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_4

    .line 371
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->g:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 373
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 374
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 376
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 377
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->i:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 379
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_7

    .line 380
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->j:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(IZ)V

    .line 382
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    .line 383
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 385
    :cond_8
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 386
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 388
    :cond_9
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 389
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 391
    :cond_a
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_b

    .line 392
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->n:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 394
    :cond_b
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_c

    .line 395
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->o:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 397
    :cond_c
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 398
    const/16 v0, 0xe

    iget v1, p0, Lcom/avast/a/a/a/h;->p:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 400
    :cond_d
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e

    .line 401
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 403
    :cond_e
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 175
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/avast/a/a/a/h;->c:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->size()I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public g()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->e:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public i()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->f:Z

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public k()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->g:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public m()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->h:Z

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public o()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->i:Z

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public q()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->j:Z

    return v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 259
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

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

.method public s()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->k:Z

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->l:Z

    return v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 344
    iget-byte v2, p0, Lcom/avast/a/a/a/h;->r:B

    .line 345
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 352
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/h;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 348
    iput-byte v1, p0, Lcom/avast/a/a/a/h;->r:B

    move v0, v1

    .line 349
    goto :goto_0

    .line 351
    :cond_2
    iput-byte v0, p0, Lcom/avast/a/a/a/h;->r:B

    goto :goto_0
.end method

.method public w()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 407
    iget v0, p0, Lcom/avast/a/a/a/h;->s:I

    .line 408
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 477
    :goto_0
    return v0

    .line 411
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_f

    .line 412
    iget v0, p0, Lcom/avast/a/a/a/h;->c:I

    invoke-static {v3, v0}, Lcom/google/a/e;->e(II)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v2, v1

    .line 417
    :goto_2
    iget-object v3, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    invoke-interface {v3}, Lcom/google/a/z;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 418
    iget-object v3, p0, Lcom/avast/a/a/a/h;->d:Lcom/google/a/z;

    invoke-interface {v3, v1}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v3

    add-int/2addr v2, v3

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 421
    :cond_1
    add-int/2addr v0, v2

    .line 422
    invoke-virtual {p0}, Lcom/avast/a/a/a/h;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 424
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 425
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->e:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 428
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 429
    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->f:Z

    invoke-static {v4, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 433
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->g:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 436
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 437
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->h:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 440
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 441
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->i:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 444
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 445
    iget-boolean v1, p0, Lcom/avast/a/a/a/h;->j:Z

    invoke-static {v5, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 448
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 449
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->k:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 452
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 453
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->l:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 456
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 457
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->m:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 461
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->n:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 464
    :cond_b
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 465
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->o:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 468
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 469
    const/16 v1, 0xe

    iget v2, p0, Lcom/avast/a/a/a/h;->p:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 472
    :cond_d
    iget v1, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 473
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/avast/a/a/a/h;->q:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 476
    :cond_e
    iput v0, p0, Lcom/avast/a/a/a/h;->s:I

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_1
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/avast/a/a/a/h;->m:Z

    return v0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcom/avast/a/a/a/h;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
