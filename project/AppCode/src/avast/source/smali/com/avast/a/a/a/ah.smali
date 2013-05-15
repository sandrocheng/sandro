.class public final Lcom/avast/a/a/a/ah;
.super Lcom/google/a/n;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/ai;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10494
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 10590
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/ah;->b:Ljava/lang/Object;

    .line 10495
    invoke-direct {p0}, Lcom/avast/a/a/a/ah;->f()V

    .line 10496
    return-void
.end method

.method static synthetic e()Lcom/avast/a/a/a/ah;
    .locals 1

    .prologue
    .line 10489
    invoke-static {}, Lcom/avast/a/a/a/ah;->k()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 10499
    return-void
.end method

.method private static k()Lcom/avast/a/a/a/ah;
    .locals 1

    .prologue
    .line 10501
    new-instance v0, Lcom/avast/a/a/a/ah;

    invoke-direct {v0}, Lcom/avast/a/a/a/ah;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/a/a/a/ah;
    .locals 2

    .prologue
    .line 10512
    invoke-static {}, Lcom/avast/a/a/a/ah;->k()Lcom/avast/a/a/a/ah;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->d()Lcom/avast/a/a/a/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/a/a/ah;->a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 10550
    invoke-static {}, Lcom/avast/a/a/a/ag;->a()Lcom/avast/a/a/a/ag;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 10554
    :cond_0
    :goto_0
    return-object p0

    .line 10551
    :cond_1
    invoke-virtual {p1}, Lcom/avast/a/a/a/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10552
    invoke-virtual {p1}, Lcom/avast/a/a/a/ag;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/a/a/a/ah;->a(Ljava/lang/String;)Lcom/avast/a/a/a/ah;

    goto :goto_0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10566
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 10567
    sparse-switch v0, :sswitch_data_0

    .line 10572
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/a/a/a/ah;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10574
    :sswitch_0
    return-object p0

    .line 10579
    :sswitch_1
    iget v0, p0, Lcom/avast/a/a/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/ah;->a:I

    .line 10580
    invoke-virtual {p1}, Lcom/google/a/d;->l()Lcom/google/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/ah;->b:Ljava/lang/Object;

    goto :goto_0

    .line 10567
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/avast/a/a/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 10605
    if-nez p1, :cond_0

    .line 10606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10608
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/ah;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/a/a/ah;->a:I

    .line 10609
    iput-object p1, p0, Lcom/avast/a/a/a/ah;->b:Ljava/lang/Object;

    .line 10611
    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 10489
    check-cast p1, Lcom/avast/a/a/a/ag;

    invoke-virtual {p0, p1}, Lcom/avast/a/a/a/ah;->a(Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/a/a/a/ag;
    .locals 1

    .prologue
    .line 10516
    invoke-static {}, Lcom/avast/a/a/a/ag;->a()Lcom/avast/a/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10489
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/ah;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/a/a/a/ag;
    .locals 2

    .prologue
    .line 10520
    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->d()Lcom/avast/a/a/a/ag;

    move-result-object v0

    .line 10521
    invoke-virtual {v0}, Lcom/avast/a/a/a/ag;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10522
    invoke-static {v0}, Lcom/avast/a/a/a/ah;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 10524
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10489
    invoke-virtual {p0, p1, p2}, Lcom/avast/a/a/a/ah;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10489
    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->a()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/a/a/a/ag;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 10538
    new-instance v2, Lcom/avast/a/a/a/ag;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/a/a/a/ag;-><init>(Lcom/avast/a/a/a/ah;Lcom/avast/a/a/a/l;)V

    .line 10539
    iget v3, p0, Lcom/avast/a/a/a/ah;->a:I

    .line 10540
    const/4 v1, 0x0

    .line 10541
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 10544
    :goto_0
    iget-object v1, p0, Lcom/avast/a/a/a/ah;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/avast/a/a/a/ag;->a(Lcom/avast/a/a/a/ag;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10545
    invoke-static {v2, v0}, Lcom/avast/a/a/a/ag;->a(Lcom/avast/a/a/a/ag;I)I

    .line 10546
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 10489
    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->b()Lcom/avast/a/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 10489
    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->a()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 10489
    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->a()Lcom/avast/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 10489
    invoke-virtual {p0}, Lcom/avast/a/a/a/ah;->c()Lcom/avast/a/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 10558
    const/4 v0, 0x1

    return v0
.end method
