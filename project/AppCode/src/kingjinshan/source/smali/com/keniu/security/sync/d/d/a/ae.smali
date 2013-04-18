.class public final Lcom/keniu/security/sync/d/d/a/ae;
.super Lcom/b/a/dn;
.source "Appsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/af;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Lcom/keniu/security/sync/d/d/a/gy;

.field private e:Lcom/b/a/fp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2779
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 2951
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3041
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 2780
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->q()V

    .line 2781
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 2765
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ae;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2784
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 2951
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3041
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 2785
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->q()V

    .line 2786
    return-void
.end method

.method private A()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 3029
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3030
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    .line 3035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3037
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    return-object v0
.end method

.method private D()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 3095
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3096
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3097
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3101
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3102
    return-object p0

    .line 3099
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private E()Lcom/keniu/security/sync/d/d/a/gz;
    .locals 1

    .prologue
    .line 3105
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3106
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3107
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->N()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gz;

    return-object p0
.end method

.method private N()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3120
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    .line 3125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3127
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ae;)Lcom/keniu/security/sync/d/d/a/ad;
    .locals 2
    .parameter

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->x()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ae;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2966
    if-nez p1, :cond_0

    .line 2967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2969
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2970
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 2974
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2975
    return-object p0

    .line 2972
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2980
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2981
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 2985
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2986
    return-object p0

    .line 2983
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3056
    if-nez p1, :cond_0

    .line 3057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3059
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3060
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3064
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3065
    return-object p0

    .line 3062
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gz;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3070
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3071
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3075
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3076
    return-object p0

    .line 3073
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gz;->i()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2990
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2997
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3001
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3002
    return-object p0

    .line 2995
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 2999
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 2
    .parameter

    .prologue
    .line 3079
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 3080
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3082
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3087
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3091
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3092
    return-object p0

    .line 3085
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0

    .line 3089
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 2871
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/ad;

    if-eqz v0, :cond_0

    .line 2872
    check-cast p1, Lcom/keniu/security/sync/d/d/a/ad;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ad;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    .line 2875
    :goto_0
    return-object v0

    .line 2874
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 2875
    goto :goto_0
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 2765
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ae;-><init>()V

    return-object v0
.end method

.method private static p()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2770
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->l()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 2788
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ad;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->A()Lcom/b/a/fp;

    .line 2790
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->N()Lcom/b/a/fp;

    .line 2792
    :cond_0
    return-void
.end method

.method private static r()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 2794
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ae;-><init>()V

    return-object v0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 2798
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 2799
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2800
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2804
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2805
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2806
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 2810
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2811
    return-object p0

    .line 2802
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0

    .line 2808
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_1
.end method

.method private t()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 2

    .prologue
    .line 2815
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ae;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ae;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->x()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/keniu/security/sync/d/d/a/ad;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method private static u()Lcom/keniu/security/sync/d/d/a/ad;
    .locals 1

    .prologue
    .line 2824
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ad;->h()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/ad;
    .locals 2

    .prologue
    .line 2828
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->x()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    .line 2829
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2830
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ae;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 2832
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/ad;
    .locals 2

    .prologue
    .line 2837
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->x()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    .line 2838
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ad;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2839
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ae;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 2842
    :cond_0
    return-object v0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ad;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2846
    new-instance v1, Lcom/keniu/security/sync/d/d/a/ad;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/ad;-><init>(Lcom/keniu/security/sync/d/d/a/ae;)V

    .line 2847
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2848
    const/4 v0, 0x0

    .line 2849
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_3

    move v3, v4

    .line 2852
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2853
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ad;->a(Lcom/keniu/security/sync/d/d/a/ad;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 2857
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2858
    or-int/lit8 v0, v3, 0x2

    move v2, v0

    .line 2860
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2861
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ad;->a(Lcom/keniu/security/sync/d/d/a/ad;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    .line 2865
    :goto_3
    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/ad;->a(Lcom/keniu/security/sync/d/d/a/ad;I)I

    .line 2866
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->ab_()V

    .line 2867
    return-object v1

    .line 2855
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ad;->a(Lcom/keniu/security/sync/d/d/a/ad;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    .line 2863
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/ad;->a(Lcom/keniu/security/sync/d/d/a/ad;Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/ae;
    .locals 1

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3006
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 3007
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3011
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3012
    return-object p0

    .line 3009
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private z()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 3015
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 3016
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    .line 3017
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->A()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2775
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/a;->m()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2820
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ad;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->s()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->t()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2765
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ad;->h()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2765
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ad;->h()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->x()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->v()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->x()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->v()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 2765
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2765
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/ad;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 3
    .parameter

    .prologue
    .line 2880
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ad;->h()Lcom/keniu/security/sync/d/d/a/ad;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2888
    :goto_0
    return-object v0

    .line 2881
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2882
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ad;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2884
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ad;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2885
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ad;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->h()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/gy;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    :goto_3
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    :goto_4
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    .line 2887
    :cond_2
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/ad;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ae;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 2888
    goto :goto_0

    .line 2882
    :cond_3
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 2885
    :cond_5
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_4
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2892
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2900
    :goto_0
    return v0

    .line 2896
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2898
    goto :goto_0

    .line 2900
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->t()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2765
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->s()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2765
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ae;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2765
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->t()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->t()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2765
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ae;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->t()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ae;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 2911
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 2912
    sparse-switch v1, :sswitch_data_0

    .line 2918
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ae;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2920
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ae;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2921
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    move-object v0, p0

    .line 2922
    :goto_1
    return-object v0

    .line 2914
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ae;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2915
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    move-object v0, p0

    .line 2916
    goto :goto_1

    .line 2927
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 2928
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2929
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 2931
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 2932
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 2936
    :sswitch_2
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/gy;->N()Lcom/keniu/security/sync/d/d/a/gz;

    move-result-object v1

    .line 2937
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2938
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->n()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gz;->a(Lcom/keniu/security/sync/d/d/a/gy;)Lcom/keniu/security/sync/d/d/a/gz;

    .line 2940
    :cond_4
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 2941
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gz;->D()Lcom/keniu/security/sync/d/d/a/gy;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v2, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_5
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ae;->af_()V

    :goto_3
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_3

    .line 2912
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->s()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->t()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ae;->s()Lcom/keniu/security/sync/d/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2955
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

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
    .line 2958
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2959
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2961
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 3021
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 3023
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 3045
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->a:I

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

.method public final n()Lcom/keniu/security/sync/d/d/a/gy;
    .locals 1

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 3049
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    .line 3051
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gy;

    move-object v0, p0

    goto :goto_0
.end method

.method public final o()Lcom/keniu/security/sync/d/d/a/ha;
    .locals 1

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->e:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ha;

    move-object v0, p0

    .line 3113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ae;->d:Lcom/keniu/security/sync/d/d/a/gy;

    goto :goto_0
.end method
