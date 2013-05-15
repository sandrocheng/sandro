.class public final Lcom/avast/a/a/a/am;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/as;


# static fields
.field private static final a:Lcom/avast/a/a/a/am;


# instance fields
.field private b:I

.field private c:Lcom/avast/a/a/a/aq;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lcom/avast/a/a/a/ao;

.field private g:I

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12028
    new-instance v0, Lcom/avast/a/a/a/am;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/am;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/am;->a:Lcom/avast/a/a/a/am;

    .line 12029
    sget-object v0, Lcom/avast/a/a/a/am;->a:Lcom/avast/a/a/a/am;

    invoke-direct {v0}, Lcom/avast/a/a/a/am;->F()V

    .line 12030
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/an;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11031
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 11350
    iput-byte v0, p0, Lcom/avast/a/a/a/am;->l:B

    .line 11399
    iput v0, p0, Lcom/avast/a/a/a/am;->m:I

    .line 11032
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/an;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/am;-><init>(Lcom/avast/a/a/a/an;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 11033
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 11350
    iput-byte v0, p0, Lcom/avast/a/a/a/am;->l:B

    .line 11399
    iput v0, p0, Lcom/avast/a/a/a/am;->m:I

    .line 11033
    return-void
.end method

.method private C()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 11264
    iget-object v0, p0, Lcom/avast/a/a/a/am;->i:Ljava/lang/Object;

    .line 11265
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11266
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 11268
    iput-object v0, p0, Lcom/avast/a/a/a/am;->i:Ljava/lang/Object;

    .line 11271
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private D()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 11296
    iget-object v0, p0, Lcom/avast/a/a/a/am;->j:Ljava/lang/Object;

    .line 11297
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11298
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 11300
    iput-object v0, p0, Lcom/avast/a/a/a/am;->j:Ljava/lang/Object;

    .line 11303
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private E()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 11328
    iget-object v0, p0, Lcom/avast/a/a/a/am;->k:Ljava/lang/Object;

    .line 11329
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11330
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 11332
    iput-object v0, p0, Lcom/avast/a/a/a/am;->k:Ljava/lang/Object;

    .line 11335
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private F()V
    .locals 2

    .prologue
    .line 11340
    sget-object v0, Lcom/avast/a/a/a/aq;->a:Lcom/avast/a/a/a/aq;

    iput-object v0, p0, Lcom/avast/a/a/a/am;->c:Lcom/avast/a/a/a/aq;

    .line 11341
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/a/a/a/am;->d:J

    .line 11342
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/am;->e:Ljava/lang/Object;

    .line 11343
    sget-object v0, Lcom/avast/a/a/a/ao;->a:Lcom/avast/a/a/a/ao;

    iput-object v0, p0, Lcom/avast/a/a/a/am;->f:Lcom/avast/a/a/a/ao;

    .line 11344
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/a/a/a/am;->g:I

    .line 11345
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/am;->h:Ljava/lang/Object;

    .line 11346
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/am;->i:Ljava/lang/Object;

    .line 11347
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/am;->j:Ljava/lang/Object;

    .line 11348
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/am;->k:Ljava/lang/Object;

    .line 11349
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput p1, p0, Lcom/avast/a/a/a/am;->g:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/am;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-wide p1, p0, Lcom/avast/a/a/a/am;->d:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/a/a/am;
    .locals 1

    .prologue
    .line 11037
    sget-object v0, Lcom/avast/a/a/a/am;->a:Lcom/avast/a/a/a/am;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/an;
    .locals 1
    .parameter

    .prologue
    .line 11522
    invoke-static {}, Lcom/avast/a/a/a/am;->t()Lcom/avast/a/a/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/an;->a(Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/am;Lcom/avast/a/a/a/ao;)Lcom/avast/a/a/a/ao;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->f:Lcom/avast/a/a/a/ao;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/am;Lcom/avast/a/a/a/aq;)Lcom/avast/a/a/a/aq;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->c:Lcom/avast/a/a/a/aq;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput p1, p0, Lcom/avast/a/a/a/am;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/am;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11026
    iput-object p1, p0, Lcom/avast/a/a/a/am;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static t()Lcom/avast/a/a/a/an;
    .locals 1

    .prologue
    .line 11519
    invoke-static {}, Lcom/avast/a/a/a/an;->k()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 11180
    iget-object v0, p0, Lcom/avast/a/a/a/am;->e:Ljava/lang/Object;

    .line 11181
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11182
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 11184
    iput-object v0, p0, Lcom/avast/a/a/a/am;->e:Ljava/lang/Object;

    .line 11187
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private z()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 11232
    iget-object v0, p0, Lcom/avast/a/a/a/am;->h:Ljava/lang/Object;

    .line 11233
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11234
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 11236
    iput-object v0, p0, Lcom/avast/a/a/a/am;->h:Ljava/lang/Object;

    .line 11239
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 11026
    invoke-virtual {p0}, Lcom/avast/a/a/a/am;->x()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 11026
    invoke-virtual {p0}, Lcom/avast/a/a/a/am;->u()Lcom/avast/a/a/a/an;

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

    .line 11369
    invoke-virtual {p0}, Lcom/avast/a/a/a/am;->w()I

    .line 11370
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 11371
    iget-object v0, p0, Lcom/avast/a/a/a/am;->c:Lcom/avast/a/a/a/aq;

    invoke-virtual {v0}, Lcom/avast/a/a/a/aq;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 11373
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 11374
    iget-wide v0, p0, Lcom/avast/a/a/a/am;->d:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/a/e;->b(IJ)V

    .line 11376
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 11377
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->y()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 11379
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 11380
    iget-object v0, p0, Lcom/avast/a/a/a/am;->f:Lcom/avast/a/a/a/ao;

    invoke-virtual {v0}, Lcom/avast/a/a/a/ao;->a()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->c(II)V

    .line 11382
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 11383
    const/4 v0, 0x5

    iget v1, p0, Lcom/avast/a/a/a/am;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 11385
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 11386
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->z()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 11388
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 11389
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->C()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 11391
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 11392
    invoke-direct {p0}, Lcom/avast/a/a/a/am;->D()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 11394
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 11395
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->E()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 11397
    :cond_8
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11143
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/a/a/a/aq;
    .locals 1

    .prologue
    .line 11146
    iget-object v0, p0, Lcom/avast/a/a/a/am;->c:Lcom/avast/a/a/a/aq;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 11153
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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
    .line 11156
    iget-wide v0, p0, Lcom/avast/a/a/a/am;->d:J

    return-wide v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 11163
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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
    .line 11166
    iget-object v0, p0, Lcom/avast/a/a/a/am;->e:Ljava/lang/Object;

    .line 11167
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11168
    check-cast v0, Ljava/lang/String;

    .line 11176
    :goto_0
    return-object v0

    .line 11170
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 11172
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 11173
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11174
    iput-object v1, p0, Lcom/avast/a/a/a/am;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11176
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 11195
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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

