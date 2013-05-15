.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ae;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3436
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    .line 3437
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->k()V

    .line 3438
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ad;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3066
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 3115
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->f:B

    .line 3138
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->g:I

    .line 3067
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ad;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3061
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ad;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3068
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 3115
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->f:B

    .line 3138
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->g:I

    .line 3068
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3061
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c:I

    return p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    .locals 1

    .prologue
    .line 3072
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1
    .parameter

    .prologue
    .line 3237
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3061
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d:I

    return p1
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3061
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->e:I

    return p1
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3061
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    return p1
.end method

.method public static h()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1

    .prologue
    .line 3234
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ad;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3111
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c:I

    .line 3112
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d:I

    .line 3113
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->e:I

    .line 3114
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3061
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3061
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->i()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3126
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->w()I

    .line 3127
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3128
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->d(II)V

    .line 3130
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3131
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d:I

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->d(II)V

    .line 3133
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3134
    const/4 v0, 0x3

    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->d(II)V

    .line 3136
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3084
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 3087
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3094
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

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

.method public e()I
    .locals 1

    .prologue
    .line 3097
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d:I

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3104
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

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

.method public g()I
    .locals 1

    .prologue
    .line 3107
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->e:I

    return v0
.end method

.method public i()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1

    .prologue
    .line 3235
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/avast/android/mobilesecurity/engine/internal/a/ad;
    .locals 1

    .prologue
    .line 3239
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ac;)Lcom/avast/android/mobilesecurity/engine/internal/a/ad;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3117
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->f:B

    .line 3118
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3121
    :goto_0
    return v0

    .line 3118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3120
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->f:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3140
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->g:I

    .line 3141
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3157
    :goto_0
    return v0

    .line 3143
    :cond_0
    const/4 v0, 0x0

    .line 3144
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3145
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c:I

    invoke-static {v2, v1}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3148
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3149
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->d:I

    invoke-static {v3, v1}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3152
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 3153
    const/4 v1, 0x3

    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->e:I

    invoke-static {v1, v2}, Lcom/google/a/e;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3156
    :cond_3
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->g:I

    goto :goto_0
.end method
