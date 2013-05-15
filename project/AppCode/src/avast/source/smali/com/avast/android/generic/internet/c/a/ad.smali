.class public final Lcom/avast/android/generic/internet/c/a/ad;
.super Lcom/google/a/l;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/af;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/ad;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:Lcom/google/a/c;

.field private e:Lcom/google/a/c;

.field private f:Lcom/google/a/c;

.field private g:J

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Lcom/google/a/c;

.field private k:Lcom/avast/android/generic/internet/c/a/am;

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Object;

.field private r:Lcom/google/a/c;

.field private s:J

.field private t:Z

.field private u:Lcom/avast/android/generic/internet/c/a/ag;

.field private v:B

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4966
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/ad;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ad;->a:Lcom/avast/android/generic/internet/c/a/ad;

    .line 4967
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ad;->a:Lcom/avast/android/generic/internet/c/a/ad;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ad;->T()V

    .line 4968
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/ae;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3547
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 3802
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->v:B

    .line 3873
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->w:I

    .line 3548
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/ae;Lcom/avast/android/generic/internet/c/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/ad;-><init>(Lcom/avast/android/generic/internet/c/a/ae;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3549
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 3802
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->v:B

    .line 3873
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->w:I

    .line 3549
    return-void
.end method

.method public static P()Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1

    .prologue
    .line 4043
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ae;->o()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private S()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3730
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->q:Ljava/lang/Object;

    .line 3731
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3732
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3734
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->q:Ljava/lang/Object;

    .line 3737
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private T()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 3782
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->c:Lcom/google/a/c;

    .line 3783
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->d:Lcom/google/a/c;

    .line 3784
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->e:Lcom/google/a/c;

    .line 3785
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->f:Lcom/google/a/c;

    .line 3786
    iput-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->g:J

    .line 3787
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    .line 3788
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    .line 3789
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->j:Lcom/google/a/c;

    .line 3790
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/am;->a()Lcom/avast/android/generic/internet/c/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->k:Lcom/avast/android/generic/internet/c/a/am;

    .line 3791
    iput v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->l:I

    .line 3792
    iput-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->m:J

    .line 3793
    iput-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->n:J

    .line 3794
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->o:Z

    .line 3795
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->p:Z

    .line 3796
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->q:Ljava/lang/Object;

    .line 3797
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->r:Lcom/google/a/c;

    .line 3798
    iput-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->s:J

    .line 3799
    iput-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->t:Z

    .line 3800
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->a()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->u:Lcom/avast/android/generic/internet/c/a/ag;

    .line 3801
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->l:I

    return p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->g:J

    return-wide p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/ad;
    .locals 1

    .prologue
    .line 3553
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ad;->a:Lcom/avast/android/generic/internet/c/a/ad;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/ad;)Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 4046
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ad;->P()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/ae;->a(Lcom/avast/android/generic/internet/c/a/ad;)Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->u:Lcom/avast/android/generic/internet/c/a/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;Lcom/avast/android/generic/internet/c/a/am;)Lcom/avast/android/generic/internet/c/a/am;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->k:Lcom/avast/android/generic/internet/c/a/am;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ad;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->m:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->d:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ad;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/generic/internet/c/a/ad;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->n:J

    return-wide p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->e:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/internet/c/a/ad;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-boolean p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->t:Z

    return p1
.end method