.method public i()Lcom/avast/a/a/a/ao;
    .locals 1

    .prologue
    .line 11198
    iget-object v0, p0, Lcom/avast/a/a/a/am;->f:Lcom/avast/a/a/a/ao;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 11205
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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

.method public k()I
    .locals 1

    .prologue
    .line 11208
    iget v0, p0, Lcom/avast/a/a/a/am;->g:I

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 11215
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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
    .line 11218
    iget-object v0, p0, Lcom/avast/a/a/a/am;->h:Ljava/lang/Object;

    .line 11219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11220
    check-cast v0, Ljava/lang/String;

    .line 11228
    :goto_0
    return-object v0

    .line 11222
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 11224
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 11225
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11226
    iput-object v1, p0, Lcom/avast/a/a/a/am;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11228
    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 11247
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11250
    iget-object v0, p0, Lcom/avast/a/a/a/am;->i:Ljava/lang/Object;

    .line 11251
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11252
    check-cast v0, Ljava/lang/String;

    .line 11260
    :goto_0
    return-object v0

    .line 11254
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 11256
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 11257
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11258
    iput-object v1, p0, Lcom/avast/a/a/a/am;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11260
    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 11279
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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
    .line 11282
    iget-object v0, p0, Lcom/avast/a/a/a/am;->j:Ljava/lang/Object;

    .line 11283
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11284
    check-cast v0, Ljava/lang/String;

    .line 11292
    :goto_0
    return-object v0

    .line 11286
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 11288
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 11289
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11290
    iput-object v1, p0, Lcom/avast/a/a/a/am;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11292
    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 11311
    iget v0, p0, Lcom/avast/a/a/a/am;->b:I

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
    .line 11314
    iget-object v0, p0, Lcom/avast/a/a/a/am;->k:Ljava/lang/Object;

    .line 11315
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11316
    check-cast v0, Ljava/lang/String;

    .line 11324
    :goto_0
    return-object v0

    .line 11318
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 11320
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 11321
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11322
    iput-object v1, p0, Lcom/avast/a/a/a/am;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 11324
    goto :goto_0
.end method

.method public u()Lcom/avast/a/a/a/an;
    .locals 1

    .prologue
    .line 11520
    invoke-static {}, Lcom/avast/a/a/a/am;->t()Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11352
    iget-byte v2, p0, Lcom/avast/a/a/a/am;->l:B

    .line 11353
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 11364
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 11353
    goto :goto_0

    .line 11355
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/am;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 11356
    iput-byte v1, p0, Lcom/avast/a/a/a/am;->l:B

    move v0, v1

    .line 11357
    goto :goto_0

    .line 11359
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/am;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11360
    iput-byte v1, p0, Lcom/avast/a/a/a/am;->l:B

    move v0, v1

    .line 11361
    goto :goto_0

    .line 11363
    :cond_3
    iput-byte v0, p0, Lcom/avast/a/a/a/am;->l:B

    goto :goto_0
.end method

.method public w()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11401
    iget v0, p0, Lcom/avast/a/a/a/am;->m:I

    .line 11402
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11442
    :goto_0
    return v0

    .line 11404
    :cond_0
    const/4 v0, 0x0

    .line 11405
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 11406
    iget-object v1, p0, Lcom/avast/a/a/a/am;->c:Lcom/avast/a/a/a/aq;

    invoke-virtual {v1}, Lcom/avast/a/a/a/aq;->a()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11409
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 11410
    iget-wide v1, p0, Lcom/avast/a/a/a/am;->d:J

    invoke-static {v3, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11413
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 11414
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->y()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11417
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 11418
    iget-object v1, p0, Lcom/avast/a/a/a/am;->f:Lcom/avast/a/a/a/ao;

    invoke-virtual {v1}, Lcom/avast/a/a/a/ao;->a()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11421
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 11422
    const/4 v1, 0x5

    iget v2, p0, Lcom/avast/a/a/a/am;->g:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11425
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 11426
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->z()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11429
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 11430
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->C()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11433
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 11434
    invoke-direct {p0}, Lcom/avast/a/a/a/am;->D()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11437
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/am;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 11438
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/avast/a/a/a/am;->E()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11441
    :cond_9
    iput v0, p0, Lcom/avast/a/a/a/am;->m:I

    goto/16 :goto_0
.end method

.method public x()Lcom/avast/a/a/a/an;
    .locals 1

    .prologue
    .line 11524
    invoke-static {p0}, Lcom/avast/a/a/a/am;->a(Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/an;

    move-result-object v0

    return-object v0
.end method
