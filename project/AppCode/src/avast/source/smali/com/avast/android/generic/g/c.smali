.class public final Lcom/avast/android/generic/g/c;
.super Lcom/google/a/l;
.source "CommunityIqProto.java"

# interfaces
.implements Lcom/avast/android/generic/g/k;


# static fields
.field private static final a:Lcom/avast/android/generic/g/c;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:Lcom/avast/android/generic/g/e;

.field private e:Lcom/google/a/c;

.field private f:Lcom/google/a/c;

.field private g:Lcom/google/a/c;

.field private h:Lcom/google/a/c;

.field private i:Lcom/google/a/c;

.field private j:Lcom/google/a/c;

.field private k:Lcom/google/a/c;

.field private l:Lcom/avast/android/generic/g/g;

.field private m:Lcom/avast/android/generic/g/i;

.field private n:Lcom/google/a/c;

.field private o:Lcom/google/a/c;

.field private p:Lcom/google/a/c;

.field private q:B

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1250
    new-instance v0, Lcom/avast/android/generic/g/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/g/c;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/g/c;->a:Lcom/avast/android/generic/g/c;

    .line 1251
    sget-object v0, Lcom/avast/android/generic/g/c;->a:Lcom/avast/android/generic/g/c;

    invoke-direct {v0}, Lcom/avast/android/generic/g/c;->K()V

    .line 1252
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/g/d;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 413
    iput-byte v0, p0, Lcom/avast/android/generic/g/c;->q:B

    .line 469
    iput v0, p0, Lcom/avast/android/generic/g/c;->r:I

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/g/d;Lcom/avast/android/generic/g/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/avast/android/generic/g/c;-><init>(Lcom/avast/android/generic/g/d;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 77
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 413
    iput-byte v0, p0, Lcom/avast/android/generic/g/c;->q:B

    .line 469
    iput v0, p0, Lcom/avast/android/generic/g/c;->r:I

    .line 77
    return-void
.end method

.method public static H()Lcom/avast/android/generic/g/d;
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lcom/avast/android/generic/g/d;->e()Lcom/avast/android/generic/g/d;

    move-result-object v0

    return-object v0
.end method

.method private K()V
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->c:Lcom/google/a/c;

    .line 399
    sget-object v0, Lcom/avast/android/generic/g/e;->a:Lcom/avast/android/generic/g/e;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->d:Lcom/avast/android/generic/g/e;

    .line 400
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->e:Lcom/google/a/c;

    .line 401
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->f:Lcom/google/a/c;

    .line 402
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->g:Lcom/google/a/c;

    .line 403
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->h:Lcom/google/a/c;

    .line 404
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->i:Lcom/google/a/c;

    .line 405
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->j:Lcom/google/a/c;

    .line 406
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->k:Lcom/google/a/c;

    .line 407
    sget-object v0, Lcom/avast/android/generic/g/g;->a:Lcom/avast/android/generic/g/g;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->l:Lcom/avast/android/generic/g/g;

    .line 408
    sget-object v0, Lcom/avast/android/generic/g/i;->a:Lcom/avast/android/generic/g/i;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->m:Lcom/avast/android/generic/g/i;

    .line 409
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->n:Lcom/google/a/c;

    .line 410
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->o:Lcom/google/a/c;

    .line 411
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/g/c;->p:Lcom/google/a/c;

    .line 412
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/g/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lcom/avast/android/generic/g/c;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/g/c;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/avast/android/generic/g/c;->a:Lcom/avast/android/generic/g/c;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/d;
    .locals 1
    .parameter

    .prologue
    .line 612
    invoke-static {}, Lcom/avast/android/generic/g/c;->H()Lcom/avast/android/generic/g/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/g/d;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/g/c;Lcom/avast/android/generic/g/e;)Lcom/avast/android/generic/g/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->d:Lcom/avast/android/generic/g/e;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/g/c;Lcom/avast/android/generic/g/g;)Lcom/avast/android/generic/g/g;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->l:Lcom/avast/android/generic/g/g;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/g/c;Lcom/avast/android/generic/g/i;)Lcom/avast/android/generic/g/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->m:Lcom/avast/android/generic/g/i;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->e:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->f:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->g:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->h:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->i:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->j:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic h(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->k:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic i(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->n:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic j(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->o:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic k(Lcom/avast/android/generic/g/c;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avast/android/generic/g/c;->p:Lcom/google/a/c;

    return-object p1
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/avast/android/generic/g/c;->J()Lcom/avast/android/generic/g/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/avast/android/generic/g/c;->I()Lcom/avast/android/generic/g/d;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->n:Lcom/google/a/c;

    return-object v0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public E()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->o:Lcom/google/a/c;

    return-object v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 391
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public G()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->p:Lcom/google/a/c;

    return-object v0
.end method

.method public I()Lcom/avast/android/generic/g/d;
    .locals 1

    .prologue
    .line 610
    invoke-static {}, Lcom/avast/android/generic/g/c;->H()Lcom/avast/android/generic/g/d;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/avast/android/generic/g/d;
    .locals 1

    .prologue
    .line 614
    invoke-static {p0}, Lcom/avast/android/generic/g/c;->a(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/d;

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

    .line 424
    invoke-virtual {p0}, Lcom/avast/android/generic/g/c;->w()I

    .line 425
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 428
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 429
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->d:Lcom/avast/android/generic/g/e;

    invoke-virtual {v0}, Lcom/avast/android/generic/g/e;->a()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->c(II)V

    .line 431
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 432
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->e:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 434
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 435
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->f:Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 437
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 438
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->g:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 440
    :cond_4
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 441
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->h:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 443
    :cond_5
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 444
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->i:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 446
    :cond_6
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 447
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->j:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 449
    :cond_7
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 450
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->k:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 452
    :cond_8
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 453
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->l:Lcom/avast/android/generic/g/g;

    invoke-virtual {v1}, Lcom/avast/android/generic/g/g;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 455
    :cond_9
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 456
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->m:Lcom/avast/android/generic/g/i;

    invoke-virtual {v1}, Lcom/avast/android/generic/g/i;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 458
    :cond_a
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 459
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->n:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 461
    :cond_b
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 462
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->o:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 464
    :cond_c
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 465
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/avast/android/generic/g/c;->p:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 467
    :cond_d
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 261
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

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
    .line 264
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public e()Lcom/avast/android/generic/g/e;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->d:Lcom/avast/android/generic/g/e;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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
    .line 284
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->e:Lcom/google/a/c;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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
    .line 294
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->f:Lcom/google/a/c;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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
    .line 304
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->g:Lcom/google/a/c;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 311
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public m()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->h:Lcom/google/a/c;

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 321
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public o()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->i:Lcom/google/a/c;

    return-object v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public q()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->j:Lcom/google/a/c;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public s()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->k:Lcom/google/a/c;

    return-object v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 351
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public u()Lcom/avast/android/generic/g/g;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->l:Lcom/avast/android/generic/g/g;

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 415
    iget-byte v1, p0, Lcom/avast/android/generic/g/c;->q:B

    .line 416
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 419
    :goto_0
    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 418
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/g/c;->q:B

    goto :goto_0
.end method

.method public w()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 471
    iget v0, p0, Lcom/avast/android/generic/g/c;->r:I

    .line 472
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 532
    :goto_0
    return v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    .line 475
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 476
    iget-object v1, p0, Lcom/avast/android/generic/g/c;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 480
    iget-object v1, p0, Lcom/avast/android/generic/g/c;->d:Lcom/avast/android/generic/g/e;

    invoke-virtual {v1}, Lcom/avast/android/generic/g/e;->a()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 484
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->e:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_3
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 488
    iget-object v1, p0, Lcom/avast/android/generic/g/c;->f:Lcom/google/a/c;

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    :cond_4
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 492
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->g:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_5
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 496
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->h:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_6
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 500
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->i:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_7
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 504
    iget-object v1, p0, Lcom/avast/android/generic/g/c;->j:Lcom/google/a/c;

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 507
    :cond_8
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 508
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->k:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    :cond_9
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 512
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->l:Lcom/avast/android/generic/g/g;

    invoke-virtual {v2}, Lcom/avast/android/generic/g/g;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 515
    :cond_a
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 516
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->m:Lcom/avast/android/generic/g/i;

    invoke-virtual {v2}, Lcom/avast/android/generic/g/i;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_b
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 520
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->n:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 523
    :cond_c
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 524
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->o:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 527
    :cond_d
    iget v1, p0, Lcom/avast/android/generic/g/c;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 528
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/avast/android/generic/g/c;->p:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 531
    :cond_e
    iput v0, p0, Lcom/avast/android/generic/g/c;->r:I

    goto/16 :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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

.method public y()Lcom/avast/android/generic/g/i;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/avast/android/generic/g/c;->m:Lcom/avast/android/generic/g/i;

    return-object v0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/avast/android/generic/g/c;->b:I

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
