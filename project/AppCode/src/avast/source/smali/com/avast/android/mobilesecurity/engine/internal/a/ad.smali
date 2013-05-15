.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
.super Lcom/google/a/n;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ae;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3246
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 3247
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->f()V

    .line 3248
    return-void
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1

    .prologue
    .line 3241
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 3251
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1

    .prologue
    .line 3253
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 2

    .prologue
    .line 3268
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 3378
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3379
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->b:I

    .line 3381
    return-object p0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 3314
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3324
    :cond_0
    :goto_0
    return-object p0

    .line 3315
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3316
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    .line 3318
    :cond_2
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3319
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->b(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    .line 3321
    :cond_3
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3322
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->c(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3336
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 3337
    sparse-switch v0, :sswitch_data_0

    .line 3342
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3344
    :sswitch_0
    return-object p0

    .line 3349
    :sswitch_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3350
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->b:I

    goto :goto_0

    .line 3354
    :sswitch_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3355
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->c:I

    goto :goto_0

    .line 3359
    :sswitch_3
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3360
    invoke-virtual {p1}, Lcom/google/a/d;->q()I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d:I

    goto :goto_0

    .line 3337
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 3241
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 1

    .prologue
    .line 3272
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 3399
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3400
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->c:I

    .line 3402
    return-object p0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3241
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 2

    .prologue
    .line 3276
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    .line 3277
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3278
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 3280
    :cond_0
    return-object v0
.end method

.method public c(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 3420
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3421
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d:I

    .line 3423
    return-object p0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3241
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 3294
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ad;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V

    .line 3295
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a:I

    .line 3296
    const/4 v1, 0x0

    .line 3297
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    .line 3300
    :goto_0
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->b:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I

    .line 3301
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3302
    or-int/lit8 v0, v0, 0x2

    .line 3304
    :cond_0
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->c:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I

    .line 3305
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 3306
    or-int/lit8 v0, v0, 0x4

    .line 3308
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->d:I

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I

    .line 3309
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I

    .line 3310
    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 3241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 3241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 3241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 3241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 3328
    const/4 v0, 0x1

    return v0
.end method
