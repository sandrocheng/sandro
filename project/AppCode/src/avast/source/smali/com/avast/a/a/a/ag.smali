.class public final Lcom/avast/a/a/a/ag;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/ai;


# static fields
.field private static final a:Lcom/avast/a/a/a/ag;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10629
    new-instance v0, Lcom/avast/a/a/a/ag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/ag;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/ag;->a:Lcom/avast/a/a/a/ag;

    .line 10630
    sget-object v0, Lcom/avast/a/a/a/ag;->a:Lcom/avast/a/a/a/ag;

    invoke-direct {v0}, Lcom/avast/a/a/a/ag;->h()V

    .line 10631
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/ah;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10328
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 10377
    iput-byte v0, p0, Lcom/avast/a/a/a/ag;->d:B

    .line 10394
    iput v0, p0, Lcom/avast/a/a/a/ag;->e:I

    .line 10329
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/ah;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10323
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/ag;-><init>(Lcom/avast/a/a/a/ah;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10330
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 10377
    iput-byte v0, p0, Lcom/avast/a/a/a/ag;->d:B

    .line 10394
    iput v0, p0, Lcom/avast/a/a/a/ag;->e:I

    .line 10330
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/ag;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10323
    iput p1, p0, Lcom/avast/a/a/a/ag;->b:I

    return p1
.end method

.method public static a()Lcom/avast/a/a/a/ag;
    .locals 1

    .prologue
    .line 10334
    sget-object v0, Lcom/avast/a/a/a/ag;->a:Lcom/avast/a/a/a/ag;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 10485
    invoke-static {}, Lcom/avast/a/a/a/ag;->d()Lcom/avast/a/a/a/ah;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/ah;->a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/ag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10323
    iput-object p1, p0, Lcom/avast/a/a/a/ag;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static d()Lcom/avast/a/a/a/ah;
    .locals 1

    .prologue
    .line 10482
    invoke-static {}, Lcom/avast/a/a/a/ah;->e()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 10363
    iget-object v0, p0, Lcom/avast/a/a/a/ag;->c:Ljava/lang/Object;

    .line 10364
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10365
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 10367
    iput-object v0, p0, Lcom/avast/a/a/a/ag;->c:Ljava/lang/Object;

    .line 10370
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 10375
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ag;->c:Ljava/lang/Object;

    .line 10376
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 10323
    invoke-virtual {p0}, Lcom/avast/a/a/a/ag;->f()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 10323
    invoke-virtual {p0}, Lcom/avast/a/a/a/ag;->e()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 10388
    invoke-virtual {p0}, Lcom/avast/a/a/a/ag;->w()I

    .line 10389
    iget v0, p0, Lcom/avast/a/a/a/ag;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10390
    invoke-direct {p0}, Lcom/avast/a/a/a/ag;->g()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 10392
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10346
    iget v1, p0, Lcom/avast/a/a/a/ag;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10349
    iget-object v0, p0, Lcom/avast/a/a/a/ag;->c:Ljava/lang/Object;

    .line 10350
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10351
    check-cast v0, Ljava/lang/String;

    .line 10359
    :goto_0
    return-object v0

    .line 10353
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 10355
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 10356
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10357
    iput-object v1, p0, Lcom/avast/a/a/a/ag;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 10359
    goto :goto_0
.end method

.method public e()Lcom/avast/a/a/a/ah;
    .locals 1

    .prologue
    .line 10483
    invoke-static {}, Lcom/avast/a/a/a/ag;->d()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/a/a/a/ah;
    .locals 1

    .prologue
    .line 10487
    invoke-static {p0}, Lcom/avast/a/a/a/ag;->a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 10379
    iget-byte v1, p0, Lcom/avast/a/a/a/ag;->d:B

    .line 10380
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 10383
    :goto_0
    return v0

    .line 10380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 10382
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/a/a/ag;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10396
    iget v0, p0, Lcom/avast/a/a/a/ag;->e:I

    .line 10397
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10405
    :goto_0
    return v0

    .line 10399
    :cond_0
    const/4 v0, 0x0

    .line 10400
    iget v1, p0, Lcom/avast/a/a/a/ag;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 10401
    invoke-direct {p0}, Lcom/avast/a/a/a/ag;->g()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10404
    :cond_1
    iput v0, p0, Lcom/avast/a/a/a/ag;->e:I

    goto :goto_0
.end method
