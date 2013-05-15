.class public final Lcom/avast/android/generic/internet/c/a/ah;
.super Lcom/google/a/n;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/avast/android/generic/internet/c/a/ai;


# instance fields
.field private a:I

.field private b:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7530
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 7531
    invoke-direct {p0}, Lcom/avast/android/generic/internet/c/a/ah;->f()V

    .line 7532
    return-void
.end method

.method static synthetic e()Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1

    .prologue
    .line 7525
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ah;->k()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 7535
    return-void
.end method

.method private static k()Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1

    .prologue
    .line 7537
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ah;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ah;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/a/ah;
    .locals 2

    .prologue
    .line 7548
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ah;->k()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->d()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 7634
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ah;->a:I

    .line 7635
    iput p1, p0, Lcom/avast/android/generic/internet/c/a/ah;->b:F

    .line 7637
    return-object p0
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 7586
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->a()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7590
    :cond_0
    :goto_0
    return-object p0

    .line 7587
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7588
    invoke-virtual {p1}, Lcom/avast/android/generic/internet/c/a/ag;->c()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/internet/c/a/ah;->a(F)Lcom/avast/android/generic/internet/c/a/ah;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7602
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 7603
    sparse-switch v0, :sswitch_data_0

    .line 7608
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7610
    :sswitch_0
    return-object p0

    .line 7615
    :sswitch_1
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ah;->a:I

    .line 7616
    invoke-virtual {p1}, Lcom/google/a/d;->d()F

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/internet/c/a/ah;->b:F

    goto :goto_0

    .line 7603
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 7525
    check-cast p1, Lcom/avast/android/generic/internet/c/a/ag;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/avast/android/generic/internet/c/a/ag;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 1

    .prologue
    .line 7552
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/ag;->a()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7525
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 2

    .prologue
    .line 7556
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->d()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    .line 7557
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/ag;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7558
    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 7560
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7525
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/generic/internet/c/a/ah;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7525
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->a()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/generic/internet/c/a/ag;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 7574
    new-instance v2, Lcom/avast/android/generic/internet/c/a/ag;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/generic/internet/c/a/ag;-><init>(Lcom/avast/android/generic/internet/c/a/ah;Lcom/avast/android/generic/internet/c/a/ac;)V

    .line 7575
    iget v3, p0, Lcom/avast/android/generic/internet/c/a/ah;->a:I

    .line 7576
    const/4 v1, 0x0

    .line 7577
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 7580
    :goto_0
    iget v1, p0, Lcom/avast/android/generic/internet/c/a/ah;->b:F

    invoke-static {v2, v1}, Lcom/avast/android/generic/internet/c/a/ag;->a(Lcom/avast/android/generic/internet/c/a/ag;F)F

    .line 7581
    invoke-static {v2, v0}, Lcom/avast/android/generic/internet/c/a/ag;->a(Lcom/avast/android/generic/internet/c/a/ag;I)I

    .line 7582
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 7525
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->b()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 7525
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->a()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 7525
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->a()Lcom/avast/android/generic/internet/c/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 7525
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/a/ah;->c()Lcom/avast/android/generic/internet/c/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 7594
    const/4 v0, 0x1

    return v0
.end method
