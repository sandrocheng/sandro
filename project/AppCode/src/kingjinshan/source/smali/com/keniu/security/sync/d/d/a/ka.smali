.class public final Lcom/keniu/security/sync/d/d/a/ka;
.super Lcom/b/a/dn;
.source "Loginsvr.java"

# interfaces
.implements Lcom/keniu/security/sync/d/d/a/kb;


# instance fields
.field private a:I

.field private b:Lcom/keniu/security/sync/d/d/a/ge;

.field private c:Lcom/b/a/fp;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2722
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 2881
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2971
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2723
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->p()V

    .line 2724
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 2708
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/sync/d/d/a/ka;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2727
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 2881
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2971
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2728
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->p()V

    .line 2729
    return-void
.end method

.method private A()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2995
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2996
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->h()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jz;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2997
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2998
    return-object p0
.end method

.method static synthetic a(Lcom/keniu/security/sync/d/d/a/ka;)Lcom/keniu/security/sync/d/d/a/jz;
    .locals 2
    .parameter

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->w()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ka;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1
    .parameter

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2896
    if-nez p1, :cond_0

    .line 2897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2899
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2900
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2904
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2905
    return-object p0

    .line 2902
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Lcom/keniu/security/sync/d/d/a/gf;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 2
    .parameter

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2910
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2911
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2915
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2916
    return-object p0

    .line 2913
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/gf;->i()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1
    .parameter

    .prologue
    .line 2986
    if-nez p1, :cond_0

    .line 2987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2989
    :cond_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2990
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2991
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2992
    return-object p0
.end method

.method private b(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 2
    .parameter

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_1

    .line 2920
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2922
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2927
    :goto_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2931
    :goto_1
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2932
    return-object p0

    .line 2925
    :cond_0
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0

    .line 2929
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0, p1}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_1
.end method

.method private d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1
    .parameter

    .prologue
    .line 2805
    instance-of v0, p1, Lcom/keniu/security/sync/d/d/a/jz;

    if-eqz v0, :cond_0

    .line 2806
    check-cast p1, Lcom/keniu/security/sync/d/d/a/jz;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/jz;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    .line 2809
    :goto_0
    return-object v0

    .line 2808
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 2809
    goto :goto_0
.end method

.method private e(Lcom/b/a/i;)V
    .locals 1
    .parameter

    .prologue
    .line 3001
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 3002
    iput-object p1, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 3003
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 3004
    return-void
.end method

.method static synthetic i()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2708
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ka;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2713
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 2731
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2732
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->z()Lcom/b/a/fp;

    .line 2734
    :cond_0
    return-void
.end method

.method private static q()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2736
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ka;-><init>()V

    return-object v0
.end method

.method private r()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2740
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 2741
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2742
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2746
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2747
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2748
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2749
    return-object p0

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private s()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 2

    .prologue
    .line 2753
    new-instance v0, Lcom/keniu/security/sync/d/d/a/ka;

    invoke-direct {v0}, Lcom/keniu/security/sync/d/d/a/ka;-><init>()V

    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->w()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/keniu/security/sync/d/d/a/jz;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/keniu/security/sync/d/d/a/jz;
    .locals 1

    .prologue
    .line 2762
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->h()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/keniu/security/sync/d/d/a/jz;
    .locals 2

    .prologue
    .line 2766
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->w()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    .line 2767
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2768
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ka;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 2770
    :cond_0
    return-object v0
.end method

.method private v()Lcom/keniu/security/sync/d/d/a/jz;
    .locals 2

    .prologue
    .line 2775
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->w()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    .line 2776
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/jz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2777
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/ka;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 2780
    :cond_0
    return-object v0
.end method

