.class public final Lcom/avast/a/a/a/f;
.super Lcom/google/a/n;
.source "AvastToDevice.java"

# interfaces
.implements Lcom/avast/a/a/a/g;


# instance fields
.field private a:I

.field private b:Lcom/avast/a/a/a/c;

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3017
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3159
    sget-object v0, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/f;->b:Lcom/avast/a/a/a/c;

    .line 3018
    invoke-direct {p0}, Lcom/avast/a/a/a/f;->f()V

    .line 3019
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/f;)Lcom/avast/a/a/a/e;
    .locals 1
    .parameter

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/avast/a/a/a/f;->l()Lcom/avast/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/avast/a/a/a/f;
    .locals 1

    .prologue
    .line 3012
    invoke-static {}, Lcom/avast/a/a/a/f;->k()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 3022
    return-void
.end method

.method private static k()Lcom/avast/a/a/a/f;
    .locals 1

    .prologue
    .line 3024
    new-instance v0, Lcom/avast/a/a/a/f;

    invoke-direct {v0}, Lcom/avast/a/a/a/f;-><init>()V

    return-object v0
.end method

.method private l()Lcom/avast/a/a/a/e;
    .locals 2

    .prologue
    .line 3058
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->d()Lcom/avast/a/a/a/e;

    move-result-object v0

    .line 3059
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3060
    invoke-static {v0}, Lcom/avast/a/a/a/f;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 3063
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/f;
    .locals 2

    .prologue
    .line 3041
    invoke-static {}, Lcom/avast/a/a/a/f;->k()Lcom/avast/a/a/a/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->d()Lcom/avast/a/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/f;->a(Lcom/avast/a/a/a/e;)Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3191
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3192
    iput p1, p0, Lcom/avast/a/a/a/f;->c:I

    .line 3194
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/c;)Lcom/avast/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3167
    if-nez p1, :cond_0

    .line 3168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3170
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3171
    iput-object p1, p0, Lcom/avast/a/a/a/f;->b:Lcom/avast/a/a/a/c;

    .line 3173
    return-object p0
.end method

.method public a(Lcom/avast/a/a/a/e;)Lcom/avast/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3091
    invoke-static {}, Lcom/avast/a/a/a/e;->a()Lcom/avast/a/a/a/e;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3104
    :cond_0
    :goto_0
    return-object p0

    .line 3092
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3093
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->c()Lcom/avast/a/a/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/f;->a(Lcom/avast/a/a/a/c;)Lcom/avast/a/a/a/f;

    .line 3095
    :cond_2
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3096
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/f;->a(I)Lcom/avast/a/a/a/f;

    .line 3098
    :cond_3
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3099
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/f;->a(Z)Lcom/avast/a/a/a/f;

    .line 3101
    :cond_4
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3102
    invoke-virtual {p1}, Lcom/avast/a/a/a/e;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/f;->b(Z)Lcom/avast/a/a/a/f;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/f;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3117
    sparse-switch v0, :sswitch_data_0

    .line 3122
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/f;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3124
    :sswitch_0
    return-object p0

    .line 3129
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 3130
    invoke-static {v0}, Lcom/avast/a/a/a/c;->a(I)Lcom/avast/a/a/a/c;

    move-result-object v0

    .line 3131
    if-eqz v0, :cond_0

    .line 3132
    iget v1, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3133
    iput-object v0, p0, Lcom/avast/a/a/a/f;->b:Lcom/avast/a/a/a/c;

    goto :goto_0

    .line 3138
    :sswitch_2
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3139
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/a/a/a/f;->c:I

    goto :goto_0

    .line 3143
    :sswitch_3
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3144
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/f;->d:Z

    goto :goto_0

    .line 3148
    :sswitch_4
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3149
    invoke-virtual {p1}, Lcom/google/a/d;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/a/a/a/f;->e:Z

    goto :goto_0

    .line 3117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Z)Lcom/avast/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3212
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3213
    iput-boolean p1, p0, Lcom/avast/a/a/a/f;->d:Z

    .line 3215
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 3012
    check-cast p1, Lcom/avast/a/a/a/e;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/f;->a(Lcom/avast/a/a/a/e;)Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/e;
    .locals 1

    .prologue
    .line 3045
    invoke-static {}, Lcom/avast/a/a/a/e;->a()Lcom/avast/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Lcom/avast/a/a/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3233
    iget v0, p0, Lcom/avast/a/a/a/f;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3234
    iput-boolean p1, p0, Lcom/avast/a/a/a/f;->e:Z

    .line 3236
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3012
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/f;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/e;
    .locals 2

    .prologue
    .line 3049
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->d()Lcom/avast/a/a/a/e;

    move-result-object v0

    .line 3050
    invoke-virtual {v0}, Lcom/avast/a/a/a/e;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3051
    invoke-static {v0}, Lcom/avast/a/a/a/f;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 3053
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3012
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/f;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->a()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/e;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3067
    new-instance v2, Lcom/avast/a/a/a/e;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/e;-><init>(Lcom/avast/a/a/a/f;Lcom/avast/a/a/a/b;)V

    .line 3068
    iget v3, p0, Lcom/avast/a/a/a/f;->a:I

    .line 3069
    const/4 v1, 0x0

    .line 3070
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    .line 3073
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/f;->b:Lcom/avast/a/a/a/c;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/e;->a(Lcom/avast/a/a/a/e;Lcom/avast/a/a/a/c;)Lcom/avast/a/a/a/c;

    .line 3074
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3075
    or-int/lit8 v0, v0, 0x2

    .line 3077
    :cond_0
    iget v1, p0, Lcom/avast/a/a/a/f;->c:I

    invoke-static {v2, v1}, Lcom/avast/a/a/a/e;->a(Lcom/avast/a/a/a/e;I)I

    .line 3078
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3079
    or-int/lit8 v0, v0, 0x4

    .line 3081
    :cond_1
    iget-boolean v1, p0, Lcom/avast/a/a/a/f;->d:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/e;->a(Lcom/avast/a/a/a/e;Z)Z

    .line 3082
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 3083
    or-int/lit8 v0, v0, 0x8

    .line 3085
    :cond_2
    iget-boolean v1, p0, Lcom/avast/a/a/a/f;->e:Z

    invoke-static {v2, v1}, Lcom/avast/a/a/a/e;->b(Lcom/avast/a/a/a/e;Z)Z

    .line 3086
    invoke-static {v2, v0}, Lcom/avast/a/a/a/e;->b(Lcom/avast/a/a/a/e;I)I

    .line 3087
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->b()Lcom/avast/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->a()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->a()Lcom/avast/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 3012
    invoke-virtual {p0}, Lcom/avast/a/a/a/f;->c()Lcom/avast/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 3108
    const/4 v0, 0x1

    return v0
.end method
