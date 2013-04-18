.class public final Lcom/keniu/security/sync/d/d/a/gh;
.super Lcom/b/a/dk;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gm;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field private static final k:Lcom/keniu/security/sync/d/d/a/gh;

.field private static final x:J


# instance fields
.field private l:I

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/Object;

.field private q:J

.field private r:Ljava/lang/Object;

.field private s:J

.field private t:J

.field private u:I

.field private v:B

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 2573
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gh;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gh;-><init>()V

    .line 2574
    sput-object v0, Lcom/keniu/security/sync/d/d/a/gh;->k:Lcom/keniu/security/sync/d/d/a/gh;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gh;->q:J

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gh;->s:J

    iput-wide v2, v0, Lcom/keniu/security/sync/d/d/a/gh;->t:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/keniu/security/sync/d/d/a/gh;->u:I

    .line 2575
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1647
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 1880
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->v:B

    .line 1922
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->w:I

    .line 1647
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/gi;)V
    .locals 1
    .parameter

    .prologue
    .line 1640
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/gh;-><init>(Lcom/keniu/security/sync/d/d/a/gi;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/gi;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1645
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 1880
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->v:B

    .line 1922
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->w:I

    .line 1646
    return-void
.end method

.method static synthetic J()Z
    .locals 1

    .prologue
    .line 1640
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/gh;->j:Z

    return v0
.end method

.method private static K()Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1

    .prologue
    .line 1655
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gh;->k:Lcom/keniu/security/sync/d/d/a/gh;

    return-object v0
.end method

.method private L()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    .line 1691
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1692
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1694
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    .line 1697
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private M()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    .line 1723
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1724
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1726
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    .line 1729
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private N()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    .line 1755
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1756
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1758
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    .line 1761
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private O()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    .line 1787
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1788
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1790
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    .line 1793
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private P()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    .line 1829
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1830
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1832
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    .line 1835
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private Q()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 1870
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    .line 1871
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    .line 1872
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    .line 1873
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    .line 1874
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->q:J

    .line 1875
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    .line 1876
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->s:J

    .line 1877
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->t:J

    .line 1878
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->u:I

    .line 1879
    return-void
.end method

.method private static R()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2043
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private static S()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2044
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private T()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2048
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gh;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->u:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gh;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->q:J

    return-wide p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter

    .prologue
    .line 1979
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1985
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter

    .prologue
    .line 2033
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2039
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter

    .prologue
    .line 2001
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2007
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter

    .prologue
    .line 1990
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1996
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/gh;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2046
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gh;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gh;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gh;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->s:J

    return-wide p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 2
    .parameter

    .prologue
    .line 2012
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    .line 2013
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2014
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    .line 2016
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2023
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    .line 2024
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2025
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    .line 2027
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2053
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/gi;-><init>(Lcom/b/a/dp;)V

    .line 2054
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/gh;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->t:J

    return-wide p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1640
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1

    .prologue
    .line 1651
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gh;->k:Lcom/keniu/security/sync/d/d/a/gh;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1660
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 1866
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->u:I

    return v0
.end method

.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1973
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->T()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1640
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->T()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1640
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gi;->i()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1640
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gh;->k:Lcom/keniu/security/sync/d/d/a/gh;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1640
    sget-object v0, Lcom/keniu/security/sync/d/d/a/gh;->k:Lcom/keniu/security/sync/d/d/a/gh;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1640
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/gi;-><init>(Lcom/b/a/dp;)V

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

    .line 1891
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gh;->b()I

    .line 1892
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1893
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->L()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1895
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1896
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->M()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1898
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 1899
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->N()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1901
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 1902
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->O()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1904
    :cond_3
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 1905
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->q:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 1907
    :cond_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 1908
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->P()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 1910
    :cond_5
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 1911
    const/4 v0, 0x7

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->s:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 1913
    :cond_6
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 1914
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->t:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/b/a/n;->b(IJ)V

    .line 1916
    :cond_7
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 1917
    const/16 v0, 0x9

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->u:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 1919
    :cond_8
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 1920
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1882
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->v:B

    .line 1883
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 1886
    :goto_0
    return v0

    .line 1883
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1885
    :cond_1
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->v:B

    move v0, v2

    .line 1886
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1924
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->w:I

    .line 1925
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1966
    :goto_0
    return v0

    .line 1927
    :cond_0
    const/4 v0, 0x0

    .line 1928
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1929
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->L()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1932
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1933
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->M()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1936
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 1937
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->N()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1940
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 1941
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->O()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1944
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1945
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->q:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1948
    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 1949
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gh;->P()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1952
    :cond_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 1953
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->s:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1956
    :cond_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 1957
    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->t:J

    invoke-static {v5, v1, v2}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1960
    :cond_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 1961
    const/16 v1, 0x9

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->u:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1964
    :cond_9
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gh;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1965
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->w:I

    goto/16 :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1665
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1673
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1676
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    .line 1677
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1678
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1686
    :goto_0
    return-object v1

    .line 1680
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1682
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1683
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1684
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->m:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1686
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 1705
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1708
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    .line 1709
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1710
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1718
    :goto_0
    return-object v1

    .line 1712
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1714
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1715
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1716
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->n:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1718
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 1737
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1740
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    .line 1741
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1742
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1750
    :goto_0
    return-object v1

    .line 1744
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1746
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1747
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1748
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->o:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1750
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 1769
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1772
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    .line 1773
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1774
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1782
    :goto_0
    return-object v1

    .line 1776
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1778
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1779
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1780
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->p:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1782
    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 1801
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1804
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->q:J

    return-wide v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 1811
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1814
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    .line 1815
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1816
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1824
    :goto_0
    return-object v1

    .line 1818
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1820
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1821
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1822
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/gh;->r:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1824
    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 1843
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1846
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->s:J

    return-wide v0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 1853
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
    .line 1856
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->t:J

    return-wide v0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 1863
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gh;->l:I

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
