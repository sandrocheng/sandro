.class public final Lcom/avast/android/generic/internet/c/a/w;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/z;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Lcom/avast/android/generic/internet/c/a/x;

.field private d:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2917
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3045
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/w;->b:Ljava/lang/Object;

    .line 3081
    sget-object v0, Lcom/avast/android/generic/internet/c/a/x;->a:Lcom/avast/android/generic/internet/c/a/x;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/w;->c:Lcom/avast/android/generic/internet/c/a/x;

    .line 3105
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/w;->d:Ljava/lang/Object;

    .line 2918
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/w;->f()V

    .line 2919
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/w;
    .locals 1

    .prologue
    .line 2912
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/w;->k()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 2922
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/w;
    .locals 1

    .prologue
    .line 2924
    new-instance v0, Lcom/avast/android/generic/internet/c/a/w;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/w;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/w;
    .locals 2

    .prologue
    .line 2939
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/w;->k()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->d()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;
    .locals 1
    .parameter

    .prologue
    .line 2985
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->a()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2995
    :cond_0
    :goto_0
    return-object p0

    .line 2986
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/v;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2987
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/w;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/w;

    .line 2989
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/v;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2990
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/v;->e()Lcom/avast/android/generic/internet/c/a/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/avast/android/generic/internet/c/a/x;)Lcom/avast/android/generic/internet/c/a/w;

    .line 2992
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2993
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/v;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/w;->b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/w;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/x;)Lcom/avast/android/generic/internet/c/a/w;
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
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 3093
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/w;->c:Lcom/avast/android/generic/internet/c/a/x;

    .line 3095
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/w;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3007
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3008
    sparse-switch v0, :sswitch_data_0

    .line 3013
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3015
    :sswitch_0
    return-object p0

    .line 3020
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 3021
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/w;->b:Ljava/lang/Object;

    goto :goto_0

    .line 3025
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 3026
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/x;->a(I)Lcom/avast/android/generic/internet/c/a/x;

    move-result-object v0

    .line 3027
    if-eqz v0, :cond_0

    .line 3028
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 3029
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/w;->c:Lcom/avast/android/generic/internet/c/a/x;

    goto :goto_0

    .line 3034
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 3035
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/w;->d:Ljava/lang/Object;

    goto :goto_0

    .line 3008
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/w;
    .locals 1
    .parameter

    .prologue
    .line 3060
    if-nez p1, :cond_0

    .line 3061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3063
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 3064
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/w;->b:Ljava/lang/Object;

    .line 3066
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2912
    check-cast p1, Lcom/avast/android/generic/internet/c/a/v;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/v;
    .locals 1

    .prologue
    .line 2943
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->a()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/w;
    .locals 1
    .parameter

    .prologue
    .line 3120
    if-nez p1, :cond_0

    .line 3121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3123
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 3124
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/w;->d:Ljava/lang/Object;

    .line 3126
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2912
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/v;
    .locals 2

    .prologue
    .line 2947
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->d()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    .line 2948
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/v;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2949
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 2951
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2912
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/w;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->a()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/v;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2965
    new-instance v2, Lcom/avast/android/generic/internet/c/a/v;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/v;-><init>(Lcom/avast/android/generic/internet/c/a/w;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 2966
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/w;->a:I

    .line 2967
    const/4 v1, 0x0

    .line 2968
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 2971
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/w;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/v;->a(Lcom/avast/android/generic/internet/c/a/v;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2972
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 2973
    or-int/lit8 v0, v0, 0x2

    .line 2975
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/w;->c:Lcom/avast/android/generic/internet/c/a/x;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/v;->a(Lcom/avast/android/generic/internet/c/a/v;Lcom/avast/android/generic/internet/c/a/x;)Lcom/avast/android/generic/internet/c/a/x;

    .line 2976
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 2977
    or-int/lit8 v0, v0, 0x4

    .line 2979
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/w;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/v;->b(Lcom/avast/android/generic/internet/c/a/v;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2980
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/v;->a(Lcom/avast/android/generic/internet/c/a/v;I)I

    .line 2981
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->b()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->a()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->a()Lcom/avast/android/generic/internet/c/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/w;->c()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 2999
    const/4 v0, 0x1

    return v0
.end method
