.class public final Lcom/keniu/security/sync/d/d/a/du;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/dw;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x6

.field public static final f:I = 0x7

.field public static final g:I = 0x8

.field public static final h:I = 0x9

.field public static final i:I = 0xa

.field private static final k:Lcom/keniu/security/sync/d/d/a/du;

.field private static final x:J


# instance fields
.field private l:I

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:J

.field private q:I

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:I

.field private u:I

.field private v:B

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 14353
    new-instance v0, Lcom/keniu/security/sync/d/d/a/du;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/du;-><init>()V

    .line 14354
    sput-object v0, Lcom/keniu/security/sync/d/d/a/du;->k:Lcom/keniu/security/sync/d/d/a/du;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/du;->p:J

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/du;->q:I

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/du;->t:I

    iput v3, v0, Lcom/keniu/security/sync/d/d/a/du;->u:I

    .line 14355
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 13387
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 13620
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    .line 13682
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/du;->w:I

    .line 13387
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/dv;)V
    .locals 1
    .parameter

    .prologue
    .line 13380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/du;-><init>(Lcom/keniu/security/sync/d/d/a/dv;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/dv;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 13385
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 13620
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    .line 13682
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/du;->w:I

    .line 13386
    return-void
.end method

.method public static J()Lcom/keniu/security/sync/d/d/a/dv;
    .locals 1

    .prologue
    .line 13803
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic K()Z
    .locals 1

    .prologue
    .line 13380
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/du;->j:Z

    return v0
.end method

.method private static L()Lcom/keniu/security/sync/d/d/a/du;
    .locals 1

    .prologue
    .line 13395
    sget-object v0, Lcom/keniu/security/sync/d/d/a/du;->k:Lcom/keniu/security/sync/d/d/a/du;

    return-object v0
.end method

.method private M()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 13430
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    .line 13431
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13432
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 13434
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    .line 13437
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private N()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 13462
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    .line 13463
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13464
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 13466
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    .line 13469
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private O()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 13494
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    .line 13495
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13496
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 13498
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    .line 13501
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private P()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 13546
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    .line 13547
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13548
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 13550
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    .line 13553
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private Q()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 13578
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    .line 13579
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13580
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 13582
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    .line 13585
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private R()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13610
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    .line 13611
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    .line 13612
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    .line 13613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/du;->p:J

    .line 13614
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/du;->q:I

    .line 13615
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    .line 13616
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    .line 13617
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/du;->t:I

    .line 13618
    iput v2, p0, Lcom/keniu/security/sync/d/d/a/du;->u:I

    .line 13619
    return-void
.end method

.method private static S()Lcom/keniu/security/sync/d/d/a/dv;
    .locals 1

    .prologue
    .line 13804
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method private T()Lcom/keniu/security/sync/d/d/a/dv;
    .locals 1

    .prologue
    .line 13808
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/du;)Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/du;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/du;->q:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/du;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/du;->p:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter

    .prologue
    .line 13739
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13745
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter

    .prologue
    .line 13793
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13799
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dv;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter

    .prologue
    .line 13761
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13767
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dv;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter

    .prologue
    .line 13750
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13756
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dv;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/du;)Lcom/keniu/security/sync/d/d/a/dv;
    .locals 1
    .parameter

    .prologue
    .line 13806
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/du;)Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/du;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/du;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/du;->t:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 2
    .parameter

    .prologue
    .line 13772
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    .line 13773
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13774
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    .line 13776
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/du;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 13783
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    .line 13784
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/dv;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13785
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/dv;->a(Lcom/keniu/security/sync/d/d/a/dv;)Lcom/keniu/security/sync/d/d/a/du;

    move-result-object v0

    .line 13787
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/dv;
    .locals 1
    .parameter

    .prologue
    .line 13813
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/dv;-><init>(Lcom/b/a/dp;)V

    .line 13814
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/du;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/du;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/du;->u:I

    return p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/du;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/du;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    return p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/du;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/keniu/security/sync/d/d/a/du;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13380
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/du;
    .locals 1

    .prologue
    .line 13391
    sget-object v0, Lcom/keniu/security/sync/d/d/a/du;->k:Lcom/keniu/security/sync/d/d/a/du;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 13400
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->P()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 13606
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->u:I

    return v0
