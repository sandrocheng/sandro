.class public final Lcom/keniu/security/sync/d/d/a/gj;
.super Lcom/b/a/dk;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gl;


# static fields
.field private static final D:J = 0x0L

.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final k:I = 0xa

.field public static final l:I = 0xb

.field public static final m:I = 0xc

.field private static final n:Lcom/keniu/security/sync/d/d/a/gj;


# instance fields
.field private A:J

.field private B:B

.field private C:I

.field private o:I

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:J

.field private u:Ljava/lang/Object;

.field private v:J

.field private w:J

.field private x:I

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1594
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gj;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gj;-><init>()V

    .line 1595
    sput-object v0, Lcom/keniu/security/sync/d/d/a/gj;->n:Lcom/keniu/security/sync/d/d/a/gj;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gj;->t:J

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gj;->v:J

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gj;->w:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/gj;->x:I

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gj;->y:J

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gj;->z:J

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gj;->A:J

    .line 1596
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 509
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 775
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->B:B

    .line 826
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->C:I

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/gk;)V
    .locals 1
    .parameter

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/gj;-><init>(Lcom/keniu/security/sync/d/d/a/gk;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/gk;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 507
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 775
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->B:B

    .line 826
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->C:I

    .line 508
    return-void
.end method

.method public static P()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1

    .prologue
    .line 959
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Q()Z
    .locals 1

    .prologue
    .line 502
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/gj;->j:Z

    return v0
.end method

.method private static R()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gj;->n:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method private S()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    .line 553
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 554
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 556
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    .line 559
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private T()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    .line 585
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 586
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 588
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    .line 591
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private U()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    .line 617
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 618
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 620
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    .line 623
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private V()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    .line 649
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 650
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 652
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    .line 655
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private W()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    .line 691
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 692
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 694
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    .line 697
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private X()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 762
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    .line 763
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    .line 764
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    .line 766
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->t:J

    .line 767
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    .line 768
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->v:J

    .line 769
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->w:J

    .line 770
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->x:I

    .line 771
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->y:J

    .line 772
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->z:J

    .line 773
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->A:J

    .line 774
    return-void
.end method

.method private static Y()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method private Z()Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1

    .prologue
    .line 964
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->x:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->t:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter

    .prologue
    .line 895
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 901
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter

    .prologue
    .line 949
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 955
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter

    .prologue
    .line 917
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 923
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter

    .prologue
    .line 906
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 912
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1
    .parameter

    .prologue
    .line 962
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gj;)Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->v:J

    return-wide p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 2
    .parameter

    .prologue
    .line 928
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    .line 929
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    .line 932
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 939
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gk;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gk;->a(Lcom/keniu/security/sync/d/d/a/gk;)Lcom/keniu/security/sync/d/d/a/gj;

    move-result-object v0

    .line 943
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/gk;
    .locals 1
    .parameter

    .prologue
    .line 969
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/gk;-><init>(Lcom/b/a/dp;)V

    .line 970
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/gj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->w:J

    return-wide p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/gj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/gj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->y:J

    return-wide p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/gj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/keniu/security/sync/d/d/a/gj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->z:J

    return-wide p1
.end method

.method static synthetic e(Lcom/keniu/security/sync/d/d/a/gj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/keniu/security/sync/d/d/a/gj;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gj;->A:J

    return-wide p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/gj;
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gj;->n:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 522
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->d()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->x:I

    return v0
.end method

.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 889
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->Z()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->Z()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gk;->E()Lcom/keniu/security/sync/d/d/a/gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gj;->n:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gj;->n:Lcom/keniu/security/sync/d/d/a/gj;

    return-object v0
.end method

.method public final N()Z
    .locals 2

    .prologue
    .line 755
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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

.method public final R_()Z
    .locals 2

    .prologue
    .line 735
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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

.method public final S_()J
    .locals 2

    .prologue
    .line 738
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->y:J

    return-wide v0
.end method

.method public final T_()Z
    .locals 2

    .prologue
    .line 745
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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

.method public final U_()J
    .locals 2

    .prologue
    .line 748
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->z:J

    return-wide v0
.end method

.method public final V_()J
    .locals 2

    .prologue
    .line 758
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->A:J

    return-wide v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 502
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gk;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/gk;-><init>(Lcom/b/a/dp;)V

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

    .line 786
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gj;->b()I

    .line 787
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 788
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->S()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 790
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 791
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->T()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 793
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 794
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->U()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 796
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 797
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->V()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 799
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 800
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->t:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 802
    :cond_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 803
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->W()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 805
    :cond_5
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 806
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->v:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 808
    :cond_6
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 809
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->w:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 811
    :cond_7
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 812
    const/16 v0, 0x9

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->x:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 814
    :cond_8
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 815
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->y:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 817
    :cond_9
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 818
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->z:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 820
    :cond_a
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 821
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->A:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 823
    :cond_b
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gj;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 824
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 777
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->B:B

    .line 778
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 781
    :goto_0
    return v0

    .line 778
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 780
    :cond_1
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->B:B

    move v0, v2

    .line 781
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 828
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->C:I

    .line 829
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 882
    :goto_0
    return v0

    .line 831
    :cond_0
    const/4 v0, 0x0

    .line 832
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 833
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->S()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 836
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->T()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 841
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->U()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 845
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->V()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 848
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 849
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->t:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 852
    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 853
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gj;->W()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    :cond_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 857
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->v:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    :cond_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 861
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->w:J

    invoke-static {v5, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 864
    :cond_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 865
    const/16 v1, 0x9

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->x:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 868
    :cond_9
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 869
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->y:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 872
    :cond_a
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 873
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->z:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 876
    :cond_b
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 877
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->A:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 880
    :cond_c
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gj;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 881
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->C:I

    goto/16 :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 527
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->e()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 535
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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
    .line 538
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    .line 539
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 540
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 548
    :goto_0
    return-object v1

    .line 542
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 544
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->p:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 548
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 567
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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
    .line 570
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    .line 571
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 572
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 580
    :goto_0
    return-object v1

    .line 574
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 576
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 578
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->q:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 580
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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
    .line 602
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    .line 603
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 604
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 612
    :goto_0
    return-object v1

    .line 606
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 608
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->r:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 612
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 631
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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

.method public final q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 634
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    .line 635
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 636
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 644
    :goto_0
    return-object v1

    .line 638
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 640
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->s:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 644
    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 663
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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
    .line 666
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->t:J

    return-wide v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 673
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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
    .line 676
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    .line 677
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 678
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 686
    :goto_0
    return-object v1

    .line 680
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 682
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 683
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gj;->u:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 686
    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 705
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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

.method public final w()J
    .locals 2

    .prologue
    .line 708
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->v:J

    return-wide v0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 715
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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

.method public final y()J
    .locals 2

    .prologue
    .line 718
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->w:J

    return-wide v0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gj;->o:I

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
