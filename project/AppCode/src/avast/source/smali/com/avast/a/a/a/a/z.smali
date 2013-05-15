.class public final Lcom/avast/a/a/a/a/z;
.super Lcom/google/a/n;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/aa;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:J

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2737
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3002
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->e:Ljava/lang/Object;

    .line 3038
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->f:Ljava/lang/Object;

    .line 3074
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->g:Ljava/lang/Object;

    .line 3131
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->i:Ljava/lang/Object;

    .line 2738
    invoke-direct {p0}, Lcom/avast/a/a/a/a/z;->l()V

    .line 2739
    return-void
.end method

.method static synthetic k()Lcom/avast/a/a/a/a/z;
    .locals 1

    .prologue
    .line 2732
    invoke-static {}, Lcom/avast/a/a/a/a/z;->m()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 2742
    return-void
.end method

.method private static m()Lcom/avast/a/a/a/a/z;
    .locals 1

    .prologue
    .line 2744
    new-instance v0, Lcom/avast/a/a/a/a/z;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/z;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/a/z;
    .locals 2

    .prologue
    .line 2769
    invoke-static {}, Lcom/avast/a/a/a/a/z;->m()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->d()Lcom/avast/a/a/a/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/a/z;->a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 2947
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2948
    iput-wide p1, p0, Lcom/avast/a/a/a/a/z;->b:J

    .line 2950
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/z;
    .locals 2
    .parameter

    .prologue
    .line 2835
    invoke-static {}, Lcom/avast/a/a/a/a/y;->a()Lcom/avast/a/a/a/a/y;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2860
    :cond_0
    :goto_0
    return-object p0

    .line 2836
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2837
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/z;->a(J)Lcom/avast/a/a/a/a/z;

    .line 2839
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2840
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/z;->b(J)Lcom/avast/a/a/a/a/z;

    .line 2842
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2843
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/z;->a(Z)Lcom/avast/a/a/a/a/z;

    .line 2845
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2846
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/z;->a(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;

    .line 2848
    :cond_5
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2849
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/z;->b(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;

    .line 2851
    :cond_6
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2852
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/z;->c(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;

    .line 2854
    :cond_7
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2855
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avast/a/a/a/a/z;->c(J)Lcom/avast/a/a/a/a/z;

    .line 2857
    :cond_8
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2858
    invoke-virtual {p1}, Lcom/avast/a/a/a/a/y;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/a/z;->d(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/z;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2880
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 2881
    sparse-switch v0, :sswitch_data_0

    .line 2886
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/a/z;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2888
    :sswitch_0
    return-object p0

    .line 2893
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2894
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/z;->b:J

    goto :goto_0

    .line 2898
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2899
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/z;->c:J

    goto :goto_0

    .line 2903
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2904
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/a/z;->d:Z

    goto :goto_0

    .line 2908
    :sswitch_4
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2909
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->e:Ljava/lang/Object;

    goto :goto_0

    .line 2913
    :sswitch_5
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2914
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->f:Ljava/lang/Object;

    goto :goto_0

    .line 2918
    :sswitch_6
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2919
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->g:Ljava/lang/Object;

    goto :goto_0

    .line 2923
    :sswitch_7
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2924
    invoke-virtual {p1}, Lcom/google/a/d;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/a/a/a/a/z;->h:J

    goto :goto_0

    .line 2928
    :sswitch_8
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2929
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/z;->i:Ljava/lang/Object;

    goto :goto_0

    .line 2881
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 3017
    if-nez p1, :cond_0

    .line 3018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3020
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 3021
    iput-object p1, p0, Lcom/avast/a/a/a/a/z;->e:Ljava/lang/Object;

    .line 3023
    return-object p0
.end method

.method public a(Z)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 2989
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2990
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/z;->d:Z

    .line 2992
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2732
    check-cast p1, Lcom/avast/a/a/a/a/y;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/a/z;->a(Lcom/avast/a/a/a/a/y;)Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/a/y;
    .locals 1

    .prologue
    .line 2773
    invoke-static {}, Lcom/avast/a/a/a/a/y;->a()Lcom/avast/a/a/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 2968
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2969
    iput-wide p1, p0, Lcom/avast/a/a/a/a/z;->c:J

    .line 2971
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 3053
    if-nez p1, :cond_0

    .line 3054
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3056
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 3057
    iput-object p1, p0, Lcom/avast/a/a/a/a/z;->f:Ljava/lang/Object;

    .line 3059
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2732
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/z;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/a/y;
    .locals 2

    .prologue
    .line 2777
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->d()Lcom/avast/a/a/a/a/y;

    move-result-object v0

    .line 2778
    invoke-virtual {v0}, Lcom/avast/a/a/a/a/y;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2779
    invoke-static {v0}, Lcom/avast/a/a/a/a/z;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 2781
    :cond_0
    return-object v0
.end method

.method public c(J)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 3118
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 3119
    iput-wide p1, p0, Lcom/avast/a/a/a/a/z;->h:J

    .line 3121
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 3089
    if-nez p1, :cond_0

    .line 3090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3092
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 3093
    iput-object p1, p0, Lcom/avast/a/a/a/a/z;->g:Ljava/lang/Object;

    .line 3095
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2732
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/a/z;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->a()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/a/y;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2795
    new-instance v2, Lcom/avast/a/a/a/a/y;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/a/y;-><init>(Lcom/avast/a/a/a/a/z;Lcom/avast/a/a/a/a/b;)V

    .line 2796
    iget v3, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 2797
    const/4 v1, 0x0

    .line 2798
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    .line 2801
    :goto_0
    iget-wide v4, p0, Lcom/avast/a/a/a/a/z;->b:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/y;->a(Lcom/avast/a/a/a/a/y;J)J

    .line 2802
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 2803
    or-int/lit8 v0, v0, 0x2

    .line 2805
    :cond_0
    iget-wide v4, p0, Lcom/avast/a/a/a/a/z;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/y;->b(Lcom/avast/a/a/a/a/y;J)J

    .line 2806
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 2807
    or-int/lit8 v0, v0, 0x4

    .line 2809
    :cond_1
    iget-boolean v1, p0, Lcom/avast/a/a/a/a/z;->d:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/y;->a(Lcom/avast/a/a/a/a/y;Z)Z

    .line 2810
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 2811
    or-int/lit8 v0, v0, 0x8

    .line 2813
    :cond_2
    iget-object v1, p0, Lcom/avast/a/a/a/a/z;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/y;->a(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 2815
    or-int/lit8 v0, v0, 0x10

    .line 2817
    :cond_3
    iget-object v1, p0, Lcom/avast/a/a/a/a/z;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/y;->b(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 2819
    or-int/lit8 v0, v0, 0x20

    .line 2821
    :cond_4
    iget-object v1, p0, Lcom/avast/a/a/a/a/z;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/y;->c(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2822
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 2823
    or-int/lit8 v0, v0, 0x40

    .line 2825
    :cond_5
    iget-wide v4, p0, Lcom/avast/a/a/a/a/z;->h:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/a/a/a/y;->c(Lcom/avast/a/a/a/a/y;J)J

    .line 2826
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    .line 2827
    or-int/lit16 v0, v0, 0x80

    .line 2829
    :cond_6
    iget-object v1, p0, Lcom/avast/a/a/a/a/z;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/a/y;->d(Lcom/avast/a/a/a/a/y;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2830
    invoke-static {v2, v0}, Lcom/avast/a/a/a/a/y;->a(Lcom/avast/a/a/a/a/y;I)I

    .line 2831
    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/avast/a/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 3146
    if-nez p1, :cond_0

    .line 3147
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3149
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/avast/a/a/a/a/z;->a:I

    .line 3150
    iput-object p1, p0, Lcom/avast/a/a/a/a/z;->i:Ljava/lang/Object;

    .line 3152
    return-object p0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2941
    iget v1, p0, Lcom/avast/a/a/a/a/z;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 2962
    iget v0, p0, Lcom/avast/a/a/a/a/z;->a:I

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

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->b()Lcom/avast/a/a/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->a()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->a()Lcom/avast/a/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->c()Lcom/avast/a/a/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2864
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2872
    :cond_0
    :goto_0
    return v0

    .line 2868
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/z;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2872
    const/4 v0, 0x1

    goto :goto_0
.end method