.method private w()Lcom/keniu/security/sync/d/d/a/jz;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2784
    new-instance v1, Lcom/keniu/security/sync/d/d/a/jz;

    invoke-direct {v1, p0}, Lcom/keniu/security/sync/d/d/a/jz;-><init>(Lcom/keniu/security/sync/d/d/a/ka;)V

    .line 2785
    iget v2, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2786
    const/4 v0, 0x0

    .line 2787
    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    .line 2790
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2791
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jz;->a(Lcom/keniu/security/sync/d/d/a/jz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    .line 2795
    :goto_1
    and-int/lit8 v0, v2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2796
    or-int/lit8 v0, v3, 0x2

    .line 2798
    :goto_2
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/keniu/security/sync/d/d/a/jz;->a(Lcom/keniu/security/sync/d/d/a/jz;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jz;->a(Lcom/keniu/security/sync/d/d/a/jz;I)I

    .line 2800
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->ab_()V

    .line 2801
    return-object v1

    .line 2793
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->d()Lcom/b/a/dk;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/d/d/a/jz;->a(Lcom/keniu/security/sync/d/d/a/jz;Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_0
.end method

.method private x()Lcom/keniu/security/sync/d/d/a/ka;
    .locals 1

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2936
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2937
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2941
    :goto_0
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2942
    return-object p0

    .line 2939
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->g()Lcom/b/a/fp;

    goto :goto_0
.end method

.method private y()Lcom/keniu/security/sync/d/d/a/gf;
    .locals 1

    .prologue
    .line 2945
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2946
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2947
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->z()Lcom/b/a/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/fp;->e()Lcom/b/a/dn;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gf;

    return-object p0
.end method

.method private z()Lcom/b/a/fp;
    .locals 4

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2960
    new-instance v0, Lcom/b/a/fp;

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->ae_()Lcom/b/a/dp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->ad_()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/b/a/fp;-><init>(Lcom/b/a/dk;Lcom/b/a/dp;Z)V

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    .line 2965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2967
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    return-object v0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2718
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ih;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2758
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->i()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->r()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->s()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2708
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->h()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2708
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->h()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->w()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->u()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->w()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->u()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 2708
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2708
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ka;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/sync/d/d/a/jz;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 3
    .parameter

    .prologue
    .line 2814
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/jz;->h()Lcom/keniu/security/sync/d/d/a/jz;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2822
    :goto_0
    return-object v0

    .line 2815
    :cond_0
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jz;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2816
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jz;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->h()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/ge;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    :goto_2
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2818
    :cond_1
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jz;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2819
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jz;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2816
    :cond_2
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v1, v0}, Lcom/b/a/fp;->b(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 2819
    :cond_4
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    .line 2821
    :cond_5
    invoke-virtual {p1}, Lcom/keniu/security/sync/d/d/a/jz;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ka;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 2822
    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2826
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2834
    :goto_0
    return v0

    .line 2830
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ge;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2832
    goto :goto_0

    .line 2834
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->s()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2708
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ka;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->r()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2708
    invoke-direct {p0, p1}, Lcom/keniu/security/sync/d/d/a/ka;->d(Lcom/b/a/ev;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2708
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ka;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->s()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->s()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2708
    invoke-virtual {p0, p1, p2}, Lcom/keniu/security/sync/d/d/a/ka;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->s()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/keniu/security/sync/d/d/a/ka;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2841
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 2845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 2846
    sparse-switch v1, :sswitch_data_0

    .line 2852
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/keniu/security/sync/d/d/a/ka;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2854
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ka;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2855
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    move-object v0, p0

    .line 2856
    :goto_1
    return-object v0

    .line 2848
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/d/d/a/ka;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2849
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    move-object v0, p0

    .line 2850
    goto :goto_1

    .line 2861
    :sswitch_1
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ge;->n()Lcom/keniu/security/sync/d/d/a/gf;

    move-result-object v1

    .line 2862
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2863
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->k()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/sync/d/d/a/gf;->a(Lcom/keniu/security/sync/d/d/a/ge;)Lcom/keniu/security/sync/d/d/a/gf;

    .line 2865
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/b/a/m;->a(Lcom/b/a/ey;Lcom/b/a/df;)V

    .line 2866
    invoke-virtual {v1}, Lcom/keniu/security/sync/d/d/a/gf;->n()Lcom/keniu/security/sync/d/d/a/ge;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/ka;->af_()V

    :goto_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v2, v1}, Lcom/b/a/fp;->a(Lcom/b/a/dk;)Lcom/b/a/fp;

    goto :goto_2

    .line 2870
    :sswitch_2
    iget v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

    .line 2871
    invoke-virtual {p1}, Lcom/b/a/m;->k()Lcom/b/a/i;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    goto :goto_0

    .line 2846
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
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->r()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->s()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/keniu/security/sync/d/d/a/ka;->r()Lcom/keniu/security/sync/d/d/a/ka;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2885
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

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
    .line 2888
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-nez v0, :cond_0

    .line 2889
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    .line 2891
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->c()Lcom/b/a/dk;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/ge;

    move-object v0, p0

    goto :goto_0
.end method

.method public final l()Lcom/keniu/security/sync/d/d/a/gg;
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    if-eqz v0, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->c:Lcom/b/a/fp;

    invoke-virtual {v0}, Lcom/b/a/fp;->f()Lcom/b/a/fa;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/d/d/a/gg;

    move-object v0, p0

    .line 2953
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->b:Lcom/keniu/security/sync/d/d/a/ge;

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 2973
    iget v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->a:I

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

.method public final n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2977
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2978
    check-cast v0, Lcom/b/a/i;

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 2979
    iput-object v0, p0, Lcom/keniu/security/sync/d/d/a/ka;->d:Ljava/lang/Object;

    .line 2982
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
