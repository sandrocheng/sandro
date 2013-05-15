.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/i;
.super Lcom/google/a/n;
.source "TypoSquattingConfirmProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/l;


# instance fields
.field private a:I

.field private b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1374
    invoke-direct {p0}, Lcom/google/a/n;-><init>()V

    .line 1474
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1375
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->f()V

    .line 1376
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/i;)Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 1
    .parameter

    .prologue
    .line 1369
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1

    .prologue
    .line 1369
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 0

    .prologue
    .line 1379
    return-void
.end method

.method private static k()Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1

    .prologue
    .line 1381
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;-><init>()V

    return-object v0
.end method

.method private l()Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 2

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    .line 1410
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1411
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/al;->a()Lcom/google/a/x;

    move-result-object v0

    throw v0

    .line 1414
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 2

    .prologue
    .line 1392
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1430
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1434
    :cond_0
    :goto_0
    return-object p0

    .line 1431
    :cond_1
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/j;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    goto :goto_0
.end method

.method public a(Lcom/avast/android/mobilesecurity/engine/internal/a/j;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 1
    .parameter

    .prologue
    .line 1482
    if-nez p1, :cond_0

    .line 1483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1485
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a:I

    .line 1486
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1488
    return-object p0
.end method

.method public a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1446
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/a/d;->a()I

    move-result v0

    .line 1447
    sparse-switch v0, :sswitch_data_0

    .line 1452
    invoke-virtual {p0, p1, p2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/google/a/d;Lcom/google/a/g;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1454
    :sswitch_0
    return-object p0

    .line 1459
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/a/d;->n()I

    move-result v0

    .line 1460
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    move-result-object v0

    .line 1461
    if-eqz v0, :cond_0

    .line 1462
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a:I

    .line 1463
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    goto :goto_0

    .line 1447
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic a(Lcom/google/a/l;)Lcom/google/a/n;
    .locals 1
    .parameter

    .prologue
    .line 1369
    check-cast p1, Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 1

    .prologue
    .line 1396
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1369
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 2

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->d()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    .line 1401
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->v()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1402
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/google/a/aa;)Lcom/google/a/al;

    move-result-object v0

    throw v0

    .line 1404
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/a/d;Lcom/google/a/g;)Lcom/google/a/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1369
    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a(Lcom/google/a/d;Lcom/google/a/g;)Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1418
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/i;Lcom/avast/android/mobilesecurity/engine/internal/a/b;)V

    .line 1419
    iget v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a:I

    .line 1420
    const/4 v1, 0x0

    .line 1421
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    .line 1424
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    invoke-static {v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;Lcom/avast/android/mobilesecurity/engine/internal/a/j;)Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1425
    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/h;I)I

    .line 1426
    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public synthetic g()Lcom/google/a/l;
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->b()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/a/n;
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/google/a/b;
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j()Lcom/google/a/aa;
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/i;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x1

    return v0
.end method
