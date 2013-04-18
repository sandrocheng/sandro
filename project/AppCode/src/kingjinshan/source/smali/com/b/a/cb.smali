.class public final Lcom/b/a/cb;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/cg;


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x3

.field public static final c:I = 0x4

.field public static final d:I = 0x5

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field public static final g:I = 0x8

.field private static final h:Lcom/b/a/cb;

.field private static final t:J


# instance fields
.field private i:I

.field private k:Ljava/util/List;

.field private l:Ljava/lang/Object;

.field private m:J

.field private n:J

.field private o:D

.field private p:Lcom/b/a/i;

.field private q:Ljava/lang/Object;

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 15607
    new-instance v0, Lcom/b/a/cb;

    invoke-direct {v0}, Lcom/b/a/cb;-><init>()V

    .line 15608
    sput-object v0, Lcom/b/a/cb;->h:Lcom/b/a/cb;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/cb;->k:Ljava/util/List;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    iput-wide v2, v0, Lcom/b/a/cb;->m:J

    iput-wide v2, v0, Lcom/b/a/cb;->n:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/b/a/cb;->o:D

    sget-object v1, Lcom/b/a/i;->a:Lcom/b/a/i;

    iput-object v1, v0, Lcom/b/a/cb;->p:Lcom/b/a/i;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    .line 15609
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14225
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 14829
    iput-byte v0, p0, Lcom/b/a/cb;->r:B

    .line 14871
    iput v0, p0, Lcom/b/a/cb;->s:I

    .line 14225
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/cc;)V
    .locals 1
    .parameter

    .prologue
    .line 14218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/cb;-><init>(Lcom/b/a/cc;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/cc;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14223
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 14829
    iput-byte v0, p0, Lcom/b/a/cb;->r:B

    .line 14871
    iput v0, p0, Lcom/b/a/cb;->s:I

    .line 14224
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 14821
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    .line 14822
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    .line 14823
    iput-wide v1, p0, Lcom/b/a/cb;->m:J

    .line 14824
    iput-wide v1, p0, Lcom/b/a/cb;->n:J

    .line 14825
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/cb;->o:D

    .line 14826
    sget-object v0, Lcom/b/a/i;->a:Lcom/b/a/i;

    iput-object v0, p0, Lcom/b/a/cb;->p:Lcom/b/a/i;

    .line 14827
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    .line 14828
    return-void
.end method

.method private static J()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 14985
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private K()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 14989
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/cc;->a(Lcom/b/a/cb;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/cb;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-wide p1, p0, Lcom/b/a/cb;->o:D

    return-wide p1
.end method

.method static synthetic a(Lcom/b/a/cb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput p1, p0, Lcom/b/a/cb;->i:I

    return p1
.end method

.method static synthetic a(Lcom/b/a/cb;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-wide p1, p0, Lcom/b/a/cb;->m:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 14920
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/cc;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/cb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14926
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/cc;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 14974
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/cc;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14980
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/cc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/cc;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 14942
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/cc;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/cb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14948
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/cc;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 14931
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/cc;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/cb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14937
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/cc;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/cc;

    invoke-static {p0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/cb;Lcom/b/a/i;)Lcom/b/a/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/b/a/cb;->p:Lcom/b/a/i;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/cb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/cb;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 14218
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/cb;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/b/a/cb;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-wide p1, p0, Lcom/b/a/cb;->n:J

    return-wide p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/cb;
    .locals 2
    .parameter

    .prologue
    .line 14953
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    .line 14954
    invoke-virtual {v0, p0}, Lcom/b/a/cc;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14955
    invoke-static {v0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    .line 14957
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/cb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14964
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    .line 14965
    invoke-virtual {v0, p0, p1}, Lcom/b/a/cc;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14966
    invoke-static {v0}, Lcom/b/a/cc;->a(Lcom/b/a/cc;)Lcom/b/a/cb;

    move-result-object v0

    .line 14968
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/cb;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 14987
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/cc;->a(Lcom/b/a/cb;)Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/cc;
    .locals 1
    .parameter

    .prologue
    .line 14994
    new-instance v0, Lcom/b/a/cc;

    invoke-direct {v0, p0}, Lcom/b/a/cc;-><init>(Lcom/b/a/dp;)V

    .line 14995
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/cb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14218
    iput-object p1, p0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    return-object p1
.end method

.method public static e()Lcom/b/a/cb;
    .locals 1

    .prologue
    .line 14229
    sget-object v0, Lcom/b/a/cb;->h:Lcom/b/a/cb;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 14238
    invoke-static {}, Lcom/b/a/p;->H()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static w()Lcom/b/a/cc;
    .locals 1

    .prologue
    .line 14984
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private static x()Lcom/b/a/cb;
    .locals 1

    .prologue
    .line 14233
    sget-object v0, Lcom/b/a/cb;->h:Lcom/b/a/cb;

    return-object v0
.end method

.method private y()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 14737
    iget-object v0, p0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    .line 14738
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14739
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 14741
    iput-object v0, p0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    .line 14744
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private z()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 14809
    iget-object v0, p0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    .line 14810
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14811
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 14813
    iput-object v0, p0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    .line 14816
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14914
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14218
    invoke-direct {p0}, Lcom/b/a/cb;->K()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 14218
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14218
    invoke-direct {p0}, Lcom/b/a/cb;->K()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final F_()Ljava/util/List;
    .locals 1

    .prologue
    .line 14699
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 14218
    invoke-static {}, Lcom/b/a/cc;->y()Lcom/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 14218
    sget-object v0, Lcom/b/a/cb;->h:Lcom/b/a/cb;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 14218
    sget-object v0, Lcom/b/a/cb;->h:Lcom/b/a/cb;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cd;
    .locals 1
    .parameter

    .prologue
    .line 14709
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cd;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 14218
    new-instance v0, Lcom/b/a/cc;

    invoke-direct {v0, p1}, Lcom/b/a/cc;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 14846
    invoke-virtual {p0}, Lcom/b/a/cb;->b()I

    .line 14847
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 14848
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 14847
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 14850
    :cond_0
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    .line 14851
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/b/a/cb;->y()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 14853
    :cond_1
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2

    .line 14854
    iget-wide v0, p0, Lcom/b/a/cb;->m:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/b/a/n;->a(IJ)V

    .line 14856
    :cond_2
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_3

    .line 14857
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/b/a/cb;->n:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 14859
    :cond_3
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_4

    .line 14860
    iget-wide v0, p0, Lcom/b/a/cb;->o:D

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v3}, Lcom/b/a/n;->f(II)V

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(D)V

    .line 14862
    :cond_4
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 14863
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/b/a/cb;->p:Lcom/b/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 14865
    :cond_5
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6

    .line 14866
    invoke-direct {p0}, Lcom/b/a/cb;->z()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 14868
    :cond_6
    invoke-virtual {p0}, Lcom/b/a/cb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 14869
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14831
    iget-byte v0, p0, Lcom/b/a/cb;->r:B

    .line 14832
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 14841
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 14832
    goto :goto_0

    :cond_1
    move v0, v2

    .line 14834
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/cb;->j()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 14835
    invoke-virtual {p0, v0}, Lcom/b/a/cb;->a(I)Lcom/b/a/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cd;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 14836
    iput-byte v2, p0, Lcom/b/a/cb;->r:B

    move v0, v2

    .line 14837
    goto :goto_0

    .line 14834
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14840
    :cond_3
    iput-byte v3, p0, Lcom/b/a/cb;->r:B

    move v0, v3

    .line 14841
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 14873
    iget v0, p0, Lcom/b/a/cb;->s:I

    .line 14874
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 14907
    :goto_0
    return v0

    :cond_0
    move v1, v2

    .line 14877
    :goto_1
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 14878
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 14877
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 14881
    :cond_1
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 14882
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/b/a/cb;->y()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/2addr v0, v2

    .line 14885
    :goto_2
    iget v1, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 14886
    iget-wide v1, p0, Lcom/b/a/cb;->m:J

    invoke-static {v4, v1, v2}, Lcom/b/a/n;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14889
    :cond_2
    iget v1, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 14890
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/b/a/cb;->n:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14893
    :cond_3
    iget v1, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 14894
    iget-wide v1, p0, Lcom/b/a/cb;->o:D

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 14897
    :cond_4
    iget v1, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 14898
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/b/a/cb;->p:Lcom/b/a/i;

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14901
    :cond_5
    iget v1, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 14902
    invoke-direct {p0}, Lcom/b/a/cb;->z()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14905
    :cond_6
    invoke-virtual {p0}, Lcom/b/a/cb;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 14906
    iput v0, p0, Lcom/b/a/cb;->s:I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public final b(I)Lcom/b/a/cf;
    .locals 1
    .parameter

    .prologue
    .line 14713
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cf;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 14243
    invoke-static {}, Lcom/b/a/p;->I()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .prologue
    .line 14703
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 14706
    iget-object v0, p0, Lcom/b/a/cb;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14720
    iget v0, p0, Lcom/b/a/cb;->i:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14723
    iget-object v1, p0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    .line 14724
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14725
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 14733
    :goto_0
    return-object v1

    .line 14727
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 14729
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 14730
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14731
    iput-object v2, p0, Lcom/b/a/cb;->l:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14733
    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 14752
    iget v0, p0, Lcom/b/a/cb;->i:I

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

.method public final n()J
    .locals 2

    .prologue
    .line 14755
    iget-wide v0, p0, Lcom/b/a/cb;->m:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 14762
    iget v0, p0, Lcom/b/a/cb;->i:I

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

.method public final p()J
    .locals 2

    .prologue
    .line 14765
    iget-wide v0, p0, Lcom/b/a/cb;->n:J

    return-wide v0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 14772
    iget v0, p0, Lcom/b/a/cb;->i:I

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

.method public final r()D
    .locals 2

    .prologue
    .line 14775
    iget-wide v0, p0, Lcom/b/a/cb;->o:D

    return-wide v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 14782
    iget v0, p0, Lcom/b/a/cb;->i:I

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

.method public final t()Lcom/b/a/i;
    .locals 1

    .prologue
    .line 14785
    iget-object v0, p0, Lcom/b/a/cb;->p:Lcom/b/a/i;

    return-object v0
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 14792
    iget v0, p0, Lcom/b/a/cb;->i:I

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

.method public final v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14795
    iget-object v1, p0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    .line 14796
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14797
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 14805
    :goto_0
    return-object v1

    .line 14799
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 14801
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 14802
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14803
    iput-object v2, p0, Lcom/b/a/cb;->q:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14805
    goto :goto_0
.end method
