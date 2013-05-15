.class public final Lcom/avast/android/generic/internet/c/a/am;
.super Lcom/google/a/l;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/ao;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/am;


# instance fields
.field private b:I

.field private c:Lcom/avast/android/generic/internet/c/a/ax;

.field private d:I

.field private e:J

.field private f:I

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:I

.field private n:I

.field private o:B

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6063
    new-instance v0, Lcom/avast/android/generic/internet/c/a/am;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/am;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/am;->a:Lcom/avast/android/generic/internet/c/a/am;

    .line 6064
    sget-object v0, Lcom/avast/android/generic/internet/c/a/am;->a:Lcom/avast/android/generic/internet/c/a/am;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/am;->C()V

    .line 6065
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/an;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 5033
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 5203
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/am;->o:B

    .line 5253
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/am;->p:I

    .line 5034
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/an;Lcom/avast/android/generic/internet/c/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/am;-><init>(Lcom/avast/android/generic/internet/c/a/an;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 5035
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 5203
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/am;->o:B

    .line 5253
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/am;->p:I

    .line 5035
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 5190
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->a:Lcom/avast/android/generic/internet/c/a/ax;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->c:Lcom/avast/android/generic/internet/c/a/ax;

    .line 5191
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/am;->d:I

    .line 5192
    iput-wide v2, p0, Lcom/avast/android/generic/internet/c/a/am;->e:J

    .line 5193
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/am;->f:I

    .line 5194
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/am;->g:Z

    .line 5195
    iput-wide v2, p0, Lcom/avast/android/generic/internet/c/a/am;->h:J

    .line 5196
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/am;->i:Z

    .line 5197
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/am;->j:Z

    .line 5198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    .line 5199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    .line 5200
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/am;->m:I

    .line 5201
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/am;->n:I

    .line 5202
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/am;->d:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/am;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/am;->e:J

    return-wide p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/am;
    .locals 1

    .prologue
    .line 5039
    sget-object v0, Lcom/avast/android/generic/internet/c/a/am;->a:Lcom/avast/android/generic/internet/c/a/am;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;
    .locals 1
    .parameter

    .prologue
    .line 5388
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->x()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/am;Lcom/avast/android/generic/internet/c/a/ax;)Lcom/avast/android/generic/internet/c/a/ax;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/am;->c:Lcom/avast/android/generic/internet/c/a/ax;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/am;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/am;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/am;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/am;->f:I

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/am;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/am;->h:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 5028
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/am;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/am;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/am;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/am;->m:I

    return p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/am;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 5028
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/am;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/am;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/avast/android/generic/internet/c/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/am;->n:I

    return p1
.end method

.method static synthetic e(Lcom/avast/android/generic/internet/c/a/am;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5028
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    return p1
.end method

.method public static x()Lcom/avast/android/generic/internet/c/a/an;
    .locals 1

    .prologue
    .line 5385
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/an;->o()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 5028
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/am;->z()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 5028
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/am;->y()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5214
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/am;->w()I

    .line 5215
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5216
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->c:Lcom/avast/android/generic/internet/c/a/ax;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ax;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 5218
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 5219
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->d:I

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(II)V

    .line 5221
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_2

    .line 5222
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/am;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5224
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 5225
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/am;->g:Z

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(IZ)V

    .line 5227
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 5228
    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/avast/android/generic/internet/c/a/am;->h:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/a/e;->b(IJ)V

    .line 5230
    :cond_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5

    .line 5231
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/am;->i:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5233
    :cond_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6

    .line 5234
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/am;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    :cond_6
    move v1, v2

    .line 5236
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 5237
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v6, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 5236
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5239
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 5240
    const/16 v1, 0x9

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 5239
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5242
    :cond_8
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 5243
    const/16 v0, 0xa

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/am;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5245
    :cond_9
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 5246
    const/16 v0, 0xb

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/am;->n:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 5248
    :cond_a
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_b

    .line 5249
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/avast/android/generic/internet/c/a/am;->e:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 5251
    :cond_b
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5051
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/ax;
    .locals 1

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->c:Lcom/avast/android/generic/internet/c/a/ax;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 5061
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public e()I
    .locals 1

    .prologue
    .line 5064
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->d:I

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 5071
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public g()J
    .locals 2

    .prologue
    .line 5074
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/am;->e:J

    return-wide v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 5081
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public i()I
    .locals 1

    .prologue
    .line 5084
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->f:I

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 5091
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public k()Z
    .locals 1

    .prologue
    .line 5094
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/am;->g:Z

    return v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 5101
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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
    .line 5104
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/am;->h:J

    return-wide v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 5111
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public o()Z
    .locals 1

    .prologue
    .line 5114
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/am;->i:Z

    return v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 5121
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public q()Z
    .locals 1

    .prologue
    .line 5124
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/am;->j:Z

    return v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 5173
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public s()I
    .locals 1

    .prologue
    .line 5176
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->m:I

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 5183
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

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

.method public u()I
    .locals 1

    .prologue
    .line 5186
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->n:I

    return v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5205
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/am;->o:B

    .line 5206
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 5209
    :goto_0
    return v0

    .line 5206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5208
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/am;->o:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5255
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/am;->p:I

    .line 5256
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 5308
    :goto_0
    return v3

    .line 5259
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_c

    .line 5260
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->c:Lcom/avast/android/generic/internet/c/a/ax;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ax;->a()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/a/e;->g(II)I

    move-result v0

    add-int/2addr v0, v1

    .line 5263
    :goto_1
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 5264
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->d:I

    invoke-static {v4, v2}, Lcom/google/a/e;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5267
    :cond_1
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_2

    .line 5268
    const/4 v2, 0x3

    iget v3, p0, Lcom/avast/android/generic/internet/c/a/am;->f:I

    invoke-static {v2, v3}, Lcom/google/a/e;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5271
    :cond_2
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 5272
    iget-boolean v2, p0, Lcom/avast/android/generic/internet/c/a/am;->g:Z

    invoke-static {v5, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5275
    :cond_3
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 5276
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/avast/android/generic/internet/c/a/am;->h:J

    invoke-static {v2, v3, v4}, Lcom/google/a/e;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5279
    :cond_4
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 5280
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/avast/android/generic/internet/c/a/am;->i:Z

    invoke-static {v2, v3}, Lcom/google/a/e;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5283
    :cond_5
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6

    .line 5284
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/avast/android/generic/internet/c/a/am;->j:Z

    invoke-static {v2, v3}, Lcom/google/a/e;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    move v2, v1

    move v3, v0

    .line 5287
    :goto_2
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 5288
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v6, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 5287
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 5291
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 5292
    const/16 v2, 0x9

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/am;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v2, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 5291
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5295
    :cond_8
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9

    .line 5296
    const/16 v0, 0xa

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/am;->m:I

    invoke-static {v0, v1}, Lcom/google/a/e;->e(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 5299
    :cond_9
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    .line 5300
    const/16 v0, 0xb

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/am;->n:I

    invoke-static {v0, v1}, Lcom/google/a/e;->e(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 5303
    :cond_a
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/am;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_b

    .line 5304
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/avast/android/generic/internet/c/a/am;->e:J

    invoke-static {v0, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 5307
    :cond_b
    iput v3, p0, Lcom/avast/android/generic/internet/c/a/am;->p:I

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method public y()Lcom/avast/android/generic/internet/c/a/an;
    .locals 1

    .prologue
    .line 5386
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->x()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/avast/android/generic/internet/c/a/an;
    .locals 1

    .prologue
    .line 5390
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    return-object v0
.end method
