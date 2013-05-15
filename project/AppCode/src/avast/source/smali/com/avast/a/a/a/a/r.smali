.class public final Lcom/avast/a/a/a/a/r;
.super Lcom/google/a/l;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/t;


# static fields
.field private static final a:Lcom/avast/a/a/a/a/r;


# instance fields
.field private A:I

.field private B:B

.field private C:I

.field private b:I

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:J

.field private h:J

.field private i:Lcom/avast/a/a/a/a/u;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/Object;

.field private n:J

.field private o:I

.field private p:Lcom/google/a/c;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:I

.field private t:I

.field private u:Ljava/lang/Object;

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Object;

.field private x:Ljava/lang/Object;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7011
    new-instance v0, Lcom/avast/a/a/a/a/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/r;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/a/r;->a:Lcom/avast/a/a/a/a/r;

    .line 7012
    sget-object v0, Lcom/avast/a/a/a/a/r;->a:Lcom/avast/a/a/a/a/r;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/r;->at()V

    .line 7013
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/a/s;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4976
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 5553
    iput-byte v0, p0, Lcom/avast/a/a/a/a/r;->B:B

    .line 5646
    iput v0, p0, Lcom/avast/a/a/a/a/r;->C:I

    .line 4977
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/a/s;Lcom/avast/a/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/a/r;-><init>(Lcom/avast/a/a/a/a/s;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4978
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 5553
    iput-byte v0, p0, Lcom/avast/a/a/a/a/r;->B:B

    .line 5646
    iput v0, p0, Lcom/avast/a/a/a/a/r;->C:I

    .line 4978
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput p1, p0, Lcom/avast/a/a/a/a/r;->o:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/r;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-wide p1, p0, Lcom/avast/a/a/a/a/r;->c:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/a/a/a/r;
    .locals 1

    .prologue
    .line 4982
    sget-object v0, Lcom/avast/a/a/a/a/r;->a:Lcom/avast/a/a/a/a/r;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/s;
    .locals 1
    .parameter

    .prologue
    .line 5833
    invoke-static {}, Lcom/avast/a/a/a/a/r;->ad()Lcom/avast/a/a/a/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/a/s;->a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/r;Lcom/avast/a/a/a/a/u;)Lcom/avast/a/a/a/a/u;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->i:Lcom/avast/a/a/a/a/u;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/r;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->p:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static ad()Lcom/avast/a/a/a/a/s;
    .locals 1

    .prologue
    .line 5830
    invoke-static {}, Lcom/avast/a/a/a/a/s;->f()Lcom/avast/a/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method private ag()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5021
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->d:Ljava/lang/Object;

    .line 5022
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5023
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5025
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->d:Ljava/lang/Object;

    .line 5028
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ah()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5053
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->e:Ljava/lang/Object;

    .line 5054
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5055
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5057
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->e:Ljava/lang/Object;

    .line 5060
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ai()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5085
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->f:Ljava/lang/Object;

    .line 5086
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5087
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5089
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->f:Ljava/lang/Object;

    .line 5092
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private aj()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5147
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->j:Ljava/lang/Object;

    .line 5148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5149
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5151
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->j:Ljava/lang/Object;

    .line 5154
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ak()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5179
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->k:Ljava/lang/Object;

    .line 5180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5181
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5183
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->k:Ljava/lang/Object;

    .line 5186
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private al()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5211
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->l:Ljava/lang/Object;

    .line 5212
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5213
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5215
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->l:Ljava/lang/Object;

    .line 5218
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private am()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5243
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->m:Ljava/lang/Object;

    .line 5244
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5245
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5247
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->m:Ljava/lang/Object;

    .line 5250
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private an()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5305
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->q:Ljava/lang/Object;

    .line 5306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5307
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5309
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->q:Ljava/lang/Object;

    .line 5312
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ao()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5337
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->r:Ljava/lang/Object;

    .line 5338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5339
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5341
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->r:Ljava/lang/Object;

    .line 5344
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ap()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5389
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->u:Ljava/lang/Object;

    .line 5390
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5391
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5393
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->u:Ljava/lang/Object;

    .line 5396
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private aq()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5421
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->v:Ljava/lang/Object;

    .line 5422
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5423
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5425
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->v:Ljava/lang/Object;

    .line 5428
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ar()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5453
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->w:Ljava/lang/Object;

    .line 5454
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5455
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5457
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->w:Ljava/lang/Object;

    .line 5460
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private as()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5485
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->x:Ljava/lang/Object;

    .line 5486
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5487
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5489
    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->x:Ljava/lang/Object;

    .line 5492
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private at()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 5527
    iput-wide v1, p0, Lcom/avast/a/a/a/a/r;->c:J

    .line 5528
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->d:Ljava/lang/Object;

    .line 5529
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->e:Ljava/lang/Object;

    .line 5530
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->f:Ljava/lang/Object;

    .line 5531
    iput-wide v1, p0, Lcom/avast/a/a/a/a/r;->g:J

    .line 5532
    iput-wide v1, p0, Lcom/avast/a/a/a/a/r;->h:J

    .line 5533
    sget-object v0, Lcom/avast/a/a/a/a/u;->a:Lcom/avast/a/a/a/a/u;

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->i:Lcom/avast/a/a/a/a/u;

    .line 5534
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->j:Ljava/lang/Object;

    .line 5535
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->k:Ljava/lang/Object;

    .line 5536
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->l:Ljava/lang/Object;

    .line 5537
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->m:Ljava/lang/Object;

    .line 5538
    iput-wide v1, p0, Lcom/avast/a/a/a/a/r;->n:J

    .line 5539
    iput v3, p0, Lcom/avast/a/a/a/a/r;->o:I

    .line 5540
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->p:Lcom/google/a/c;

    .line 5541
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->q:Ljava/lang/Object;

    .line 5542
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->r:Ljava/lang/Object;

    .line 5543
    iput v3, p0, Lcom/avast/a/a/a/a/r;->s:I

    .line 5544
    iput v3, p0, Lcom/avast/a/a/a/a/r;->t:I

    .line 5545
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->u:Ljava/lang/Object;

    .line 5546
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->v:Ljava/lang/Object;

    .line 5547
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->w:Ljava/lang/Object;

    .line 5548
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/r;->x:Ljava/lang/Object;

    .line 5549
    iput-wide v1, p0, Lcom/avast/a/a/a/a/r;->y:J

    .line 5550
    iput-wide v1, p0, Lcom/avast/a/a/a/a/r;->z:J

    .line 5551
    iput v3, p0, Lcom/avast/a/a/a/a/r;->A:I

    .line 5552
    return-void
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput p1, p0, Lcom/avast/a/a/a/a/r;->s:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/r;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-wide p1, p0, Lcom/avast/a/a/a/a/r;->g:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput p1, p0, Lcom/avast/a/a/a/a/r;->t:I

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/r;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-wide p1, p0, Lcom/avast/a/a/a/a/r;->h:J

    return-wide p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput p1, p0, Lcom/avast/a/a/a/a/r;->A:I

    return p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/r;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-wide p1, p0, Lcom/avast/a/a/a/a/r;->n:J

    return-wide p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput p1, p0, Lcom/avast/a/a/a/a/r;->b:I

    return p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/a/r;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-wide p1, p0, Lcom/avast/a/a/a/a/r;->y:J

    return-wide p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/a/a/a/a/r;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-wide p1, p0, Lcom/avast/a/a/a/a/r;->z:J

    return-wide p1
