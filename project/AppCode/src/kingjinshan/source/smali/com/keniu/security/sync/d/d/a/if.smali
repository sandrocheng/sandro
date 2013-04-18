.class public final Lcom/keniu/security/sync/d/d/a/if;
.super Lcom/b/a/dn;
.source "Fudsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/ig;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gn;

.field private e:Lcom/b/a/fp;

.field private f:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1808
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 2000
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2090
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1809
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->s()V

    .line 1810
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 1794
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/if;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1813
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 2000
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2090
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1814
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->s()V

    .line 1815
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2055
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2056
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2060
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2061
    return-object p0

    .line 2058
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 2064
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2065
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2066
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->E()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private E()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2079
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    .line 2084
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2086
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private N()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2145
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2146
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2150
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2151
    return-object p0

    .line 2148
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private U()Lcom/keniu/security/sync/d/d/a/go;
    .locals 1

    .prologue
    .line 2154
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2155
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2156
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->V()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/go;

    return-object p0
.end method

.method private V()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    .line 2174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method private W()Lcom/keniu/security/sync/d/d/a/if;
    .locals 2

    .prologue
    .line 2194
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    .line 2196
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2197
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/if;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 2
    .parameter

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->z()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ie;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/if;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(J)Lcom/keniu/security/sync/d/d/a/if;
    .locals 1
    .parameter

    .prologue
    .line 2188
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2189
    iput-wide p1, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    .line 2190
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2191
    return-object p0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 1
    .parameter

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2015
    if-nez p1, :cond_0

    .line 2016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2018
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2019
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2023
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2024
    return-object p0

    .line 2021
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 2
    .parameter

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2029
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2030
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2034
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2035
    return-object p0

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 1
    .parameter

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2105
    if-nez p1, :cond_0

    .line 2106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2108
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2109
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2113
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2114
    return-object p0

    .line 2111
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/go;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 2
    .parameter

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2119
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2120
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2124
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2125
    return-object p0

    .line 2122
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/go;->i()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 2
    .parameter

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2039
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2041
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2046
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2050
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2051
    return-object p0

    .line 2044
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 2
    .parameter

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2129
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2136
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 2140
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 2141
    return-object p0

    .line 2134
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0

    .line 2138
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 1
    .parameter

    .prologue
    .line 1906
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ie;

    if-eqz v0, :cond_0

    .line 1907
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ie;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/ie;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    .line 1910
    :goto_0
    return-object v0

    .line 1909
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 1910
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 1794
    new-instance v0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/if;-><init>()V

    return-object v0
.end method

.method private static r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1799
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 1817
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ie;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->E()Lcom/b/a/fp;

    .line 1819
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->V()Lcom/b/a/fp;

    .line 1821
    :cond_0
    return-void
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/if;
    .locals 1

    .prologue
    .line 1823
    new-instance v0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/if;-><init>()V

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/if;
    .locals 2

    .prologue
    .line 1827
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 1828
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 1829
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 1833
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1834
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1835
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 1839
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1840
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    .line 1841
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1842
    return-object p0

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 1837
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/if;
    .locals 2

    .prologue
    .line 1846
    new-instance v0, Lcom/keniu/security/sync/d/d/a/if;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/if;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->z()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/keniu/security/sync/d/d/a/ie;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method private static w()Lcom/keniu/security/sync/d/d/a/ie;
    .locals 1

    .prologue
    .line 1855
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ie;->h()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ie;
    .locals 2

    .prologue
    .line 1859
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->z()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ie;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1861
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/if;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 1863
    :cond_0
    return-object v0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ie;
    .locals 2

    .prologue
    .line 1868
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->z()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ie;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1870
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/if;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 1873
    :cond_0
    return-object v0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/ie;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1877
    new-instance v1, Lcom/keniu/security/sync/d/d/a/ie;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/ie;-><init>(Lcom/keniu/security/sync/d/d/a/if;)V

    .line 1878
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1879
    const/4 v0, 0x0

    .line 1880
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_4

    move v3, v4

    .line 1883
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ie;->a(Lcom/keniu/security/sync/d/d/a/ie;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 1888
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 1889
    or-int/lit8 v0, v3, 0x2

    move v3, v0

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_2

    .line 1892
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ie;->a(Lcom/keniu/security/sync/d/d/a/ie;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    .line 1896
    :goto_2
    and-int/lit8 v0, v2, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1897
    or-int/lit8 v0, v3, 0x4

    .line 1899
    :goto_3
    iget-wide v2, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    invoke-static {v1, v2, v3}, Lcom/keniu/security/sync/d/d/a/ie;->a(Lcom/keniu/security/sync/d/d/a/ie;J)J

    .line 1900
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ie;->a(Lcom/keniu/security/sync/d/d/a/ie;I)I

    .line 1901
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->ab_()V

    .line 1902
    return-object v1

    .line 1886
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ie;->a(Lcom/keniu/security/sync/d/d/a/ie;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 1894
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ie;->a(Lcom/keniu/security/sync/d/d/a/ie;Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 1804
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hh;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 1851
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ie;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->u()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->v()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1794
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ie;->h()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1794
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ie;->h()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->z()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->x()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->z()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->x()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/if;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ie;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 3
    .parameter

    .prologue
    .line 1915
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ie;->h()Lcom/keniu/security/sync/d/d/a/ie;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 1926
    :goto_0
    return-object v0

    .line 1916
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1917
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1919
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1920
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->h()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gn;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1922
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1923
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->q()J

    move-result-wide v0

    iget v2, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    iput-wide v0, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    .line 1925
    :cond_3
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ie;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/if;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 1926
    goto/16 :goto_0

    .line 1917
    :cond_4
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 1920
    :cond_6
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1930
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1944
    :goto_0
    return v0

    .line 1934
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1936
    goto :goto_0

    .line 1938
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1939
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gn;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 1941
    goto :goto_0

    .line 1944
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->v()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/if;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->u()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/if;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/if;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->v()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->v()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1794
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/if;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->v()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/if;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1951
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 1955
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 1956
    sparse-switch v1, :sswitch_data_0

    .line 1962
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/if;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1964
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/if;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1965
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    move-object v0, p0

    .line 1966
    :goto_1
    return-object v0

    .line 1958
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/if;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 1959
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    move-object v0, p0

    .line 1960
    goto :goto_1

    .line 1971
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 1972
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1973
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 1975
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 1976
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 1980
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gn;->Z()Lcom/keniu/security/sync/d/d/a/go;

    move-result-object v1

    .line 1981
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1982
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->n()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/go;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/go;

    .line 1984
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 1985
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/go;->D()Lcom/keniu/security/sync/d/d/a/gn;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/if;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 1989
    :sswitch_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

    .line 1990
    invoke-virtual {p1}, Lcom/b/a/m;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    goto/16 :goto_0

    .line 1956
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->u()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->v()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 1794
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/if;->u()Lcom/keniu/security/sync/d/d/a/if;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2004
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

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
    .line 2007
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2010
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 2072
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2094
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

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
    .line 2097
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2098
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    .line 2100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gn;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/gp;
    .locals 1

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gp;

    move-object v0, p0

    .line 2162
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/if;->d:Lcom/keniu/security/sync/d/d/a/gn;

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 2182
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/if;->a:I

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
    .line 2185
    iget-wide v0, p0, Lcom/keniu/security/sync/d/d/a/if;->f:J

    return-wide v0
.end method
