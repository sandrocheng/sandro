.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/aq;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/ao;


# instance fields
.field private b:Ljava/util/List;

.field private c:B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2585
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    .line 2586
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->f()V

    .line 2587
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ap;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2236
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 2273
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c:B

    .line 2290
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->d:I

    .line 2237
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ap;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2231
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ap;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2238
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 2273
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c:B

    .line 2290
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->d:I

    .line 2238
    return-void
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 1

    .prologue
    .line 2242
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    .locals 1
    .parameter

    .prologue
    .line 2336
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Ljava/io/InputStream;)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ap;)Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 2381
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    return-object v0
.end method

.method public static c()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1

    .prologue
    .line 2378
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ap;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 2271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    .line 2272
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 1
    .parameter

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    .line 2284
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->w()I

    .line 2285
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2286
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 2285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2288
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2260
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1

    .prologue
    .line 2379
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/avast/android/mobilesecurity/engine/internal/a/ap;
    .locals 1

    .prologue
    .line 2383
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/ao;)Lcom/avast/android/mobilesecurity/engine/internal/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2275
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c:B

    .line 2276
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 2279
    :goto_0
    return v0

    .line 2276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2278
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->c:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2292
    iget v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->d:I

    .line 2293
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 2301
    :goto_0
    return v2

    :cond_0
    move v1, v0

    move v2, v0

    .line 2296
    :goto_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2297
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v3, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v2, v0

    .line 2296
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2300
    :cond_1
    iput v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->d:I

    goto :goto_0
.end method
