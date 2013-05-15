.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ak;


# instance fields
.field private a:I

.field private b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

.field private c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

.field private d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

.field private e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1886
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 2040
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    .line 2083
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    .line 2126
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    .line 2169
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    .line 1887
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->r()V

    .line 1888
    return-void
.end method

.method static synthetic q()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1

    .prologue
    .line 1881
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->s()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 0

    .prologue
    .line 1891
    return-void
.end method

.method private static s()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1

    .prologue
    .line 1893
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 2

    .prologue
    .line 1910
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->s()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 2091
    if-nez p1, :cond_0

    .line 2092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2094
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    .line 2096
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2097
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 2177
    if-nez p1, :cond_0

    .line 2178
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2180
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    .line 2182
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2183
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 1960
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return-object p0

    .line 1961
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1962
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    .line 1964
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1965
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    .line 1967
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1968
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->g()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    .line 1970
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->i()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 2048
    if-nez p1, :cond_0

    .line 2049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2051
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    .line 2053
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2054
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 2134
    if-nez p1, :cond_0

    .line 2135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2137
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    .line 2139
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2140
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1985
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 1986
    sparse-switch v0, :sswitch_data_0

    .line 1991
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1993
    :sswitch_0
    return-object p0

    .line 1998
    :sswitch_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    .line 1999
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2000
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    .line 2002
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 2003
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    goto :goto_0

    .line 2007
    :sswitch_2
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    .line 2008
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2009
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    .line 2011
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 2012
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    goto :goto_0

    .line 2016
    :sswitch_3
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    .line 2017
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2018
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    .line 2020
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 2021
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    goto :goto_0

    .line 2025
    :sswitch_4
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    .line 2026
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2027
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->p()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    .line 2029
    :cond_4
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 2030
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    goto :goto_0

    .line 1986
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 1881
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 1

    .prologue
    .line 1914
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 2107
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    .line 2115
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2116
    return-object p0

    .line 2112
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    goto :goto_0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 2193
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    .line 2201
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2202
    return-object p0

    .line 2198
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    goto :goto_0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 2064
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ar;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/as;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    .line 2072
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2073
    return-object p0

    .line 2069
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    goto :goto_0
.end method

.method public b(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;
    .locals 2
    .parameter

    .prologue
    .line 2150
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/x;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    .line 2158
    :goto_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 2159
    return-object p0

    .line 2155
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    goto :goto_0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1881
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 2

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    .line 1919
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1920
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 1922
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1881
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1936
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/aj;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 1937
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    .line 1938
    const/4 v1, 0x0

    .line 1939
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 1942
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/ar;)Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    .line 1943
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1944
    or-int/lit8 v0, v0, 0x2

    .line 1946
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    .line 1947
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 1948
    or-int/lit8 v0, v0, 0x4

    .line 1950
    :cond_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/w;)Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    .line 1951
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 1952
    or-int/lit8 v0, v0, 0x8

    .line 1954
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    .line 1955
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ai;I)I

    .line 1956
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2042
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/avast/android/mobilesecurity/engine/internal/a/ar;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/ar;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 1881
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 2085
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

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

.method public l()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    return-object v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 2128
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

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

.method public n()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 2171
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->a:I

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

.method public p()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/aj;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 1977
    const/4 v0, 0x1

    return v0
.end method
