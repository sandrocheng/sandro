.class public final Lcom/avast/android/generic/internet/c/a/ae;
.super Lcom/google/a/n;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/af;


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:Lcom/google/a/c;

.field private d:Lcom/google/a/c;

.field private e:Lcom/google/a/c;

.field private f:J

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Lcom/google/a/c;

.field private j:Lcom/avast/android/generic/internet/c/a/am;

.field private k:I

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/Object;

.field private q:Lcom/google/a/c;

.field private r:J

.field private s:Z

.field private t:Lcom/avast/android/generic/internet/c/a/ag;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4055
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 4427
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->b:Lcom/google/a/c;

    .line 4451
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->c:Lcom/google/a/c;

    .line 4475
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->d:Lcom/google/a/c;

    .line 4499
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->e:Lcom/google/a/c;

    .line 4544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    .line 4595
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    .line 4646
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->i:Lcom/google/a/c;

    .line 4670
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->a()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    .line 4818
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->p:Ljava/lang/Object;

    .line 4854
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->q:Lcom/google/a/c;

    .line 4920
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->a()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    .line 4056
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ae;->p()V

    .line 4057
    return-void
.end method

.method static synthetic o()Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1

    .prologue
    .line 4050
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ae;->q()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 0

    .prologue
    .line 4060
    return-void
.end method

.method private static q()Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1

    .prologue
    .line 4062
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ae;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ae;-><init>()V

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 4546
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 4547
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    .line 4548
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4550
    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 4597
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 4598
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    .line 4599
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4601
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2

    .prologue
    .line 4109
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ae;->q()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->d()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/ad;)Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4721
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4722
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->k:I

    .line 4724
    return-object p0
.end method

