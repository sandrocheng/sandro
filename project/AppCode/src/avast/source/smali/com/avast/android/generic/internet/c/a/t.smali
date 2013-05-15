.class public final Lcom/avast/android/generic/internet/c/a/t;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/aa;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/t;


# instance fields
.field private b:I

.field private c:Lcom/google/a/c;

.field private d:Ljava/lang/Object;

.field private e:Lcom/avast/android/generic/internet/c/a/v;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3574
    new-instance v0, Lcom/avast/android/generic/internet/c/a/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/t;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/t;->a:Lcom/avast/android/generic/internet/c/a/t;

    .line 3575
    sget-object v0, Lcom/avast/android/generic/internet/c/a/t;->a:Lcom/avast/android/generic/internet/c/a/t;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/t;->l()V

    .line 3576
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/u;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2517
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 3209
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/t;->f:B

    .line 3232
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/t;->g:I

    .line 2518
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/u;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2512
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/t;-><init>(Lcom/avast/android/generic/internet/c/a/u;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2519
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 3209
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/t;->f:B

    .line 3232
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/t;->g:I

    .line 2519
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2512
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/t;
    .locals 1

    .prologue
    .line 2523
    sget-object v0, Lcom/avast/android/generic/internet/c/a/t;->a:Lcom/avast/android/generic/internet/c/a/t;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;
    .locals 1
    .parameter

    .prologue
    .line 3331
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->h()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/u;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/t;Lcom/avast/android/generic/internet/c/a/v;)Lcom/avast/android/generic/internet/c/a/v;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/t;->e:Lcom/avast/android/generic/internet/c/a/v;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/t;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/t;->c:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/t;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2512
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/t;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/avast/android/generic/internet/c/a/u;
    .locals 1

    .prologue
    .line 3328
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/u;->k()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->d:Ljava/lang/Object;

    .line 3184
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3185
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3187
    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->d:Ljava/lang/Object;

    .line 3190
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 3205
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->c:Lcom/google/a/c;

    .line 3206
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->d:Ljava/lang/Object;

    .line 3207
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/v;->a()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->e:Lcom/avast/android/generic/internet/c/a/v;

    .line 3208
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2512
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/t;->j()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2512
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/t;->i()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3220
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/t;->w()I

    .line 3221
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3222
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->c:Lcom/google/a/c;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3224
    :cond_0
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3225
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/t;->k()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3227
    :cond_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3228
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/t;->e:Lcom/avast/android/generic/internet/c/a/v;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 3230
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3156
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->c:Lcom/google/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3166
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

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

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->d:Ljava/lang/Object;

    .line 3170
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3171
    check-cast v0, Ljava/lang/String;

    .line 3179
    :goto_0
    return-object v0

    .line 3173
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3175
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3176
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3177
    iput-object v1, p0, Lcom/avast/android/generic/internet/c/a/t;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3179
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3198
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

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

.method public g()Lcom/avast/android/generic/internet/c/a/v;
    .locals 1

    .prologue
    .line 3201
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/t;->e:Lcom/avast/android/generic/internet/c/a/v;

    return-object v0
.end method

.method public i()Lcom/avast/android/generic/internet/c/a/u;
    .locals 1

    .prologue
    .line 3329
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/t;->h()Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/avast/android/generic/internet/c/a/u;
    .locals 1

    .prologue
    .line 3333
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/t;->a(Lcom/avast/android/generic/internet/c/a/t;)Lcom/avast/android/generic/internet/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3211
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/t;->f:B

    .line 3212
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3215
    :goto_0
    return v0

    .line 3212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3214
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/t;->f:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3234
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/t;->g:I

    .line 3235
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3251
    :goto_0
    return v0

    .line 3237
    :cond_0
    const/4 v0, 0x0

    .line 3238
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3239
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/t;->c:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3242
    :cond_1
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3243
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/t;->k()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3246
    :cond_2
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/t;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 3247
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/a/t;->e:Lcom/avast/android/generic/internet/c/a/v;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3250
    :cond_3
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/t;->g:I

    goto :goto_0
.end method
