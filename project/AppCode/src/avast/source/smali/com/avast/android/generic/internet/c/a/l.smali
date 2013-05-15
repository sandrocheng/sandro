.class public final Lcom/avast/android/generic/internet/c/a/l;
.super Lcom/google/a/l;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/p;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/l;


# instance fields
.field private b:I

.field private c:Lcom/avast/android/generic/internet/c/a/n;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2490
    new-instance v0, Lcom/avast/android/generic/internet/c/a/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/l;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/l;->a:Lcom/avast/android/generic/internet/c/a/l;

    .line 2491
    sget-object v0, Lcom/avast/android/generic/internet/c/a/l;->a:Lcom/avast/android/generic/internet/c/a/l;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/l;->g()V

    .line 2492
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/m;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2166
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 2246
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/l;->d:B

    .line 2263
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/l;->e:I

    .line 2167
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/m;Lcom/avast/android/generic/internet/c/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2161
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/l;-><init>(Lcom/avast/android/generic/internet/c/a/m;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2168
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 2246
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/l;->d:B

    .line 2263
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/l;->e:I

    .line 2168
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/l;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2161
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/l;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/l;
    .locals 1

    .prologue
    .line 2172
    sget-object v0, Lcom/avast/android/generic/internet/c/a/l;->a:Lcom/avast/android/generic/internet/c/a/l;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/android/generic/internet/c/a/l;
    .locals 1
    .parameter

    .prologue
    .line 2309
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/l;->d()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/m;->a(Ljava/io/InputStream;)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/c/a/m;

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/avast/android/generic/internet/c/a/m;)Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/l;)Lcom/avast/android/generic/internet/c/a/m;
    .locals 1
    .parameter

    .prologue
    .line 2354
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/l;->d()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/m;->a(Lcom/avast/android/generic/internet/c/a/l;)Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/l;Lcom/avast/android/generic/internet/c/a/n;)Lcom/avast/android/generic/internet/c/a/n;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/avast/android/generic/internet/c/a/l;->c:Lcom/avast/android/generic/internet/c/a/n;

    return-object p1
.end method

.method public static d()Lcom/avast/android/generic/internet/c/a/m;
    .locals 1

    .prologue
    .line 2351
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/m;->e()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 2244
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->a:Lcom/avast/android/generic/internet/c/a/n;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/a/l;->c:Lcom/avast/android/generic/internet/c/a/n;

    .line 2245
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/l;->f()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2161
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/l;->e()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2257
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/l;->w()I

    .line 2258
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/l;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/l;->c:Lcom/avast/android/generic/internet/c/a/n;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/n;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 2261
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2237
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/l;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/n;
    .locals 1

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/a/l;->c:Lcom/avast/android/generic/internet/c/a/n;

    return-object v0
.end method

.method public e()Lcom/avast/android/generic/internet/c/a/m;
    .locals 1

    .prologue
    .line 2352
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/l;->d()Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/android/generic/internet/c/a/m;
    .locals 1

    .prologue
    .line 2356
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/l;->a(Lcom/avast/android/generic/internet/c/a/l;)Lcom/avast/android/generic/internet/c/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2248
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/l;->d:B

    .line 2249
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2252
    :goto_0
    return v0

    .line 2249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2251
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/l;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2265
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/l;->e:I

    .line 2266
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2274
    :goto_0
    return v0

    .line 2268
    :cond_0
    const/4 v0, 0x0

    .line 2269
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/l;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 2270
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/a/l;->c:Lcom/avast/android/generic/internet/c/a/n;

    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/n;->a()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2273
    :cond_1
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/l;->e:I

    goto :goto_0
.end method
