.class public final Lcom/keniu/security/sync/d/d/a/ie;
.super Lcom/b/a/dk;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ig;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final d:Lcom/keniu/security/sync/d/d/a/ie;

.field private static final l:J


# instance fields
.field private e:I

.field private f:Lcom/keniu/security/sync/d/d/a/ge;

.field private g:Lcom/keniu/security/sync/d/d/a/gn;

.field private h:J

.field private i:B

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2204
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ie;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ie;-><init>()V

    .line 2205
    sput-object v0, Lcom/keniu/security/sync/d/d/a/ie;->d:Lcom/keniu/security/sync/d/d/a/ie;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/keniu/security/sync/d/d/a/ie;->h:J

    .line 2206
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1583
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 1646
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    .line 1684
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->k:I

    .line 1583
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/if;)V
    .locals 1
    .parameter

    .prologue
    .line 1576
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ie;-><init>(Lcom/keniu/security/sync/d/d/a/if;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/if;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1581
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 1646
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    .line 1684
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->k:I

    .line 1582
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ie;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1576
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ie;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1576
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/ie;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ie;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ie;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter

    .prologue
    .line 1717
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1723
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter

    .prologue
    .line 1771
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1777
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter

    .prologue
    .line 1739
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1745
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter

    .prologue
    .line 1728
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1734
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/ie;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 1
    .parameter

    .prologue
    .line 1784
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/ie;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 2
    .parameter

    .prologue
    .line 1750
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    .line 1751
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1752
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    .line 1754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1761
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    .line 1762
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1763
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    .line 1765
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 1
    .parameter

    .prologue
    .line 1791
    new-instance v0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;-><init>(Lcom/b/a/dp;)V

    .line 1792
    return-object v0
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1

    .prologue
    .line 1587
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ie;->d:Lcom/keniu/security/sync/d/d/a/ie;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1596
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 1576
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/ie;->j:Z

    return v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1

    .prologue
    .line 1591
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ie;->d:Lcom/keniu/security/sync/d/d/a/ie;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1642
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1643
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1644
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->h:J

    .line 1645
    return-void
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 1781
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method private static v()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 1782
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 1786
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/ie;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1711
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ie;->w()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1576
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ie;->w()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1576
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/if;->i()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1576
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ie;->d:Lcom/keniu/security/sync/d/d/a/ie;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1576
    sget-object v0, Lcom/keniu/security/sync/d/d/a/ie;->d:Lcom/keniu/security/sync/d/d/a/ie;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1576
    new-instance v0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/if;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1671
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ie;->b()I

    .line 1672
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 1675
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 1678
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1679
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/keniu/security/sync/d/d/a/ie;->h:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/b/a/n;->b(IJ)V

    .line 1681
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ie;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 1682
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1648
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    .line 1649
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1666
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1649
    goto :goto_0

    .line 1651
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ie;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1652
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    move v0, v2

    .line 1653
    goto :goto_0

    .line 1655
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1656
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    move v0, v2

    .line 1657
    goto :goto_0

    .line 1659
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ie;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1660
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1661
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    move v0, v2

    .line 1662
    goto :goto_0

    .line 1665
    :cond_4
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/ie;->i:B

    move v0, v3

    .line 1666
    goto :goto_0
.end method

.method public final b()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1686
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->k:I

    .line 1687
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1704
    :goto_0
    return v0

    .line 1689
    :cond_0
    const/4 v0, 0x0

    .line 1690
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v2, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1694
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 1695
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v3, v1}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1698
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1699
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/ie;->h:J

    invoke-static {v1, v2, v3}, Lcom/b/a/n;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1702
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ie;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1703
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->k:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1601
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1609
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/keniu/security/sync/d/d/a/ge;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->f:Lcom/keniu/security/sync/d/d/a/ge;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1622
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gn;
    .locals 1

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->g:Lcom/keniu/security/sync/d/d/a/gn;

    return-object v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 1635
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->e:I

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

.method public final q()J
    .locals 2

    .prologue
    .line 1638
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/ie;->h:J

    return-wide v0
.end method
