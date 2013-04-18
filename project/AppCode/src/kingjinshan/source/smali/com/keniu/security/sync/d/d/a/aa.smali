.class public final Lcom/keniu/security/sync/d/d/a/aa;
.super Lcom/b/a/dk;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ac;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field private static final e:Lcom/keniu/security/sync/d/d/a/aa;

.field private static final n:J


# instance fields
.field private f:I

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:I

.field private k:I

.field private l:B

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2551
    new-instance v0, Lcom/keniu/security/sync/d/d/a/aa;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/aa;-><init>()V

    .line 2552
    sput-object v0, Lcom/keniu/security/sync/d/d/a/aa;->e:Lcom/keniu/security/sync/d/d/a/aa;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/aa;->i:I

    iput v2, v0, Lcom/keniu/security/sync/d/d/a/aa;->k:I

    .line 2553
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1969
    invoke-direct {p0}, Lcom/b/a/dk;-><init>()V

    .line 2081
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    .line 2124
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->m:I

    .line 1969
    return-void
.end method

.method synthetic constructor <init>(Lcom/keniu/security/sync/d/d/a/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 1962
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/aa;-><init>(Lcom/keniu/security/sync/d/d/a/ab;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/sync/d/d/a/ab;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1967
    invoke-direct {p0, p1}, Lcom/b/a/dk;-><init>(Lcom/b/a/dn;)V

    .line 2081
    iput-byte v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    .line 2124
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->m:I

    .line 1968
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/aa;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1962
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/aa;->i:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 2161
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2167
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 2215
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2221
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ab;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 2183
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2189
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ab;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter

    .prologue
    .line 2172
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2178
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ab;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-static {p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/aa;)Lcom/keniu/security/sync/d/d/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 2228
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/aa;)Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/aa;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/aa;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1962
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/aa;->k:I

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 2
    .parameter

    .prologue
    .line 2194
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    .line 2195
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    .line 2198
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/aa;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2205
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    .line 2206
    invoke-virtual {v0, p0, p1}, Lcom/keniu/security/sync/d/d/a/ab;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2207
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/ab;)Lcom/keniu/security/sync/d/d/a/aa;

    move-result-object v0

    .line 2209
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/keniu/security/sync/d/d/a/ab;
    .locals 1
    .parameter

    .prologue
    .line 2235
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;-><init>(Lcom/b/a/dp;)V

    .line 2236
    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/sync/d/d/a/aa;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/sync/d/d/a/aa;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1962
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    return p1
.end method

.method public static h()Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1

    .prologue
    .line 1973
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aa;->e:Lcom/keniu/security/sync/d/d/a/aa;

    return-object v0
.end method

.method public static final i()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1982
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->j()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static r()Lcom/keniu/security/sync/d/d/a/ab;
    .locals 1

    .prologue
    .line 2225
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s()Z
    .locals 1

    .prologue
    .line 1962
    sget-boolean v0, Lcom/keniu/security/sync/d/d/a/aa;->j:Z

    return v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/aa;
    .locals 1

    .prologue
    .line 1977
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aa;->e:Lcom/keniu/security/sync/d/d/a/aa;

    return-object v0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    .line 2013
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2014
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 2016
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    .line 2019
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    .line 2045
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2046
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 2048
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    .line 2051
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2076
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    .line 2077
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    .line 2078
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->i:I

    .line 2079
    iput v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->k:I

    .line 2080
    return-void
.end method

.method private static x()Lcom/keniu/security/sync/d/d/a/ab;
    .locals 1

    .prologue
    .line 2226
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ab;
    .locals 1

    .prologue
    .line 2230
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ab;->a(Lcom/keniu/security/sync/d/d/a/aa;)Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2155
    invoke-super {p0}, Lcom/b/a/dk;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1962
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aa;->y()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1962
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1962
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aa;->y()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1962
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ab;->r()Lcom/keniu/security/sync/d/d/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1962
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aa;->e:Lcom/keniu/security/sync/d/d/a/aa;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1962
    sget-object v0, Lcom/keniu/security/sync/d/d/a/aa;->e:Lcom/keniu/security/sync/d/d/a/aa;

    return-object v0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1962
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ab;

    invoke-direct {v0, p1}, Lcom/keniu/security/sync/d/d/a/ab;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2108
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->b()I

    .line 2109
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2110
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aa;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2112
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2113
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aa;->v()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 2115
    :cond_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2116
    const/4 v0, 0x3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/b/a/n;->a(II)V

    .line 2118
    :cond_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2119
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->k:I

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(II)V

    .line 2121
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 2122
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2083
    iget-byte v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    .line 2084
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2103
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 2084
    goto :goto_0

    .line 2086
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2087
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    move v0, v2

    .line 2088
    goto :goto_0

    .line 2090
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2091
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    move v0, v2

    .line 2092
    goto :goto_0

    .line 2094
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2095
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    move v0, v2

    .line 2096
    goto :goto_0

    .line 2098
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2099
    iput-byte v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    move v0, v2

    .line 2100
    goto :goto_0

    .line 2102
    :cond_5
    iput-byte v3, p0, Lcom/keniu/security/sync/d/d/a/aa;->l:B

    move v0, v3

    .line 2103
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2126
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->m:I

    .line 2127
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2148
    :goto_0
    return v0

    .line 2129
    :cond_0
    const/4 v0, 0x0

    .line 2130
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2131
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aa;->u()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2134
    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 2135
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/aa;->v()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2138
    :cond_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 2139
    const/4 v1, 0x3

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->i:I

    invoke-static {v1, v2}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2142
    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 2143
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->k:I

    invoke-static {v4, v1}, Lcom/b/a/n;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2146
    :cond_4
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/aa;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 2147
    iput v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->m:I

    goto :goto_0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1987
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->k()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1995
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

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
    .line 1998
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    .line 1999
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2000
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2008
    :goto_0
    return-object v1

    .line 2002
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 2004
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 2005
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2006
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->g:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2008
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 2027
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

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
    .line 2030
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    .line 2031
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2032
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 2040
    :goto_0
    return-object v1

    .line 2034
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 2036
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 2037
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    iput-object v2, p0, Lcom/keniu/security/sync/d/d/a/aa;->h:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 2040
    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 2059
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

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

.method public final o()I
    .locals 1

    .prologue
    .line 2062
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->i:I

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 2069
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->f:I

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
    .line 2072
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/aa;->k:I

    return v0
.end method
