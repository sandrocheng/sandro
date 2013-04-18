.class public final Lcom/keniu/security/sync/d/d/a/gi;
.super Lcom/b/a/dn;
.source "Common.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/gm;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2070
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 2306
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2378
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2414
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2471
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2071
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->J()Z

    .line 2072
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 2056
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/gi;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2075
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 2306
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2342
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2378
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2414
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2471
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2076
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->J()Z

    .line 2077
    return-void
.end method

.method private static D()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2061
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static E()V
    .locals 0

    .prologue
    .line 2079
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->J()Z

    .line 2081
    return-void
.end method

.method private static N()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2083
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gi;-><init>()V

    return-object v0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 2087
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 2088
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2089
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2090
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2091
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2092
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2093
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2094
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2095
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2096
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    .line 2097
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2098
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2099
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2100
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    .line 2101
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2102
    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    .line 2103
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2104
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    .line 2105
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2106
    return-object p0
.end method

.method private V()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 2

    .prologue
    .line 2110
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gi;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->Z()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gh;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method private static W()Lcom/keniu/security/sync/d/d/a/gh;
    .locals 1

    .prologue
    .line 2119
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method private X()Lcom/keniu/security/sync/d/d/a/gh;
    .locals 2

    .prologue
    .line 2123
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->Z()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    .line 2124
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2125
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 2127
    :cond_0
    return-object v0
.end method

.method private Y()Lcom/keniu/security/sync/d/d/a/gh;
    .locals 2

    .prologue
    .line 2132
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->Z()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    .line 2133
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2134
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 2137
    :cond_0
    return-object v0
.end method

