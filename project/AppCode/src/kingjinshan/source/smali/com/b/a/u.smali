.class public final Lcom/b/a/u;
.super Lcom/b/a/dn;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/v;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2887
    invoke-direct {p0}, Lcom/b/a/dn;-><init>()V

    .line 2888
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 2889
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/dp;)V
    .locals 1
    .parameter

    .prologue
    .line 2873
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/u;-><init>(Lcom/b/a/dp;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dp;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2892
    invoke-direct {p0, p1}, Lcom/b/a/dn;-><init>(Lcom/b/a/dp;)V

    .line 2893
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 2894
    return-void
.end method

.method static synthetic a(Lcom/b/a/u;)Lcom/b/a/t;
    .locals 2
    .parameter

    .prologue
    .line 2873
    invoke-virtual {p0}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/t;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/b/a/u;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method private a(I)Lcom/b/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3033
    iget v0, p0, Lcom/b/a/u;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/u;->a:I

    .line 3034
    iput p1, p0, Lcom/b/a/u;->b:I

    .line 3035
    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    .line 3036
    return-object p0
.end method

.method private b(I)Lcom/b/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3054
    iget v0, p0, Lcom/b/a/u;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/u;->a:I

    .line 3055
    iput p1, p0, Lcom/b/a/u;->c:I

    .line 3056
    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    .line 3057
    return-object p0
.end method

.method private d(Lcom/b/a/ev;)Lcom/b/a/u;
    .locals 1
    .parameter

    .prologue
    .line 2961
    instance-of v0, p1, Lcom/b/a/t;

    if-eqz v0, :cond_0

    .line 2962
    check-cast p1, Lcom/b/a/t;

    invoke-virtual {p0, p1}, Lcom/b/a/u;->a(Lcom/b/a/t;)Lcom/b/a/u;

    move-result-object v0

    .line 2965
    :goto_0
    return-object v0

    .line 2964
    :cond_0
    invoke-super {p0, p1}, Lcom/b/a/dn;->a(Lcom/b/a/ev;)Lcom/b/a/c;

    move-object v0, p0

    .line 2965
    goto :goto_0
.end method

.method static synthetic n()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 2873
    new-instance v0, Lcom/b/a/u;

    invoke-direct {v0}, Lcom/b/a/u;-><init>()V

    return-object v0
.end method

.method private static o()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2878
    invoke-static {}, Lcom/b/a/p;->h()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method private static p()V
    .locals 1

    .prologue
    .line 2896
    sget-boolean v0, Lcom/b/a/dk;->j:Z

    .line 2898
    return-void
.end method

.method private static q()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 2900
    new-instance v0, Lcom/b/a/u;

    invoke-direct {v0}, Lcom/b/a/u;-><init>()V

    return-object v0
.end method

.method private r()Lcom/b/a/u;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2904
    invoke-super {p0}, Lcom/b/a/dn;->F()Lcom/b/a/dn;

    .line 2905
    iput v1, p0, Lcom/b/a/u;->b:I

    .line 2906
    iget v0, p0, Lcom/b/a/u;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/u;->a:I

    .line 2907
    iput v1, p0, Lcom/b/a/u;->c:I

    .line 2908
    iget v0, p0, Lcom/b/a/u;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/u;->a:I

    .line 2909
    return-object p0
.end method

.method private s()Lcom/b/a/u;
    .locals 2

    .prologue
    .line 2913
    new-instance v0, Lcom/b/a/u;

    invoke-direct {v0}, Lcom/b/a/u;-><init>()V

    invoke-virtual {p0}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/u;->a(Lcom/b/a/t;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/b/a/t;
    .locals 1

    .prologue
    .line 2922
    invoke-static {}, Lcom/b/a/t;->e()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method private u()Lcom/b/a/t;
    .locals 2

    .prologue
    .line 2935
    invoke-virtual {p0}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v0

    .line 2936
    invoke-virtual {v0}, Lcom/b/a/t;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2937
    invoke-static {v0}, Lcom/b/a/u;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gf;->a()Lcom/b/a/es;

    move-result-object v0

    throw v0

    .line 2940
    :cond_0
    return-object v0
.end method

.method private v()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 3039
    iget v0, p0, Lcom/b/a/u;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/b/a/u;->a:I

    .line 3040
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/u;->b:I

    .line 3041
    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    .line 3042
    return-object p0
.end method

.method private w()Lcom/b/a/u;
    .locals 1

    .prologue
    .line 3060
    iget v0, p0, Lcom/b/a/u;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/b/a/u;->a:I

    .line 3061
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/u;->c:I

    .line 3062
    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    .line 3063
    return-object p0
.end method


# virtual methods
.method protected final B()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 2883
    invoke-static {}, Lcom/b/a/p;->i()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final C()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 2918
    invoke-static {}, Lcom/b/a/t;->f()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->r()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/dn;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->s()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2873
    invoke-static {}, Lcom/b/a/t;->e()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2873
    invoke-static {}, Lcom/b/a/t;->e()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic J()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2873
    invoke-virtual {p0}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic K()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 2873
    invoke-virtual {p0}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic L()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2873
    invoke-virtual {p0}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic M()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 2873
    invoke-virtual {p0}, Lcom/b/a/u;->l()Lcom/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/ev;)Lcom/b/a/c;
    .locals 1
    .parameter

    .prologue
    .line 2873
    invoke-direct {p0, p1}, Lcom/b/a/u;->d(Lcom/b/a/ev;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2873
    invoke-virtual {p0, p1, p2}, Lcom/b/a/u;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/b/a/t;)Lcom/b/a/u;
    .locals 2
    .parameter

    .prologue
    .line 2970
    invoke-static {}, Lcom/b/a/t;->e()Lcom/b/a/t;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2978
    :goto_0
    return-object v0

    .line 2971
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/t;->e_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2972
    invoke-virtual {p1}, Lcom/b/a/t;->i()I

    move-result v0

    iget v1, p0, Lcom/b/a/u;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/u;->a:I

    iput v0, p0, Lcom/b/a/u;->b:I

    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    .line 2974
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/t;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2975
    invoke-virtual {p1}, Lcom/b/a/t;->k()I

    move-result v0

    iget v1, p0, Lcom/b/a/u;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/u;->a:I

    iput v0, p0, Lcom/b/a/u;->c:I

    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    .line 2977
    :cond_2
    invoke-virtual {p1}, Lcom/b/a/t;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/u;->e(Lcom/b/a/gg;)Lcom/b/a/dn;

    move-object v0, p0

    .line 2978
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2982
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic b()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->s()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2873
    invoke-virtual {p0, p1, p2}, Lcom/b/a/u;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/b/a/c;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->r()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/ev;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 2873
    invoke-direct {p0, p1}, Lcom/b/a/u;->d(Lcom/b/a/ev;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2873
    invoke-virtual {p0, p1, p2}, Lcom/b/a/u;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->s()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/b/a/e;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->s()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ew;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2873
    invoke-virtual {p0, p1, p2}, Lcom/b/a/u;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->s()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/u;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2989
    invoke-virtual {p0}, Lcom/b/a/u;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/gg;->a(Lcom/b/a/gg;)Lcom/b/a/gi;

    move-result-object v0

    .line 2993
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/b/a/m;->a()I

    move-result v1

    .line 2994
    sparse-switch v1, :sswitch_data_0

    .line 3000
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/b/a/u;->a(Lcom/b/a/m;Lcom/b/a/gi;Lcom/b/a/df;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3002
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/u;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 3003
    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    move-object v0, p0

    .line 3004
    :goto_1
    return-object v0

    .line 2996
    :sswitch_0
    invoke-virtual {v0}, Lcom/b/a/gi;->b()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/u;->d(Lcom/b/a/gg;)Lcom/b/a/dn;

    .line 2997
    invoke-virtual {p0}, Lcom/b/a/u;->af_()V

    move-object v0, p0

    .line 2998
    goto :goto_1

    .line 3009
    :sswitch_1
    iget v1, p0, Lcom/b/a/u;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/b/a/u;->a:I

    .line 3010
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/b/a/u;->b:I

    goto :goto_0

    .line 3014
    :sswitch_2
    iget v1, p0, Lcom/b/a/u;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/b/a/u;->a:I

    .line 3015
    invoke-virtual {p1}, Lcom/b/a/m;->f()I

    move-result v1

    iput v1, p0, Lcom/b/a/u;->c:I

    goto :goto_0

    .line 2994
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final e_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3027
    iget v0, p0, Lcom/b/a/u;->a:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic f()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->r()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic g()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->s()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/b/a/u;->r()Lcom/b/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 3030
    iget v0, p0, Lcom/b/a/u;->b:I

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 3048
    iget v0, p0, Lcom/b/a/u;->a:I

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

.method public final k()I
    .locals 1

    .prologue
    .line 3051
    iget v0, p0, Lcom/b/a/u;->c:I

    return v0
.end method

.method public final l()Lcom/b/a/t;
    .locals 2

    .prologue
    .line 2926
    invoke-virtual {p0}, Lcom/b/a/u;->m()Lcom/b/a/t;

    move-result-object v0

    .line 2927
    invoke-virtual {v0}, Lcom/b/a/t;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2928
    invoke-static {v0}, Lcom/b/a/u;->b(Lcom/b/a/ev;)Lcom/b/a/gf;

    move-result-object v0

    throw v0

    .line 2930
    :cond_0
    return-object v0
.end method

.method public final m()Lcom/b/a/t;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2944
    new-instance v0, Lcom/b/a/t;

    invoke-direct {v0, p0}, Lcom/b/a/t;-><init>(Lcom/b/a/u;)V

    .line 2945
    iget v1, p0, Lcom/b/a/u;->a:I

    .line 2946
    const/4 v2, 0x0

    .line 2947
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 2950
    :cond_0
    iget v3, p0, Lcom/b/a/u;->b:I

    invoke-static {v0, v3}, Lcom/b/a/t;->a(Lcom/b/a/t;I)I

    .line 2951
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 2952
    or-int/lit8 v1, v2, 0x2

    .line 2954
    :goto_0
    iget v2, p0, Lcom/b/a/u;->c:I

    invoke-static {v0, v2}, Lcom/b/a/t;->b(Lcom/b/a/t;I)I

    .line 2955
    invoke-static {v0, v1}, Lcom/b/a/t;->c(Lcom/b/a/t;I)I

    .line 2956
    invoke-virtual {p0}, Lcom/b/a/u;->ab_()V

    .line 2957
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
