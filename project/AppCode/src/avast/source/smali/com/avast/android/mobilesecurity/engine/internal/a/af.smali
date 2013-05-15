.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/af;
.super Lcom/google/a/l;
.source "WebShieldProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/ah;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/af;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

.field private f:Z

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3990
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    .line 3991
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->o()V

    .line 3992
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ag;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3467
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 3571
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->g:B

    .line 3597
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->h:I

    .line 3468
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ag;Lcom/avast/android/mobilesecurity/engine/internal/a/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3462
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/ag;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3469
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 3571
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->g:B

    .line 3597
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->h:I

    .line 3469
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3462
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    .locals 1

    .prologue
    .line 3473
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1
    .parameter

    .prologue
    .line 3700
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Lcom/avast/android/mobilesecurity/engine/internal/a/ai;)Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3462
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3462
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3462
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/af;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3462
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static j()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1

    .prologue
    .line 3697
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ag;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method private m()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3502
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c:Ljava/lang/Object;

    .line 3503
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3504
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3506
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c:Ljava/lang/Object;

    .line 3509
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private n()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d:Ljava/lang/Object;

    .line 3535
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3536
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 3538
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d:Ljava/lang/Object;

    .line 3541
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 3566
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c:Ljava/lang/Object;

    .line 3567
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d:Ljava/lang/Object;

    .line 3568
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    .line 3569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->f:Z

    .line 3570
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3462
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 3462
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3582
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->w()I

    .line 3583
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 3584
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->m()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3586
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 3587
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->n()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 3589
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 3590
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 3592
    :cond_2
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 3593
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->f:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(IZ)V

    .line 3595
    :cond_3
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3485
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

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
    .line 3488
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c:Ljava/lang/Object;

    .line 3489
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3490
    check-cast v0, Ljava/lang/String;

    .line 3498
    :goto_0
    return-object v0

    .line 3492
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3494
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3495
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3496
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3498
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 3517
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

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
    .line 3520
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d:Ljava/lang/Object;

    .line 3521
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3522
    check-cast v0, Ljava/lang/String;

    .line 3530
    :goto_0
    return-object v0

    .line 3524
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 3526
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 3527
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3528
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 3530
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 3549
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

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

.method public g()Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 3559
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 3562
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->f:Z

    return v0
.end method

.method public k()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1

    .prologue
    .line 3698
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/avast/android/mobilesecurity/engine/internal/a/ag;
    .locals 1

    .prologue
    .line 3702
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/af;)Lcom/avast/android/mobilesecurity/engine/internal/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3573
    iget-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->g:B

    .line 3574
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 3577
    :goto_0
    return v0

    .line 3574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3576
    :cond_1
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->g:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3599
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->h:I

    .line 3600
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3620
    :goto_0
    return v0

    .line 3602
    :cond_0
    const/4 v0, 0x0

    .line 3603
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 3604
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->m()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3607
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 3608
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->n()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3611
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 3612
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e:Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3615
    :cond_3
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 3616
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->f:Z

    invoke-static {v4, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3619
    :cond_4
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->h:I

    goto :goto_0
.end method
