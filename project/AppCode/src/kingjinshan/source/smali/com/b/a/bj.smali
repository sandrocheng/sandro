.class public final Lcom/b/a/bj;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bl;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/b/a/bj;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Lcom/b/a/bm;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9048
    new-instance v0, Lcom/b/a/bj;

    invoke-direct {v0}, Lcom/b/a/bj;-><init>()V

    .line 9049
    sput-object v0, Lcom/b/a/bj;->e:Lcom/b/a/bj;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    .line 9050
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8364
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 8501
    iput-byte v0, p0, Lcom/b/a/bj;->l:B

    .line 8534
    iput v0, p0, Lcom/b/a/bj;->m:I

    .line 8364
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bk;)V
    .locals 1
    .parameter

    .prologue
    .line 8357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bj;-><init>(Lcom/b/a/bk;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bk;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 8362
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 8501
    iput-byte v0, p0, Lcom/b/a/bj;->l:B

    .line 8534
    iput v0, p0, Lcom/b/a/bj;->m:I

    .line 8363
    return-void
.end method

.method static synthetic a(Lcom/b/a/bj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8357
    iput p1, p0, Lcom/b/a/bj;->f:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 8571
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bk;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8577
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bk;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 8625
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bk;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8631
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bk;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 8593
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bk;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8599
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bk;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bj;
    .locals 1
    .parameter

    .prologue
    .line 8582
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bk;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8588
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bk;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bk;

    invoke-static {p0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/bj;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8638
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bk;->a(Lcom/b/a/bj;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bj;Lcom/b/a/bm;)Lcom/b/a/bm;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8357
    iput-object p1, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8357
    iput-object p1, p0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bj;
    .locals 2
    .parameter

    .prologue
    .line 8604
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    .line 8605
    invoke-virtual {v0, p0}, Lcom/b/a/bk;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8606
    invoke-static {v0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    .line 8608
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8615
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    .line 8616
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bk;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8617
    invoke-static {v0}, Lcom/b/a/bk;->a(Lcom/b/a/bk;)Lcom/b/a/bj;

    move-result-object v0

    .line 8619
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bk;
    .locals 1
    .parameter

    .prologue
    .line 8645
    new-instance v0, Lcom/b/a/bk;

    invoke-direct {v0, p0}, Lcom/b/a/bk;-><init>(Lcom/b/a/dp;)V

    .line 8646
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8357
    iput-object p1, p0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/b/a/bj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8357
    iput-object p1, p0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    return-object p1
.end method

.method public static e()Lcom/b/a/bj;
    .locals 1

    .prologue
    .line 8368
    sget-object v0, Lcom/b/a/bj;->e:Lcom/b/a/bj;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 8377
    invoke-static {}, Lcom/b/a/p;->r()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static q()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8635
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private static r()Lcom/b/a/bj;
    .locals 1

    .prologue
    .line 8372
    sget-object v0, Lcom/b/a/bj;->e:Lcom/b/a/bj;

    return-object v0
.end method

.method private s()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 8407
    iget-object v0, p0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    .line 8408
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8409
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 8411
    iput-object v0, p0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    .line 8414
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 8439
    iget-object v0, p0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    .line 8440
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8441
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 8443
    iput-object v0, p0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    .line 8446
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 8471
    iget-object v0, p0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    .line 8472
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8473
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 8475
    iput-object v0, p0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    .line 8478
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()V
    .locals 1

    .prologue
    .line 8496
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    .line 8497
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    .line 8498
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    .line 8499
    invoke-static {}, Lcom/b/a/bm;->e()Lcom/b/a/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    .line 8500
    return-void
.end method

.method private static w()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8636
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/b/a/bk;
    .locals 1

    .prologue
    .line 8640
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bk;->a(Lcom/b/a/bj;)Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8565
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8357
    invoke-direct {p0}, Lcom/b/a/bj;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 8357
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8357
    invoke-direct {p0}, Lcom/b/a/bj;->x()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 8357
    invoke-static {}, Lcom/b/a/bk;->s()Lcom/b/a/bk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 8357
    sget-object v0, Lcom/b/a/bj;->e:Lcom/b/a/bj;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 8357
    sget-object v0, Lcom/b/a/bj;->e:Lcom/b/a/bj;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 8357
    new-instance v0, Lcom/b/a/bk;

    invoke-direct {v0, p1}, Lcom/b/a/bk;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8518
    invoke-virtual {p0}, Lcom/b/a/bj;->b()I

    .line 8519
    iget v0, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8520
    invoke-direct {p0}, Lcom/b/a/bj;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 8522
    :cond_0
    iget v0, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8523
    invoke-direct {p0}, Lcom/b/a/bj;->t()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 8525
    :cond_1
    iget v0, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 8526
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/b/a/bj;->u()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 8528
    :cond_2
    iget v0, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8529
    iget-object v0, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 8531
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 8532
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 8503
    iget-byte v0, p0, Lcom/b/a/bj;->l:B

    .line 8504
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 8513
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 8504
    goto :goto_0

    .line 8506
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/bj;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8507
    iget-object v0, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    invoke-virtual {v0}, Lcom/b/a/bm;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8508
    iput-byte v3, p0, Lcom/b/a/bj;->l:B

    move v0, v3

    .line 8509
    goto :goto_0

    .line 8512
    :cond_2
    iput-byte v2, p0, Lcom/b/a/bj;->l:B

    move v0, v2

    .line 8513
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 8536
    iget v0, p0, Lcom/b/a/bj;->m:I

    .line 8537
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8558
    :goto_0
    return v0

    .line 8539
    :cond_0
    const/4 v0, 0x0

    .line 8540
    iget v1, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 8541
    invoke-direct {p0}, Lcom/b/a/bj;->s()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 8544
    :cond_1
    iget v1, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 8545
    invoke-direct {p0}, Lcom/b/a/bj;->t()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8548
    :cond_2
    iget v1, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 8549
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/b/a/bj;->u()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8552
    :cond_3
    iget v1, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 8553
    iget-object v1, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    invoke-static {v4, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8556
    :cond_4
    invoke-virtual {p0}, Lcom/b/a/bj;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 8557
    iput v0, p0, Lcom/b/a/bj;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 8382
    invoke-static {}, Lcom/b/a/p;->s()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8393
    iget-object v1, p0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    .line 8394
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8395
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8403
    :goto_0
    return-object v1

    .line 8397
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 8399
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 8400
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8401
    iput-object v2, p0, Lcom/b/a/bj;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8403
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 8422
    iget v0, p0, Lcom/b/a/bj;->f:I

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

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8425
    iget-object v1, p0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    .line 8426
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8427
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8435
    :goto_0
    return-object v1

    .line 8429
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 8431
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 8432
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8433
    iput-object v2, p0, Lcom/b/a/bj;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8435
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 8454
    iget v0, p0, Lcom/b/a/bj;->f:I

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

.method public final m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8457
    iget-object v1, p0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    .line 8458
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8459
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 8467
    :goto_0
    return-object v1

    .line 8461
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 8463
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 8464
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8465
    iput-object v2, p0, Lcom/b/a/bj;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8467
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 8486
    iget v0, p0, Lcom/b/a/bj;->f:I

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

.method public final o()Lcom/b/a/bm;
    .locals 1

    .prologue
    .line 8489
    iget-object v0, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    return-object v0
.end method

.method public final p()Lcom/b/a/bo;
    .locals 1

    .prologue
    .line 8492
    iget-object v0, p0, Lcom/b/a/bj;->k:Lcom/b/a/bm;

    return-object v0
.end method

.method public final z_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8390
    iget v0, p0, Lcom/b/a/bj;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