.end method

.method static synthetic f(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic j(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->u:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->v:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic l(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->w:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic m(Lcom/avast/a/a/a/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4971
    iput-object p1, p0, Lcom/avast/a/a/a/a/r;->x:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4971
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/r;->af()Lcom/avast/a/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4971
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/r;->ae()Lcom/avast/a/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public C()J
    .locals 2

    .prologue
    .line 5261
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->n:J

    return-wide v0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 5268
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public E()I
    .locals 1

    .prologue
    .line 5271
    iget v0, p0, Lcom/avast/a/a/a/a/r;->o:I

    return v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 5278
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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
    .line 5281
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->p:Lcom/google/a/c;

    return-object v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 5288
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5291
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->q:Ljava/lang/Object;

    .line 5292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5293
    check-cast v0, Ljava/lang/String;

    .line 5301
    :goto_0
    return-object v0

    .line 5295
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5297
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5298
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5299
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->q:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5301
    goto :goto_0
.end method

.method public J()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5320
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5323
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->r:Ljava/lang/Object;

    .line 5324
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5325
    check-cast v0, Ljava/lang/String;

    .line 5333
    :goto_0
    return-object v0

    .line 5327
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5329
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5330
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5331
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->r:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5333
    goto :goto_0
.end method

.method public L()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 5352
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()I
    .locals 1

    .prologue
    .line 5355
    iget v0, p0, Lcom/avast/a/a/a/a/r;->s:I

    return v0
.end method

.method public N()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 5362
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()I
    .locals 1

    .prologue
    .line 5365
    iget v0, p0, Lcom/avast/a/a/a/a/r;->t:I

    return v0
.end method

.method public P()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 5372
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5375
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->u:Ljava/lang/Object;

    .line 5376
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5377
    check-cast v0, Ljava/lang/String;

    .line 5385
    :goto_0
    return-object v0

    .line 5379
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5381
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5382
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5383
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->u:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5385
    goto :goto_0
.end method

.method public R()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 5404
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5407
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->v:Ljava/lang/Object;

    .line 5408
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5409
    check-cast v0, Ljava/lang/String;

    .line 5417
    :goto_0
    return-object v0

    .line 5411
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5413
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5414
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5415
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->v:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5417
    goto :goto_0
.end method

.method public T()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 5436
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5439
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->w:Ljava/lang/Object;

    .line 5440
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5441
    check-cast v0, Ljava/lang/String;

    .line 5449
    :goto_0
    return-object v0

    .line 5443
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5445
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5446
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5447
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->w:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5449
    goto :goto_0
.end method

.method public V()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 5468
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5471
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->x:Ljava/lang/Object;

    .line 5472
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5473
    check-cast v0, Ljava/lang/String;

    .line 5481
    :goto_0
    return-object v0

    .line 5475
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5477
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5478
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5479
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->x:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5481
    goto :goto_0
.end method

.method public X()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 5500
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()J
    .locals 2

    .prologue
    .line 5503
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->y:J

    return-wide v0
.end method

.method public Z()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 5510
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5568
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/r;->w()I

    .line 5569
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 5570
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->c:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 5572
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 5573
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ag()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5575
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 5576
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ah()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5578
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 5579
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ai()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5581
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v6, :cond_4

    .line 5582
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/avast/a/a/a/a/r;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 5584
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 5585
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/avast/a/a/a/a/r;->h:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 5587
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5588
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/a/a/a/a/r;->i:Lcom/avast/a/a/a/a/u;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/u;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 5590
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 5591
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->aj()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5593
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 5594
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ak()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5596
    :cond_8
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 5597
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->al()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5599
    :cond_9
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 5600
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->am()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5602
    :cond_a
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 5603
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/avast/a/a/a/a/r;->n:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 5605
    :cond_b
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 5606
    const/16 v0, 0xd

    iget v1, p0, Lcom/avast/a/a/a/a/r;->o:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5608
    :cond_c
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 5609
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/avast/a/a/a/a/r;->p:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5611
    :cond_d
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 5612
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->an()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5614
    :cond_e
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 5615
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ao()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5617
    :cond_f
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 5618
    const/16 v0, 0x11

    iget v1, p0, Lcom/avast/a/a/a/a/r;->s:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5620
    :cond_10
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 5621
    const/16 v0, 0x12

    iget v1, p0, Lcom/avast/a/a/a/a/r;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5623
    :cond_11
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 5624
    const/16 v0, 0x13

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ap()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5626
    :cond_12
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 5627
    const/16 v0, 0x14

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->aq()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5629
    :cond_13
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_14

    .line 5630
    const/16 v0, 0x15

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ar()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5632
    :cond_14
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_15

    .line 5633
    const/16 v0, 0x16

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->as()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5635
    :cond_15
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_16

    .line 5636
    const/16 v0, 0x17

    iget-wide v1, p0, Lcom/avast/a/a/a/a/r;->y:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 5638
    :cond_16
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_17

    .line 5639
    const/16 v0, 0x18

    iget-wide v1, p0, Lcom/avast/a/a/a/a/r;->z:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 5641
    :cond_17
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_18

    .line 5642
    const/16 v0, 0x19

    iget v1, p0, Lcom/avast/a/a/a/a/r;->A:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5644
    :cond_18
    return-void
.end method

.method public aa()J
    .locals 2

    .prologue
    .line 5513
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->z:J

    return-wide v0
.end method

.method public ab()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 5520
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ac()I
    .locals 1

    .prologue
    .line 5523
    iget v0, p0, Lcom/avast/a/a/a/a/r;->A:I

    return v0
.end method

.method public ae()Lcom/avast/a/a/a/a/s;
    .locals 1

    .prologue
    .line 5831
    invoke-static {}, Lcom/avast/a/a/a/a/r;->ad()Lcom/avast/a/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public af()Lcom/avast/a/a/a/a/s;
    .locals 1

    .prologue
    .line 5835
    invoke-static {p0}, Lcom/avast/a/a/a/a/r;->a(Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4994
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

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
    .line 4997
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 5004
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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
    .line 5007
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->d:Ljava/lang/Object;

    .line 5008
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5009
    check-cast v0, Ljava/lang/String;

    .line 5017
    :goto_0
    return-object v0

    .line 5011
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5013
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5014
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5015
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5017
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 5036
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->e:Ljava/lang/Object;

    .line 5040
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5041
    check-cast v0, Ljava/lang/String;

    .line 5049
    :goto_0
    return-object v0

    .line 5043
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5045
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5046
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5047
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5049
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 5068
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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
    .line 5071
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->f:Ljava/lang/Object;

    .line 5072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5073
    check-cast v0, Ljava/lang/String;

    .line 5081
    :goto_0
    return-object v0

    .line 5075
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5077
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5078
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5079
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5081
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 5100
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public k()J
    .locals 2

    .prologue
    .line 5103
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->g:J

    return-wide v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 5110
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public m()J
    .locals 2

    .prologue
    .line 5113
    iget-wide v0, p0, Lcom/avast/a/a/a/a/r;->h:J

    return-wide v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 5120
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public o()Lcom/avast/a/a/a/a/u;
    .locals 1

    .prologue
    .line 5123
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->i:Lcom/avast/a/a/a/a/u;

    return-object v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 5130
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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
    .line 5133
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->j:Ljava/lang/Object;

    .line 5134
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5135
    check-cast v0, Ljava/lang/String;

    .line 5143
    :goto_0
    return-object v0

    .line 5137
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5139
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5140
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5141
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5143
    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 5162
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5165
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->k:Ljava/lang/Object;

    .line 5166
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5167
    check-cast v0, Ljava/lang/String;

    .line 5175
    :goto_0
    return-object v0

    .line 5169
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5171
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5172
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5173
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5175
    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 5194
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5197
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->l:Ljava/lang/Object;

    .line 5198
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5199
    check-cast v0, Ljava/lang/String;

    .line 5207
    :goto_0
    return-object v0

    .line 5201
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5203
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5204
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5205
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5207
    goto :goto_0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5555
    iget-byte v2, p0, Lcom/avast/a/a/a/a/r;->B:B

    .line 5556
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 5563
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 5556
    goto :goto_0

    .line 5558
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/r;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5559
    iput-byte v1, p0, Lcom/avast/a/a/a/a/r;->B:B

    move v0, v1

    .line 5560
    goto :goto_0

    .line 5562
    :cond_2
    iput-byte v0, p0, Lcom/avast/a/a/a/a/r;->B:B

    goto :goto_0
.end method

.method public w()I
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5648
    iget v0, p0, Lcom/avast/a/a/a/a/r;->C:I

    .line 5649
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5753
    :goto_0
    return v0

    .line 5651
    :cond_0
    const/4 v0, 0x0

    .line 5652
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_1

    .line 5653
    iget-wide v1, p0, Lcom/avast/a/a/a/a/r;->c:J

    invoke-static {v3, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5656
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    .line 5657
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ag()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5660
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    .line 5661
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ah()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5664
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_4

    .line 5665
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ai()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5668
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v7, :cond_5

    .line 5669
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/avast/a/a/a/a/r;->g:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5672
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 5673
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/avast/a/a/a/a/r;->h:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5676
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 5677
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/a/a/a/a/r;->i:Lcom/avast/a/a/a/a/u;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/u;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5680
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 5681
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->aj()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5684
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 5685
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ak()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5688
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 5689
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->al()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5692
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 5693
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->am()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5696
    :cond_b
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 5697
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/avast/a/a/a/a/r;->n:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5700
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 5701
    const/16 v1, 0xd

    iget v2, p0, Lcom/avast/a/a/a/a/r;->o:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5704
    :cond_d
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 5705
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/avast/a/a/a/a/r;->p:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5708
    :cond_e
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 5709
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->an()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5712
    :cond_f
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 5713
    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ao()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5716
    :cond_10
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 5717
    const/16 v1, 0x11

    iget v2, p0, Lcom/avast/a/a/a/a/r;->s:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5720
    :cond_11
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 5721
    const/16 v1, 0x12

    iget v2, p0, Lcom/avast/a/a/a/a/r;->t:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5724
    :cond_12
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 5725
    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ap()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5728
    :cond_13
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 5729
    const/16 v1, 0x14

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->aq()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5732
    :cond_14
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_15

    .line 5733
    const/16 v1, 0x15

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->ar()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5736
    :cond_15
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_16

    .line 5737
    const/16 v1, 0x16

    invoke-direct {p0}, Lcom/avast/a/a/a/a/r;->as()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5740
    :cond_16
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_17

    .line 5741
    const/16 v1, 0x17

    iget-wide v2, p0, Lcom/avast/a/a/a/a/r;->y:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5744
    :cond_17
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_18

    .line 5745
    const/16 v1, 0x18

    iget-wide v2, p0, Lcom/avast/a/a/a/a/r;->z:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5748
    :cond_18
    iget v1, p0, Lcom/avast/a/a/a/a/r;->b:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_19

    .line 5749
    const/16 v1, 0x19

    iget v2, p0, Lcom/avast/a/a/a/a/r;->A:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5752
    :cond_19
    iput v0, p0, Lcom/avast/a/a/a/a/r;->C:I

    goto/16 :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 5226
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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

.method public y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5229
    iget-object v0, p0, Lcom/avast/a/a/a/a/r;->m:Ljava/lang/Object;

    .line 5230
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5231
    check-cast v0, Ljava/lang/String;

    .line 5239
    :goto_0
    return-object v0

    .line 5233
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5235
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5236
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5237
    iput-object v1, p0, Lcom/avast/a/a/a/a/r;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5239
    goto :goto_0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 5258
    iget v0, p0, Lcom/avast/a/a/a/a/r;->b:I

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