.method private Z()Lcom/keniu/security/sync/d/d/a/gh;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2141
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gh;

    invoke-direct {v0, p0}, Lcom/keniu/security/sync/d/d/a/gh;-><init>(Lcom/keniu/security/sync/d/d/a/gi;)V

    .line 2142
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2143
    const/4 v2, 0x0

    .line 2144
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 2147
    :cond_0
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/gh;->a(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2149
    or-int/lit8 v2, v2, 0x2

    .line 2151
    :cond_1
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/gh;->b(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2153
    or-int/lit8 v2, v2, 0x4

    .line 2155
    :cond_2
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/gh;->c(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2157
    or-int/lit8 v2, v2, 0x8

    .line 2159
    :cond_3
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/gh;->d(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2161
    or-int/lit8 v2, v2, 0x10

    .line 2163
    :cond_4
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    invoke-static {v0, v3, v4}, Lcom/keniu/security/sync/d/d/a/gh;->a(Lcom/keniu/security/sync/d/d/a/gh;J)J

    .line 2164
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2165
    or-int/lit8 v2, v2, 0x20

    .line 2167
    :cond_5
    iget-object v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/keniu/security/sync/d/d/a/gh;->e(Lcom/keniu/security/sync/d/d/a/gh;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2169
    or-int/lit8 v2, v2, 0x40

    .line 2171
    :cond_6
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    invoke-static {v0, v3, v4}, Lcom/keniu/security/sync/d/d/a/gh;->b(Lcom/keniu/security/sync/d/d/a/gh;J)J

    .line 2172
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2173
    or-int/lit16 v2, v2, 0x80

    .line 2175
    :cond_7
    iget-wide v3, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    invoke-static {v0, v3, v4}, Lcom/keniu/security/sync/d/d/a/gh;->c(Lcom/keniu/security/sync/d/d/a/gh;J)J

    .line 2176
    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_8

    .line 2177
    or-int/lit16 v1, v2, 0x100

    .line 2179
    :goto_0
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    invoke-static {v0, v2}, Lcom/keniu/security/sync/d/d/a/gh;->a(Lcom/keniu/security/sync/d/d/a/gh;I)I

    .line 2180
    invoke-static {v0, v1}, Lcom/keniu/security/sync/d/d/a/gh;->b(Lcom/keniu/security/sync/d/d/a/gh;I)I

    .line 2181
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->ab_()V

    .line 2182
    return-object v0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/gi;)Lcom/keniu/security/sync/d/d/a/gh;
    .locals 2
    .parameter

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->Z()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gi;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2557
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2558
    iput p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    .line 2559
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2560
    return-object p0
.end method

.method private a(J)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2458
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2459
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    .line 2460
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2461
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2321
    if-nez p1, :cond_0

    .line 2322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2324
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2325
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2326
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2327
    return-object p0
.end method

.method private aa()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2330
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2331
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2332
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2333
    return-object p0
.end method

.method private ab()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2366
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2367
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2368
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2369
    return-object p0
.end method

.method private ac()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2402
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2403
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2404
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2405
    return-object p0
.end method

.method private ad()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2438
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2439
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2440
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2441
    return-object p0
.end method

.method private ae()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 2

    .prologue
    .line 2464
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2465
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    .line 2466
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2467
    return-object p0
.end method

.method private af()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2495
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2496
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gh;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2497
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2498
    return-object p0
.end method

.method private ag()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 2

    .prologue
    .line 2521
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2522
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    .line 2523
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2524
    return-object p0
.end method

.method private ah()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 2

    .prologue
    .line 2542
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    .line 2544
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2545
    return-object p0
.end method

.method private ai()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2563
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2564
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    .line 2565
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2566
    return-object p0
.end method

.method private b(J)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2515
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2516
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    .line 2517
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2518
    return-object p0
.end method

.method private b(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2357
    if-nez p1, :cond_0

    .line 2358
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2360
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2361
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2362
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2363
    return-object p0
.end method

.method private c(J)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2536
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2537
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    .line 2538
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2539
    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2393
    if-nez p1, :cond_0

    .line 2394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2396
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2397
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2398
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2399
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2186
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/gh;

    if-eqz v0, :cond_0

    .line 2187
    check-cast p1, Lcom/keniu/security/sync/d/d/a/gh;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/keniu/security/sync/d/d/a/gh;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    .line 2190
    :goto_0
    return-object v0

    .line 2189
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 2190
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2429
    if-nez p1, :cond_0

    .line 2430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2432
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2433
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2434
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2435
    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1
    .parameter

    .prologue
    .line 2486
    if-nez p1, :cond_0

    .line 2487
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2489
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2490
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2491
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2492
    return-object p0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 2336
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2337
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2338
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2339
    return-void
.end method

.method private f(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 2372
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2373
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2374
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2375
    return-void
.end method

.method private g(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 2408
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2409
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2410
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2411
    return-void
.end method

.method private h(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 2444
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2445
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2446
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2447
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/gi;
    .locals 1

    .prologue
    .line 2056
    new-instance v0, Lcom/keniu/security/sync/d/d/a/gi;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/gi;-><init>()V

    return-object v0
.end method

.method private i(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 2501
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2502
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2503
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2504
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    .prologue
    .line 2554
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    return v0
.end method

.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2066
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gc;->g()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2115
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->U()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->V()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2056
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2056
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->Z()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->X()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->Z()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->X()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 2056
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2056
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/gh;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 3
    .parameter

    .prologue
    .line 2195
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gh;->h()Lcom/keniu/security/sync/d/d/a/gh;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2224
    :goto_0
    return-object v0

    .line 2196
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2197
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2199
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2200
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2202
    :cond_4
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2203
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2205
    :cond_6
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2206
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2208
    :cond_8
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2209
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->s()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2211
    :cond_9
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2212
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->u()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_a
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2214
    :cond_b
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2215
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->w()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2217
    :cond_c
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->x()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2218
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->y()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2220
    :cond_d
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->z()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2221
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->A()I

    move-result v0

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    .line 2223
    :cond_e
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gh;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gi;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 2224
    goto/16 :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2228
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->V()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2056
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->U()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2056
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/gi;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2056
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->V()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->V()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2056
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/gi;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->V()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/gi;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 2239
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 2240
    sparse-switch v1, :sswitch_data_0

    .line 2246
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/gi;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2248
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gi;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2249
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    move-object v0, p0

    .line 2250
    :goto_1
    return-object v0

    .line 2242
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/gi;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2243
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gi;->af_()V

    move-object v0, p0

    .line 2244
    goto :goto_1

    .line 2255
    :sswitch_1
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2256
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    goto :goto_0

    .line 2260
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2261
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    goto :goto_0

    .line 2265
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2266
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    goto :goto_0

    .line 2270
    :sswitch_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2271
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    goto :goto_0

    .line 2275
    :sswitch_5
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2276
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    goto :goto_0

    .line 2280
    :sswitch_6
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2281
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    goto :goto_0

    .line 2285
    :sswitch_7
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2286
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    goto :goto_0

    .line 2290
    :sswitch_8
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2291
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    goto/16 :goto_0

    .line 2295
    :sswitch_9
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

    .line 2296
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/gi;->j:I

    goto/16 :goto_0

    .line 2240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->U()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->V()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2056
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/gi;->U()Lcom/keniu/security/sync/d/d/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2308
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .line 2311
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2312
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2313
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2314
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->b:Ljava/lang/Object;

    .line 2317
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 2344
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .line 2347
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2348
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2349
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2350
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->c:Ljava/lang/Object;

    .line 2353
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 2380
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .line 2383
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2384
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2385
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2386
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->d:Ljava/lang/Object;

    .line 2389
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 2416
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .locals 2

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2420
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2421
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2422
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->e:Ljava/lang/Object;

    .line 2425
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 2452
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .line 2455
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->f:J

    return-wide v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 2473
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .locals 2

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2477
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2478
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2479
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->g:Ljava/lang/Object;

    .line 2482
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 2509
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .line 2512
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->h:J

    return-wide v0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 2530
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
    .line 2533
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->i:J

    return-wide v0
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 2551
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/gi;->a:I

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
