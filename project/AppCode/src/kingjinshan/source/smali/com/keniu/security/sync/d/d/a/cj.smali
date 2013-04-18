.class public final Lcom/keniu/security/sync/d/d/a/cj;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ck;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4929
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 5125
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5161
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5197
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 4930
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->u()Z

    .line 4931
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 4915
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/cj;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4934
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 5125
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5161
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5197
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 4935
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->u()Z

    .line 4936
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/ci;
    .locals 2

    .prologue
    .line 4983
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->D()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    .line 4984
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ci;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4985
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cj;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 4988
    :cond_0
    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/ci;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4992
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ci;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ci;-><init>(Lcom/keniu/security/sync/d/d/a/cj;)V

    .line 4993
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 4994
    const/4 v2, 0x0

    .line 4995
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 4998
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ci;->a(Lcom/keniu/security/sync/d/d/a/ci;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4999
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5000
    or-int/lit8 v2, v2, 0x2

    .line 5002
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ci;->b(Lcom/keniu/security/sync/d/d/a/ci;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5003
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5004
    or-int/lit8 v2, v2, 0x4

    .line 5006
    :cond_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ci;->c(Lcom/keniu/security/sync/d/d/a/ci;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5007
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5008
    or-int/lit8 v2, v2, 0x8

    .line 5010
    :cond_3
    iget v3, p0, Lcom/keniu/security/sync/d/d/a/cj;->e:I

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/ci;->a(Lcom/keniu/security/sync/d/d/a/ci;I)I

    .line 5011
    and-int/lit8 v1, v1, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    .line 5012
    or-int/lit8 v1, v2, 0x10

    .line 5014
    :goto_0
    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/cj;->f:J

    invoke-static {v0, v2, v3}, Lcom/keniu/security/sync/d/d/a/ci;->a(Lcom/keniu/security/sync/d/d/a/ci;J)J

    .line 5015
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/ci;->b(Lcom/keniu/security/sync/d/d/a/ci;I)I

    .line 5016
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->ab_()V

    .line 5017
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 5149
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5150
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ci;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5151
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5152
    return-object p0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 5185
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5186
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ci;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5187
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5188
    return-object p0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 5221
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5222
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ci;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 5223
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5224
    return-object p0
.end method

.method private V()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 5247
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5248
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->e:I

    .line 5249
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5250
    return-object p0
.end method

.method private W()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 2

    .prologue
    .line 5268
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->f:J

    .line 5270
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5271
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/cj;)Lcom/keniu/security/sync/d/d/a/ci;
    .locals 2
    .parameter

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->D()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ci;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cj;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 5021
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ci;

    if-eqz v0, :cond_0

    .line 5022
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ci;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/ci;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    .line 5025
    :goto_0
    return-object v0

    .line 5024
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 5025
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5155
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5156
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5157
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5158
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5191
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5192
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5193
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5194
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 5227
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5228
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 5229
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5230
    return-void
.end method

.method static synthetic t()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 4915
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cj;-><init>()V

    return-object v0
.end method

.method private static u()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4920
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->r()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static v()V
    .locals 0

    .prologue
    .line 4938
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->u()Z

    .line 4940
    return-void
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1

    .prologue
    .line 4942
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cj;-><init>()V

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 2

    .prologue
    .line 4946
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 4947
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 4948
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 4949
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 4950
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 4951
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 4952
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 4953
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->e:I

    .line 4954
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 4955
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->f:J

    .line 4956
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 4957
    return-object p0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/cj;
    .locals 2

    .prologue
    .line 4961
    new-instance v0, Lcom/keniu/security/sync/d/d/a/cj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/cj;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->D()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/keniu/security/sync/d/d/a/ci;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/ci;
    .locals 1

    .prologue
    .line 4970
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 4925
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->s()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 4966
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->x()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->y()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4915
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4915
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->D()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 4915
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->i()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->D()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 4915
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->i()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 4915
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4915
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 5241
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5242
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->e:I

    .line 5243
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5244
    return-object p0
.end method

.method public final a(J)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 5262
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5263
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->f:J

    .line 5264
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5265
    return-object p0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ci;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 2
    .parameter

    .prologue
    .line 5030
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ci;->h()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5047
    :goto_0
    return-object v0

    .line 5031
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5032
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;

    .line 5034
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5035
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;

    .line 5037
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5038
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;

    .line 5040
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5041
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->a(I)Lcom/keniu/security/sync/d/d/a/cj;

    .line 5043
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5044
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->s()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/sync/d/d/a/cj;->a(J)Lcom/keniu/security/sync/d/d/a/cj;

    .line 5046
    :cond_5
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ci;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 5047
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 5140
    if-nez p1, :cond_0

    .line 5141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5143
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5144
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5145
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5146
    return-object p0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5051
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 5067
    :goto_0
    return v0

    .line 5055
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->l()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 5057
    goto :goto_0

    .line 5059
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->n()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 5061
    goto :goto_0

    .line 5063
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->p()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 5065
    goto :goto_0

    .line 5067
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->y()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4915
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 5176
    if-nez p1, :cond_0

    .line 5177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5179
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5180
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5181
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5182
    return-object p0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->x()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 4915
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/cj;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4915
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 1
    .parameter

    .prologue
    .line 5212
    if-nez p1, :cond_0

    .line 5213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5215
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5216
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 5217
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    .line 5218
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->y()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->y()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4915
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/cj;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->y()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/cj;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5074
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 5078
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 5079
    sparse-switch v1, :sswitch_data_0

    .line 5085
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/cj;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5087
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5088
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    move-object v0, p0

    .line 5089
    :goto_1
    return-object v0

    .line 5081
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/cj;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 5082
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/cj;->af_()V

    move-object v0, p0

    .line 5083
    goto :goto_1

    .line 5094
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5095
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5099
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5100
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    goto :goto_0

    .line 5104
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5105
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    goto :goto_0

    .line 5109
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5110
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->e:I

    goto :goto_0

    .line 5114
    :sswitch_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    .line 5115
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/cj;->f:J

    goto :goto_0

    .line 5079
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->x()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->y()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 4915
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->x()Lcom/keniu/security/sync/d/d/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/keniu/security/sync/d/d/a/ci;
    .locals 2

    .prologue
    .line 4974
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/cj;->D()Lcom/keniu/security/sync/d/d/a/ci;

    move-result-object v0

    .line 4975
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ci;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4976
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/cj;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 4978
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5127
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5130
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5131
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5132
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5133
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->b:Ljava/lang/Object;

    .line 5136
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 5163
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

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

.method public final m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5166
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5167
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5168
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5169
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->c:Ljava/lang/Object;

    .line 5172
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 5199
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

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

.method public final o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5202
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 5203
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5204
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 5205
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->d:Ljava/lang/Object;

    .line 5208
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 5235
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

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

.method public final q()I
    .locals 1

    .prologue
    .line 5238
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->e:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 5256
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->a:I

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

.method public final s()J
    .locals 2

    .prologue
    .line 5259
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/cj;->f:J

    return-wide v0
.end method
