.class public final Lcom/avast/android/generic/internet/c/a/g;
.super Lcom/google/a/n;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/h;


# instance fields
.field private a:I

.field private b:Lcom/google/a/c;

.field private c:Lcom/google/a/c;

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Lcom/google/a/c;

.field private g:Lcom/avast/android/generic/internet/c/a/t;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3869
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 4039
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->b:Lcom/google/a/c;

    .line 4063
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->c:Lcom/google/a/c;

    .line 4108
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->e:Ljava/lang/Object;

    .line 4144
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->f:Lcom/google/a/c;

    .line 4168
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->a()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    .line 3870
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/g;->l()V

    .line 3871
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/g;)Lcom/avast/android/generic/internet/c/a/f;
    .locals 1
    .parameter

    .prologue
    .line 3864
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/g;->n()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k()Lcom/avast/android/generic/internet/c/a/g;
    .locals 1

    .prologue
    .line 3864
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/g;->m()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 0

    .prologue
    .line 3874
    return-void
.end method

.method private static m()Lcom/avast/android/generic/internet/c/a/g;
    .locals 1

    .prologue
    .line 3876
    new-instance v0, Lcom/avast/android/generic/internet/c/a/g;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/g;-><init>()V

    return-object v0
.end method

.method private n()Lcom/avast/android/generic/internet/c/a/f;
    .locals 2

    .prologue
    .line 3914
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->d()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    .line 3915
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/f;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3916
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 3919
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/g;
    .locals 2

    .prologue
    .line 3897
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/g;->m()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->d()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/avast/android/generic/internet/c/a/f;)Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 4095
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4096
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/g;->d:I

    .line 4098
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/f;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 3955
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/f;->a()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3974
    :cond_0
    :goto_0
    return-object p0

    .line 3956
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3957
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->c()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/g;

    .line 3959
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3960
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->e()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/g;

    .line 3962
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3963
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->a(I)Lcom/avast/android/generic/internet/c/a/g;

    .line 3965
    :cond_4
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3966
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/g;

    .line 3968
    :cond_5
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3969
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->k()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/g;

    .line 3971
    :cond_6
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3972
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/f;->m()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->b(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/g;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 4176
    if-nez p1, :cond_0

    .line 4177
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4179
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    .line 4181
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4182
    return-object p0
.end method

.method public a(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 4047
    if-nez p1, :cond_0

    .line 4048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4050
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4051
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/g;->b:Lcom/google/a/c;

    .line 4053
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3986
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3987
    sparse-switch v0, :sswitch_data_0

    .line 3992
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3994
    :sswitch_0
    return-object p0

    .line 3999
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4000
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->b:Lcom/google/a/c;

    goto :goto_0

    .line 4004
    :sswitch_2
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4005
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->c:Lcom/google/a/c;

    goto :goto_0

    .line 4009
    :sswitch_3
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4010
    invoke-virtual {p1}, Lcom/google/a/d;->g()I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->d:I

    goto :goto_0

    .line 4014
    :sswitch_4
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4015
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->f:Lcom/google/a/c;

    goto :goto_0

    .line 4019
    :sswitch_5
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4020
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->e:Ljava/lang/Object;

    goto :goto_0

    .line 4024
    :sswitch_6
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->h()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    .line 4025
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4026
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->f()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    .line 4028
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/google/a/d;->a(Lcom/google/a/ab;Lcom/google/a/g;)V

    .line 4029
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/u;->d()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/g;

    goto :goto_0

    .line 3987
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 4123
    if-nez p1, :cond_0

    .line 4124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4126
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4127
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/g;->e:Ljava/lang/Object;

    .line 4129
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 3864
    check-cast p1, Lcom/avast/android/generic/internet/c/a/f;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/avast/android/generic/internet/c/a/f;)Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/f;
    .locals 1

    .prologue
    .line 3901
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/f;->a()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 2
    .parameter

    .prologue
    .line 4192
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->a()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4194
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/t;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/u;->d()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    .line 4200
    :goto_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4201
    return-object p0

    .line 4197
    :cond_0
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    goto :goto_0
.end method

.method public b(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 4071
    if-nez p1, :cond_0

    .line 4072
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4074
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4075
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/g;->c:Lcom/google/a/c;

    .line 4077
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3864
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/f;
    .locals 2

    .prologue
    .line 3905
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->d()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    .line 3906
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/f;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3907
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 3909
    :cond_0
    return-object v0
.end method

.method public c(Lcom/google/a/c;)Lcom/avast/android/generic/internet/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 4152
    if-nez p1, :cond_0

    .line 4153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4155
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 4156
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/g;->f:Lcom/google/a/c;

    .line 4158
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3864
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/g;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3864
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->a()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/f;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3923
    new-instance v2, Lcom/avast/android/generic/internet/c/a/f;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/f;-><init>(Lcom/avast/android/generic/internet/c/a/g;Lcom/avast/android/generic/internet/c/a/b;)V

    .line 3924
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

    .line 3925
    const/4 v1, 0x0

    .line 3926
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    .line 3929
    :goto_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/g;->b:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/f;->a(Lcom/avast/android/generic/internet/c/a/f;Lcom/google/a/c;)Lcom/google/a/c;

    .line 3930
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3931
    or-int/lit8 v0, v0, 0x2

    .line 3933
    :cond_0
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/g;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/f;->b(Lcom/avast/android/generic/internet/c/a/f;Lcom/google/a/c;)Lcom/google/a/c;

    .line 3934
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 3935
    or-int/lit8 v0, v0, 0x4

    .line 3937
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/g;->d:I

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/f;->a(Lcom/avast/android/generic/internet/c/a/f;I)I

    .line 3938
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 3939
    or-int/lit8 v0, v0, 0x8

    .line 3941
    :cond_2
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/g;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/f;->a(Lcom/avast/android/generic/internet/c/a/f;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3942
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 3943
    or-int/lit8 v0, v0, 0x10

    .line 3945
    :cond_3
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/g;->f:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/f;->c(Lcom/avast/android/generic/internet/c/a/f;Lcom/google/a/c;)Lcom/google/a/c;

    .line 3946
    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    .line 3947
    or-int/lit8 v0, v0, 0x20

    .line 3949
    :cond_4
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/f;->a(Lcom/avast/android/generic/internet/c/a/f;Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/t;

    .line 3950
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/f;->b(Lcom/avast/android/generic/internet/c/a/f;I)I

    .line 3951
    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 4170
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/g;->a:I

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

.method public f()Lcom/avast/android/generic/internet/c/a/t;
    .locals 1

    .prologue
    .line 4173
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/g;->g:Lcom/avast/android/generic/internet/c/a/t;

    return-object v0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 3864
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->b()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 3864
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->a()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 3864
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->a()Lcom/avast/android/generic/internet/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 3864
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/g;->c()Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 3978
    const/4 v0, 0x1

    return v0
.end method
