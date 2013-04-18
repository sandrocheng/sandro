.class public final Lcom/keniu/security/sync/d/d/a/jw;
.super Lcom/b/a/dk;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/jy;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/jw;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2476
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jw;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/jw;-><init>()V

    .line 2477
    sput-object v0, Lcom/keniu/security/sync/d/d/a/jw;->e:Lcom/keniu/security/sync/d/d/a/jw;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    .line 2478
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1844
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2000
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->l:B

    .line 2031
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->m:I

    .line 1844
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/jx;)V
    .locals 1
    .parameter

    .prologue
    .line 1837
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/jw;-><init>(Lcom/keniu/security/sync/d/d/a/jx;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/jx;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1842
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2000
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->l:B

    .line 2031
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->m:I

    .line 1843
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/jx;
    .locals 1

    .prologue
    .line 2137
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jw;)Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jw;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1837
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter

    .prologue
    .line 2068
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2074
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter

    .prologue
    .line 2122
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2128
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jx;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter

    .prologue
    .line 2090
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2096
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jx;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter

    .prologue
    .line 2079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2085
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jx;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/jw;)Lcom/keniu/security/sync/d/d/a/jx;
    .locals 1
    .parameter

    .prologue
    .line 2135
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jw;)Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/jw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    return-object p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 2
    .parameter

    .prologue
    .line 2101
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    .line 2102
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2103
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    .line 2105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/jw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2112
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    .line 2113
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/jx;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2114
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/jx;->a(Lcom/keniu/security/sync/d/d/a/jx;)Lcom/keniu/security/sync/d/d/a/jw;

    move-result-object v0

    .line 2116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/jx;
    .locals 1
    .parameter

    .prologue
    .line 2142
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/jx;-><init>(Lcom/b/a/dp;)V

    .line 2143
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/jw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/jw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/sync/d/d/a/jw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1

    .prologue
    .line 1848
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jw;->e:Lcom/keniu/security/sync/d/d/a/jw;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1857
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 1837
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/jw;->j:Z

    return v0
.end method

.method private static s()Lcom/keniu/security/sync/d/d/a/jw;
    .locals 1

    .prologue
    .line 1852
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jw;->e:Lcom/keniu/security/sync/d/d/a/jw;

    return-object v0
.end method

.method private t()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    .line 1888
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1889
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1891
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    .line 1894
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    .line 1920
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1921
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1923
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    .line 1926
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    .line 1952
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1953
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1955
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    .line 1958
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    .line 1984
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1985
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1987
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    .line 1990
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private x()V
    .locals 1

    .prologue
    .line 1995
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    .line 1996
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    .line 1997
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    .line 1998
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    .line 1999
    return-void
.end method

.method private static y()Lcom/keniu/security/sync/d/d/a/jx;
    .locals 1

    .prologue
    .line 2132
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method private static z()Lcom/keniu/security/sync/d/d/a/jx;
    .locals 1

    .prologue
    .line 2133
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2062
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->A()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1837
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->A()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1837
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jx;->i()Lcom/keniu/security/sync/d/d/a/jx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1837
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jw;->e:Lcom/keniu/security/sync/d/d/a/jw;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1837
    sget-object v0, Lcom/keniu/security/sync/d/d/a/jw;->e:Lcom/keniu/security/sync/d/d/a/jw;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1837
    new-instance v0, Lcom/keniu/security/sync/d/d/a/jx;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/jx;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2015
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jw;->b()I

    .line 2016
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2017
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->t()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2019
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2020
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2022
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2023
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->v()Lcom/b/a/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2025
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2026
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->w()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2028
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jw;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 2029
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2002
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->l:B

    .line 2003
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    move v0, v2

    .line 2010
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 2003
    goto :goto_0

    .line 2005
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jw;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2006
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/jw;->l:B

    move v0, v3

    .line 2007
    goto :goto_0

    .line 2009
    :cond_2
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/jw;->l:B

    move v0, v2

    .line 2010
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2033
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->m:I

    .line 2034
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2055
    :goto_0
    return v0

    .line 2036
    :cond_0
    const/4 v0, 0x0

    .line 2037
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2038
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->t()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2041
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2042
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->u()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2045
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2046
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->v()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2049
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2050
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/jw;->w()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2053
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/jw;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2054
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1862
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1870
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

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
    .line 1873
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    .line 1874
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1875
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1883
    :goto_0
    return-object v1

    .line 1877
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1879
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1880
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1881
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jw;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1883
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 1902
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

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
    .line 1905
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    .line 1906
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1907
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1915
    :goto_0
    return-object v1

    .line 1909
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1911
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1912
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1913
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jw;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1915
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 1934
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

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
    .line 1937
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    .line 1938
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1939
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1947
    :goto_0
    return-object v1

    .line 1941
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1943
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1944
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1945
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jw;->i:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1947
    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 1966
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/jw;->f:I

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
    .line 1969
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    .line 1970
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1971
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 1979
    :goto_0
    return-object v1

    .line 1973
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 1975
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 1976
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1977
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/jw;->k:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1979
    goto :goto_0
.end method