.method public a(J)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4531
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4532
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->f:J

    .line 4534
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ad;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 4221
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ad;->a()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4293
    :cond_0
    :goto_0
    return-object p0

    .line 4222
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4223
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->c()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4225
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4226
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->e()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4228
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4229
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4231
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4232
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->i()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->d(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4234
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4235
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/ae;->a(J)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4237
    :cond_6
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4238
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4239
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    .line 4240
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4247
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/ad;->c(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4248
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4249
    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/ad;->c(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    .line 4250
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4257
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->n()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4258
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->o()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->e(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4260
    :cond_9
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4261
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->q()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->b(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4263
    :cond_a
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->r()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4264
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(I)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4266
    :cond_b
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->t()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4267
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->u()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/ae;->b(J)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4269
    :cond_c
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4270
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->y()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/ae;->c(J)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4272
    :cond_d
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4273
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->C()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Z)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4275
    :cond_e
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->D()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4276
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->E()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->b(Z)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4278
    :cond_f
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->F()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4279
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4281
    :cond_10
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->H()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4282
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->I()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->f(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4284
    :cond_11
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4285
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->K()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/generic/internet/c/a/ae;->d(J)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4287
    :cond_12
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->L()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4288
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->M()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->c(Z)Lcom/avast/android/generic/internet/c/a/ae;

    .line 4290
    :cond_13
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4291
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ad;->O()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->b(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ae;

    goto/16 :goto_0

    .line 4242
    :cond_14
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ae;->r()V

    .line 4243
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 4252
    :cond_15
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ae;->s()V

    .line 4253
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/android/generic/internet/c/a/ad;->c(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 4928
    if-nez p1, :cond_0

    .line 4929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4931
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    .line 4933
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4934
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4678
    if-nez p1, :cond_0

    .line 4679
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4681
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    .line 4683
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4684
    return-object p0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4435
    if-nez p1, :cond_0

    .line 4436
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4438
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4439
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->b:Lcom/google/a/c;

    .line 4441
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4305
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 4306
    sparse-switch v0, :sswitch_data_0

    .line 4311
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4313
    :sswitch_0
    return-object p0

    .line 4318
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4319
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->b:Lcom/google/a/c;

    goto :goto_0

    .line 4323
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4324
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->c:Lcom/google/a/c;

    goto :goto_0

    .line 4328
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4329
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->d:Lcom/google/a/c;

    goto :goto_0

    .line 4333
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4334
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->e:Lcom/google/a/c;

    goto :goto_0

    .line 4338
    :sswitch_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4339
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->f:J

    goto :goto_0

    .line 4343
    :sswitch_6
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ae;->r()V

    .line 4344
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4348
    :sswitch_7
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ae;->s()V

    .line 4349
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4353
    :sswitch_8
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4354
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->i:Lcom/google/a/c;

    goto :goto_0

    .line 4358
    :sswitch_9
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->x()Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    .line 4359
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4360
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->l()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    .line 4362
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 4363
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->d()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/ae;

    goto/16 :goto_0

    .line 4367
    :sswitch_a
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4368
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->k:I

    goto/16 :goto_0

    .line 4372
    :sswitch_b
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4373
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->l:J

    goto/16 :goto_0

    .line 4377
    :sswitch_c
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4378
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->m:J

    goto/16 :goto_0

    .line 4382
    :sswitch_d
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4383
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->n:Z

    goto/16 :goto_0

    .line 4387
    :sswitch_e
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4388
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->o:Z

    goto/16 :goto_0

    .line 4392
    :sswitch_f
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4393
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->p:Ljava/lang/Object;

    goto/16 :goto_0

    .line 4397
    :sswitch_10
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4398
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->q:Lcom/google/a/c;

    goto/16 :goto_0

    .line 4402
    :sswitch_11
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4403
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->r:J

    goto/16 :goto_0

    .line 4407
    :sswitch_12
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4408
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->s:Z

    goto/16 :goto_0

    .line 4412
    :sswitch_13
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->d()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    .line 4413
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4414
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->n()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    .line 4416
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 4417
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ah;->d()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ae;

    goto/16 :goto_0

    .line 4306
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x9a -> :sswitch_13
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4833
    if-nez p1, :cond_0

    .line 4834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4836
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4837
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->p:Ljava/lang/Object;

    .line 4839
    return-object p0
.end method

.method public a(Z)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4784
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4785
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->n:Z

    .line 4787
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 4050
    check-cast p1, Lcom/avast/android/generic/internet/c/a/ad;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/ad;)Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/ad;
    .locals 1

    .prologue
    .line 4113
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ad;->a()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4742
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4743
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->l:J

    .line 4745
    return-object p0
.end method

.method public b(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4

    .line 4944
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->a()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4946
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/ag;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ah;->d()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    .line 4952
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4953
    return-object p0

    .line 4949
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    goto :goto_0
.end method

.method public b(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 4694
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->a()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4696
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/am;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/internet/c/a/an;->a(Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/an;->d()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    .line 4702
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4703
    return-object p0

    .line 4699
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    goto :goto_0
.end method

.method public b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4459
    if-nez p1, :cond_0

    .line 4460
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4462
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4463
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->c:Lcom/google/a/c;

    .line 4465
    return-object p0
.end method

.method public b(Z)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4805
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4806
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->o:Z

    .line 4808
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4050
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/ad;
    .locals 2

    .prologue
    .line 4117
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->d()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v0

    .line 4118
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ad;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4119
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 4121
    :cond_0
    return-object v0
.end method

.method public c(J)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4763
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4764
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->m:J

    .line 4766
    return-object p0
.end method

.method public c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4483
    if-nez p1, :cond_0

    .line 4484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4486
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4487
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->d:Lcom/google/a/c;

    .line 4489
    return-object p0
.end method

.method public c(Z)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 4907
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4908
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->s:Z

    .line 4910
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4050
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4050
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->a()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/ad;
    .locals 10

    .prologue
    const/high16 v9, 0x4

    const/high16 v8, 0x2

    const/4 v0, 0x1

    const/high16 v7, 0x1

    const v6, 0x8000

    .line 4135
    new-instance v2, Lcom/avast/android/generic/internet/c/a/ad;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/ad;-><init>(Lcom/avast/android/generic/internet/c/a/ae;Lcom/avast/android/generic/internet/c/a/ac;)V

    .line 4136
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4137
    const/4 v1, 0x0

    .line 4138
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_12

    .line 4141
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4142
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 4143
    or-int/lit8 v0, v0, 0x2

    .line 4145
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4146
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 4147
    or-int/lit8 v0, v0, 0x4

    .line 4149
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->d:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->c(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4150
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 4151
    or-int/lit8 v0, v0, 0x8

    .line 4153
    :cond_2
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->d(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4154
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 4155
    or-int/lit8 v0, v0, 0x10

    .line 4157
    :cond_3
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/ae;->f:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;J)J

    .line 4158
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 4159
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    .line 4160
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4162
    :cond_4
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->g:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;Ljava/util/List;)Ljava/util/List;

    .line 4163
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 4164
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    .line 4165
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4167
    :cond_5
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->h:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;Ljava/util/List;)Ljava/util/List;

    .line 4168
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 4169
    or-int/lit8 v0, v0, 0x20

    .line 4171
    :cond_6
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->i:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->e(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4172
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 4173
    or-int/lit8 v0, v0, 0x40

    .line 4175
    :cond_7
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/am;

    .line 4176
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 4177
    or-int/lit16 v0, v0, 0x80

    .line 4179
    :cond_8
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->k:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;I)I

    .line 4180
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 4181
    or-int/lit16 v0, v0, 0x100

    .line 4183
    :cond_9
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/ae;->l:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;J)J

    .line 4184
    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    .line 4185
    or-int/lit16 v0, v0, 0x200

    .line 4187
    :cond_a
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/ae;->m:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/ad;->c(Lcom/avast/android/generic/internet/c/a/ad;J)J

    .line 4188
    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    .line 4189
    or-int/lit16 v0, v0, 0x400

    .line 4191
    :cond_b
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->n:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;Z)Z

    .line 4192
    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    .line 4193
    or-int/lit16 v0, v0, 0x800

    .line 4195
    :cond_c
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->o:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;Z)Z

    .line 4196
    and-int/lit16 v1, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    .line 4197
    or-int/lit16 v0, v0, 0x1000

    .line 4199
    :cond_d
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->p:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4200
    and-int v1, v3, v6

    if-ne v1, v6, :cond_e

    .line 4201
    or-int/lit16 v0, v0, 0x2000

    .line 4203
    :cond_e
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->q:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->f(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;

    .line 4204
    and-int v1, v3, v7

    if-ne v1, v7, :cond_f

    .line 4205
    or-int/lit16 v0, v0, 0x4000

    .line 4207
    :cond_f
    iget-wide v4, p0, Lcom/avast/android/generic/internet/c/a/ae;->r:J

    invoke-static {v2, v4, v5}, Lcom/avast/android/generic/internet/c/a/ad;->d(Lcom/avast/android/generic/internet/c/a/ad;J)J

    .line 4208
    and-int v1, v3, v8

    if-ne v1, v8, :cond_10

    .line 4209
    or-int/2addr v0, v6

    .line 4211
    :cond_10
    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->s:Z

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->c(Lcom/avast/android/generic/internet/c/a/ad;Z)Z

    .line 4212
    and-int v1, v3, v9

    if-ne v1, v9, :cond_11

    .line 4213
    or-int/2addr v0, v7

    .line 4215
    :cond_11
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ag;

    .line 4216
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/ad;->b(Lcom/avast/android/generic/internet/c/a/ad;I)I

    .line 4217
    return-object v2

    :cond_12
    move v0, v1

    goto/16 :goto_0
.end method

.method public d(J)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 4886
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4887
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->r:J

    .line 4889
    return-object p0
.end method

.method public d(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4507
    if-nez p1, :cond_0

    .line 4508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4510
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4511
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->e:Lcom/google/a/c;

    .line 4513
    return-object p0
.end method

.method public e(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4654
    if-nez p1, :cond_0

    .line 4655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4657
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4658
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->i:Lcom/google/a/c;

    .line 4660
    return-object p0
.end method

.method public e()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4432
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->b:Lcom/google/a/c;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 4528
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->f:J

    return-wide v0
.end method

.method public f(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 4862
    if-nez p1, :cond_0

    .line 4863
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4865
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    .line 4866
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ae;->q:Lcom/google/a/c;

    .line 4868
    return-object p0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 4050
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->b()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 4050
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->a()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 4050
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->a()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 4050
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ae;->c()Lcom/avast/android/generic/internet/c/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 4672
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

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

.method public l()Lcom/avast/android/generic/internet/c/a/am;
    .locals 1

    .prologue
    .line 4675
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->j:Lcom/avast/android/generic/internet/c/a/am;

    return-object v0
.end method

.method public m()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 4922
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->a:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 1

    .prologue
    .line 4925
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ae;->t:Lcom/avast/android/generic/internet/c/a/ag;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 4297
    const/4 v0, 0x1

    return v0
.end method