.end method

.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13733
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13380
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->T()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 13380
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13380
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->T()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 13380
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/dv;->D()Lcom/keniu/security/sync/d/d/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 13380
    sget-object v0, Lcom/keniu/security/sync/d/d/a/du;->k:Lcom/keniu/security/sync/d/d/a/du;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 13380
    sget-object v0, Lcom/keniu/security/sync/d/d/a/du;->k:Lcom/keniu/security/sync/d/d/a/du;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 13380
    new-instance v0, Lcom/keniu/security/sync/d/d/a/dv;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/dv;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 13651
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->b()I

    .line 13652
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13653
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->M()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 13655
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 13656
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->N()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 13658
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 13659
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->O()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 13661
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 13662
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/du;->p:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 13664
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 13665
    const/4 v0, 0x6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->q:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 13667
    :cond_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 13668
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->P()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 13670
    :cond_5
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 13671
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->Q()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 13673
    :cond_6
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 13674
    const/16 v0, 0x9

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->t:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 13676
    :cond_7
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 13677
    const/16 v0, 0xa

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 13679
    :cond_8
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 13680
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13622
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    .line 13623
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 13646
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 13623
    goto :goto_0

    .line 13625
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13626
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    move v0, v2

    .line 13627
    goto :goto_0

    .line 13629
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13630
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    move v0, v2

    .line 13631
    goto :goto_0

    .line 13633
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13634
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    move v0, v2

    .line 13635
    goto :goto_0

    .line 13637
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13638
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    move v0, v2

    .line 13639
    goto :goto_0

    .line 13641
    :cond_5
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->r()Z

    move-result v0

    if-nez v0, :cond_6

    .line 13642
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    move v0, v2

    .line 13643
    goto :goto_0

    .line 13645
    :cond_6
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/du;->v:B

    move v0, v3

    .line 13646
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13684
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->w:I

    .line 13685
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 13726
    :goto_0
    return v0

    .line 13687
    :cond_0
    const/4 v0, 0x0

    .line 13688
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 13689
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->M()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 13692
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 13693
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->N()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13696
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 13697
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->O()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13700
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 13701
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/du;->p:J

    invoke-static {v4, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13704
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 13705
    const/4 v1, 0x6

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/du;->q:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13708
    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 13709
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->P()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13712
    :cond_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 13713
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/du;->Q()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13716
    :cond_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 13717
    const/16 v1, 0x9

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/du;->t:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13720
    :cond_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 13721
    const/16 v1, 0xa

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/du;->u:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13724
    :cond_9
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/du;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 13725
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/du;->w:I

    goto/16 :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 13405
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->Q()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 13413
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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
    .locals 3

    .prologue
    .line 13416
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    .line 13417
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13418
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13426
    :goto_0
    return-object v1

    .line 13420
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 13422
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 13423
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13424
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/du;->m:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13426
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 13445
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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
    .locals 3

    .prologue
    .line 13448
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    .line 13449
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13450
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13458
    :goto_0
    return-object v1

    .line 13452
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 13454
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 13455
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13456
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/du;->n:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13458
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 13477
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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
    .locals 3

    .prologue
    .line 13480
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    .line 13481
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13482
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13490
    :goto_0
    return-object v1

    .line 13484
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 13486
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 13487
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13488
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/du;->o:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13490
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 13509
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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

.method public final q()J
    .locals 2

    .prologue
    .line 13512
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/du;->p:J

    return-wide v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 13519
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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

.method public final s()I
    .locals 1

    .prologue
    .line 13522
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->q:I

    return v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 13529
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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

.method public final u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13532
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    .line 13533
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13534
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13542
    :goto_0
    return-object v1

    .line 13536
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 13538
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 13539
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13540
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/du;->r:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13542
    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 13561
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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

.method public final w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 13564
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    .line 13565
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 13566
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 13574
    :goto_0
    return-object v1

    .line 13568
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 13570
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 13571
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13572
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/du;->s:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 13574
    goto :goto_0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 13593
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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

.method public final y()I
    .locals 1

    .prologue
    .line 13596
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->t:I

    return v0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 13603
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/du;->l:I

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
