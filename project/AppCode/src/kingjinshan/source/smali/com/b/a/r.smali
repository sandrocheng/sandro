.class public final Lcom/b/a/r;
.super Lcom/b/a/dk;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/w;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x6

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x7

.field private static final h:Lcom/b/a/r;

.field private static final t:J


# instance fields
.field private i:I

.field private k:Ljava/lang/Object;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Lcom/b/a/bg;

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4923
    new-instance v0, Lcom/b/a/r;

    invoke-direct {v0}, Lcom/b/a/r;-><init>()V

    .line 4924
    sput-object v0, Lcom/b/a/r;->h:Lcom/b/a/r;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/r;->k:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    .line 4925
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2661
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 3237
    iput-byte v0, p0, Lcom/b/a/r;->r:B

    .line 3303
    iput v0, p0, Lcom/b/a/r;->s:I

    .line 2661
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/s;)V
    .locals 1
    .parameter

    .prologue
    .line 2654
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/r;-><init>(Lcom/b/a/s;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/s;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2659
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 3237
    iput-byte v0, p0, Lcom/b/a/r;->r:B

    .line 3303
    iput v0, p0, Lcom/b/a/r;->s:I

    .line 2660
    return-void
.end method

.method private static J()Lcom/b/a/r;
    .locals 1

    .prologue
    .line 2669
    sget-object v0, Lcom/b/a/r;->h:Lcom/b/a/r;

    return-object v0
.end method

.method private K()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/b/a/r;->k:Ljava/lang/Object;

    .line 3100
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3101
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 3103
    iput-object v0, p0, Lcom/b/a/r;->k:Ljava/lang/Object;

    .line 3106
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private L()V
    .locals 1

    .prologue
    .line 3229
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/r;->k:Ljava/lang/Object;

    .line 3230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    .line 3231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    .line 3232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    .line 3233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    .line 3234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    .line 3235
    invoke-static {}, Lcom/b/a/bg;->e()Lcom/b/a/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    .line 3236
    return-void
.end method

.method private static M()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3417
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method private N()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3421
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/s;->a(Lcom/b/a/r;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput p1, p0, Lcom/b/a/r;->i:I

    return p1
.end method

.method static synthetic a(Lcom/b/a/r;Lcom/b/a/bg;)Lcom/b/a/bg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/r;
    .locals 1
    .parameter

    .prologue
    .line 3352
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/s;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3358
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/s;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/r;
    .locals 1
    .parameter

    .prologue
    .line 3406
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/s;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3412
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/s;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/s;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/r;
    .locals 1
    .parameter

    .prologue
    .line 3374
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/s;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3380
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/s;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/r;
    .locals 1
    .parameter

    .prologue
    .line 3363
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/s;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/r;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3369
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/s;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/s;

    invoke-static {p0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/r;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->l:Ljava/util/List;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/r;
    .locals 2
    .parameter

    .prologue
    .line 3385
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    .line 3386
    invoke-virtual {v0, p0}, Lcom/b/a/s;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3387
    invoke-static {v0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    .line 3389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/r;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3396
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    .line 3397
    invoke-virtual {v0, p0, p1}, Lcom/b/a/s;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3398
    invoke-static {v0}, Lcom/b/a/s;->a(Lcom/b/a/s;)Lcom/b/a/r;

    move-result-object v0

    .line 3400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 3426
    new-instance v0, Lcom/b/a/s;

    invoke-direct {v0, p0}, Lcom/b/a/s;-><init>(Lcom/b/a/dp;)V

    .line 3427
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/b/a/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->n:Ljava/util/List;

    return-object p1
.end method

.method public static c_()Lcom/b/a/s;
    .locals 1

    .prologue
    .line 3416
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->o:Ljava/util/List;

    return-object p1
.end method

.method public static e()Lcom/b/a/r;
    .locals 1

    .prologue
    .line 2665
    sget-object v0, Lcom/b/a/r;->h:Lcom/b/a/r;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/r;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2654
    iput-object p1, p0, Lcom/b/a/r;->p:Ljava/util/List;

    return-object p1
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2674
    invoke-static {}, Lcom/b/a/p;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static f(Lcom/b/a/r;)Lcom/b/a/s;
    .locals 1
    .parameter

    .prologue
    .line 3419
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/s;->a(Lcom/b/a/r;)Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/b/a/bi;
    .locals 1

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    return-object v0
.end method

.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3346
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/b/a/r;->N()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2654
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/b/a/r;->N()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2654
    invoke-static {}, Lcom/b/a/s;->N()Lcom/b/a/s;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2654
    sget-object v0, Lcom/b/a/r;->h:Lcom/b/a/r;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2654
    sget-object v0, Lcom/b/a/r;->h:Lcom/b/a/r;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/aj;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2654
    new-instance v0, Lcom/b/a/s;

    invoke-direct {v0, p1}, Lcom/b/a/s;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3278
    invoke-virtual {p0}, Lcom/b/a/r;->b()I

    .line 3279
    iget v0, p0, Lcom/b/a/r;->i:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3280
    invoke-direct {p0}, Lcom/b/a/r;->K()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    :cond_0
    move v1, v3

    .line 3282
    :goto_0
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3283
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v4, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3282
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3285
    :goto_1
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3286
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v3

    .line 3288
    :goto_2
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3289
    const/4 v2, 0x4

    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3288
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 3291
    :goto_3
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 3292
    const/4 v2, 0x5

    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3291
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move v1, v3

    .line 3294
    :goto_4
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3295
    const/4 v2, 0x6

    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 3297
    :cond_5
    iget v0, p0, Lcom/b/a/r;->i:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_6

    .line 3298
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 3300
    :cond_6
    invoke-virtual {p0}, Lcom/b/a/r;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 3301
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3239
    iget-byte v0, p0, Lcom/b/a/r;->r:B

    .line 3240
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 3273
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 3240
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3242
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/r;->l()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3243
    invoke-virtual {p0, v0}, Lcom/b/a/r;->a(I)Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3244
    iput-byte v2, p0, Lcom/b/a/r;->r:B

    move v0, v2

    .line 3245
    goto :goto_0

    .line 3242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 3248
    :goto_2
    invoke-virtual {p0}, Lcom/b/a/r;->o()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3249
    invoke-virtual {p0, v0}, Lcom/b/a/r;->c(I)Lcom/b/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3250
    iput-byte v2, p0, Lcom/b/a/r;->r:B

    move v0, v2

    .line 3251
    goto :goto_0

    .line 3248
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 3254
    :goto_3
    invoke-virtual {p0}, Lcom/b/a/r;->r()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 3255
    invoke-virtual {p0, v0}, Lcom/b/a/r;->e(I)Lcom/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/r;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3256
    iput-byte v2, p0, Lcom/b/a/r;->r:B

    move v0, v2

    .line 3257
    goto :goto_0

    .line 3254
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v2

    .line 3260
    :goto_4
    invoke-virtual {p0}, Lcom/b/a/r;->u()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 3261
    invoke-virtual {p0, v0}, Lcom/b/a/r;->g(I)Lcom/b/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/x;->a()Z

    move-result v1

    if-nez v1, :cond_8

    .line 3262
    iput-byte v2, p0, Lcom/b/a/r;->r:B

    move v0, v2

    .line 3263
    goto :goto_0

    .line 3260
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3266
    :cond_9
    invoke-virtual {p0}, Lcom/b/a/r;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3267
    iget-object v0, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    invoke-virtual {v0}, Lcom/b/a/bg;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3268
    iput-byte v2, p0, Lcom/b/a/r;->r:B

    move v0, v2

    .line 3269
    goto :goto_0

    .line 3272
    :cond_a
    iput-byte v3, p0, Lcom/b/a/r;->r:B

    move v0, v3

    .line 3273
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3305
    iget v0, p0, Lcom/b/a/r;->s:I

    .line 3306
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3339
    :goto_0
    return v0

    .line 3309
    :cond_0
    iget v0, p0, Lcom/b/a/r;->i:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_7

    .line 3310
    invoke-direct {p0}, Lcom/b/a/r;->K()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    move v1, v4

    move v2, v0

    .line 3313
    :goto_2
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 3314
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v5, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3313
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    move v1, v4

    .line 3317
    :goto_3
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3318
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3317
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    move v1, v4

    .line 3321
    :goto_4
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3322
    const/4 v3, 0x4

    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3321
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    move v1, v4

    .line 3325
    :goto_5
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 3326
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3325
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_5

    :cond_4
    move v1, v4

    .line 3329
    :goto_6
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3330
    const/4 v3, 0x6

    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3329
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_6

    .line 3333
    :cond_5
    iget v0, p0, Lcom/b/a/r;->i:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_6

    .line 3334
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    invoke-static {v0, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3337
    :goto_7
    invoke-virtual {p0}, Lcom/b/a/r;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 3338
    iput v0, p0, Lcom/b/a/r;->s:I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v4

    goto/16 :goto_1
.end method

.method public final b(I)Lcom/b/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ap;

    return-object p0
.end method

.method public final c(I)Lcom/b/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/aj;

    return-object p0
.end method

.method public final d(I)Lcom/b/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/ap;

    return-object p0
.end method

.method public final d_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3082
    iget v0, p0, Lcom/b/a/r;->i:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(I)Lcom/b/a/r;
    .locals 1
    .parameter

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/r;

    return-object p0
.end method

.method public final f(I)Lcom/b/a/w;
    .locals 1
    .parameter

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/w;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2679
    invoke-static {}, Lcom/b/a/p;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lcom/b/a/x;
    .locals 1
    .parameter

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/x;

    return-object p0
.end method

.method public final h(I)Lcom/b/a/z;
    .locals 1
    .parameter

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/z;

    return-object p0
.end method

.method public final i(I)Lcom/b/a/t;
    .locals 1
    .parameter

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/t;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3085
    iget-object v1, p0, Lcom/b/a/r;->k:Ljava/lang/Object;

    .line 3086
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3087
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 3095
    :goto_0
    return-object v1

    .line 3089
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 3091
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 3092
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3093
    iput-object v2, p0, Lcom/b/a/r;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 3095
    goto :goto_0
.end method

.method public final j(I)Lcom/b/a/v;
    .locals 1
    .parameter

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/v;

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    .prologue
    .line 3114
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/b/a/r;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    .prologue
    .line 3135
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .prologue
    .line 3139
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/b/a/r;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 3156
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 3160
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/b/a/r;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s()Ljava/util/List;
    .locals 1

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    return-object v0
.end method

.method public final u()I
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/b/a/r;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v()Ljava/util/List;
    .locals 1

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    return-object v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/b/a/r;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 2

    .prologue
    .line 3219
    iget v0, p0, Lcom/b/a/r;->i:I

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

.method public final z()Lcom/b/a/bg;
    .locals 1

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/b/a/r;->q:Lcom/b/a/bg;

    return-object v0
.end method