.method static synthetic d(Lcom/avast/android/generic/internet/c/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-wide p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->s:J

    return-wide p1
.end method

.method static synthetic d(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->f:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->j:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/android/generic/internet/c/a/ad;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3542
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/ad;->r:Lcom/google/a/c;

    return-object p1
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3542
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ad;->R()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3542
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ad;->Q()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 3696
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->o:Z

    return v0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 3703
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
    .line 3706
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->p:Z

    return v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 3713
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3716
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->q:Ljava/lang/Object;

    .line 3717
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3718
    check-cast v0, Ljava/lang/String;

    .line 3726
    :goto_0
    return-object v0

    .line 3720
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3722
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3723
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3724
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->q:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3726
    goto :goto_0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 3745
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public I()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->r:Lcom/google/a/c;

    return-object v0
.end method

.method public J()Z
    .locals 2

    .prologue
    .line 3755
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public K()J
    .locals 2

    .prologue
    .line 3758
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->s:J

    return-wide v0
.end method

.method public L()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 3765
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 3768
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->t:Z

    return v0
.end method

.method public N()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 3775
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 1

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->u:Lcom/avast/android/generic/internet/c/a/ag;

    return-object v0
.end method

.method public Q()Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1

    .prologue
    .line 4044
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ad;->P()Lcom/avast/android/generic/internet/c/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public R()Lcom/avast/android/generic/internet/c/a/ae;
    .locals 1

    .prologue
    .line 4048
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/ad;->a(Lcom/avast/android/generic/internet/c/a/ad;)Lcom/avast/android/generic/internet/c/a/ae;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3813
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ad;->w()I

    .line 3814
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3815
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3817
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 3818
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->d:Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3820
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    .line 3821
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->e:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3823
    :cond_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    .line 3824
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->f:Lcom/google/a/c;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3826
    :cond_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 3827
    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/avast/android/generic/internet/c/a/ad;->g:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/a/e;->b(IJ)V

    :cond_4
    move v1, v2

    .line 3829
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3830
    const/4 v3, 0x6

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3829
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3832
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 3833
    const/4 v1, 0x7

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3832
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3835
    :cond_6
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 3836
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->j:Lcom/google/a/c;

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3838
    :cond_7
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_8

    .line 3839
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->k:Lcom/avast/android/generic/internet/c/a/am;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 3841
    :cond_8
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_9

    .line 3842
    const/16 v0, 0xa

    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 3844
    :cond_9
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    .line 3845
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->m:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 3847
    :cond_a
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_b

    .line 3848
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->n:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 3850
    :cond_b
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_c

    .line 3851
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->o:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 3853
    :cond_c
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_d

    .line 3854
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->p:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 3856
    :cond_d
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_e

    .line 3857
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ad;->S()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3859
    :cond_e
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_f

    .line 3860
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->r:Lcom/google/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3862
    :cond_f
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_10

    .line 3863
    const/16 v0, 0x11

    iget-wide v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->s:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 3865
    :cond_10
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_11

    .line 3866
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->t:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 3868
    :cond_11
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 3869
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->u:Lcom/avast/android/generic/internet/c/a/ag;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 3871
    :cond_12
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3565
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
    .line 3568
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3575
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
    .line 3578
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->d:Lcom/google/a/c;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3585
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
    .line 3588
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->e:Lcom/google/a/c;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 3595
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
    .line 3598
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->f:Lcom/google/a/c;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 3605
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
    .line 3608
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->g:J

    return-wide v0
.end method

.method public l()Ljava/util/List;
    .locals 1

    .prologue
    .line 3616
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1

    .prologue
    .line 3630
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 3643
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public o()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 3646
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->j:Lcom/google/a/c;

    return-object v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 3653
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public q()Lcom/avast/android/generic/internet/c/a/am;
    .locals 1

    .prologue
    .line 3656
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->k:Lcom/avast/android/generic/internet/c/a/am;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 3663
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public s()I
    .locals 1

    .prologue
    .line 3666
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->l:I

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 3673
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public u()J
    .locals 2

    .prologue
    .line 3676
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->m:J

    return-wide v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3804
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->v:B

    .line 3805
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3808
    :goto_0
    return v0

    .line 3805
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3807
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->v:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3875
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->w:I

    .line 3876
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3966
    :goto_0
    return v0

    .line 3879
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_13

    .line 3880
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->c:Lcom/google/a/c;

    invoke-static {v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/2addr v0, v1

    .line 3883
    :goto_1
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 3884
    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->d:Lcom/google/a/c;

    invoke-static {v4, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3887
    :cond_1
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_2

    .line 3888
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/avast/android/generic/internet/c/a/ad;->e:Lcom/google/a/c;

    invoke-static {v2, v3}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3891
    :cond_2
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_3

    .line 3892
    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->f:Lcom/google/a/c;

    invoke-static {v5, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3895
    :cond_3
    iget v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_12

    .line 3896
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/avast/android/generic/internet/c/a/ad;->g:J

    invoke-static {v2, v3, v4}, Lcom/google/a/e;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    move v2, v0

    :goto_2
    move v3, v1

    move v4, v1

    .line 3901
    :goto_3
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 3902
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c;

    invoke-static {v0}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v0

    add-int/2addr v4, v0

    .line 3901
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 3905
    :cond_4
    add-int v0, v2, v4

    .line 3906
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ad;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v0, v2

    move v2, v1

    .line 3910
    :goto_4
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3911
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c;

    invoke-static {v0}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3910
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_4

    .line 3914
    :cond_5
    add-int v0, v3, v2

    .line 3915
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ad;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3917
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 3918
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->j:Lcom/google/a/c;

    invoke-static {v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3921
    :cond_6
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 3922
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->k:Lcom/avast/android/generic/internet/c/a/am;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3925
    :cond_7
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 3926
    const/16 v1, 0xa

    iget v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->l:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3929
    :cond_8
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 3930
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->m:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3933
    :cond_9
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 3934
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->n:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3937
    :cond_a
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 3938
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->o:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3941
    :cond_b
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 3942
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->p:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3945
    :cond_c
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 3946
    const/16 v1, 0xf

    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ad;->S()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3949
    :cond_d
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 3950
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->r:Lcom/google/a/c;

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3953
    :cond_e
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 3954
    const/16 v1, 0x11

    iget-wide v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->s:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3957
    :cond_f
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 3958
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->t:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3961
    :cond_10
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 3962
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/ad;->u:Lcom/avast/android/generic/internet/c/a/ag;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3965
    :cond_11
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->w:I

    goto/16 :goto_0

    :cond_12
    move v2, v0

    goto/16 :goto_2

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 3683
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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

.method public y()J
    .locals 2

    .prologue
    .line 3686
    iget-wide v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->n:J

    return-wide v0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 3693
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ad;->b:I

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
