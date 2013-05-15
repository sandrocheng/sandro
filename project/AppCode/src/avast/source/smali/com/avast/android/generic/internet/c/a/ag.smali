.class public final Lcom/avast/android/generic/internet/c/a/ag;
.super Lcom/google/a/l;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/ai;


# static fields
.field private static final a:Lcom/avast/android/generic/internet/c/a/ag;


# instance fields
.field private b:I

.field private c:F

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7650
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/generic/internet/c/a/ag;-><init>(Z)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ag;->a:Lcom/avast/android/generic/internet/c/a/ag;

    .line 7651
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ag;->a:Lcom/avast/android/generic/internet/c/a/ag;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ag;->g()V

    .line 7652
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/generic/internet/c/a/ah;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7386
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 7413
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->d:B

    .line 7430
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->e:I

    .line 7387
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/generic/internet/c/a/ah;Lcom/avast/android/generic/internet/c/a/ac;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7381
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/a/ag;-><init>(Lcom/avast/android/generic/internet/c/a/ah;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 7388
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 7413
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->d:B

    .line 7430
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->e:I

    .line 7388
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ag;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7381
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ag;->c:F

    return p1
.end method

.method static synthetic a(Lcom/avast/android/generic/internet/c/a/ag;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7381
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ag;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 1

    .prologue
    .line 7392
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ag;->a:Lcom/avast/android/generic/internet/c/a/ag;

    return-object v0
.end method

.method public static a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 7521
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->d()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1

    .prologue
    .line 7518
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ah;->e()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 7411
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->c:F

    .line 7412
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 7381
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ag;->f()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 7381
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ag;->e()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 7424
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ag;->w()I

    .line 7425
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 7426
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->c:F

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(IF)V

    .line 7428
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 7404
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ag;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 7407
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->c:F

    return v0
.end method

.method public e()Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1

    .prologue
    .line 7519
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->d()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1

    .prologue
    .line 7523
    invoke-static {p0}, Lcom/avast/android/generic/internet/c/a/ag;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 7415
    iget-byte v1, p0, Lcom/avast/android/generic/internet/c/a/ag;->d:B

    .line 7416
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 7419
    :goto_0
    return v0

    .line 7416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7418
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 7432
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->e:I

    .line 7433
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7441
    :goto_0
    return v0

    .line 7435
    :cond_0
    const/4 v0, 0x0

    .line 7436
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ag;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 7437
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ag;->c:F

    invoke-static {v2, v1}, Lcom/google/a/e;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 7440
    :cond_1
    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ag;->e:I

    goto :goto_0
.end method
