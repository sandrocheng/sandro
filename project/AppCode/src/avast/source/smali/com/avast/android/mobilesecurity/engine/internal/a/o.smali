.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/o;
.super Lcom/google/a/l;
.source "VpsInfoProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/t;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/o;


# instance fields
.field private b:I

.field private c:I

.field private d:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

.field private e:B

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 922
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    .line 923
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->i()V

    .line 924
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/p;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 597
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e:B

    .line 627
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/p;Lcom/avast/android/mobilesecurity/engine/internal/a/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/p;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 597
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e:B

    .line 627
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f:I

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->c:I

    return p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    return-object v0
.end method

.method public static a([B)Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    .locals 1
    .parameter

    .prologue
    .line 666
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a([B)Lcom/google/a/b;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/p;)Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1
    .parameter

    .prologue
    .line 722
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/o;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

    return p1
.end method

.method public static f()Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1

    .prologue
    .line 719
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/p;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->c:I

    .line 595
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    .line 596
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->g()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 618
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->w()I

    .line 619
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 620
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->c:I

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->b(II)V

    .line 622
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 623
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 625
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 577
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

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
    .line 580
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

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

.method public e()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    return-object v0
.end method

.method public g()Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1

    .prologue
    .line 720
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f()Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/avast/android/mobilesecurity/engine/internal/a/p;
    .locals 1

    .prologue
    .line 724
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/o;)Lcom/avast/android/mobilesecurity/engine/internal/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 599
    iget-byte v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e:B

    .line 600
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 613
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 600
    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 603
    iput-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e:B

    move v0, v1

    .line 604
    goto :goto_0

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 607
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->v()Z

    move-result v2

    if-nez v2, :cond_3

    .line 608
    iput-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e:B

    move v0, v1

    .line 609
    goto :goto_0

    .line 612
    :cond_3
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e:B

    goto :goto_0
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 629
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f:I

    .line 630
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 642
    :goto_0
    return v0

    .line 632
    :cond_0
    const/4 v0, 0x0

    .line 633
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 634
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->c:I

    invoke-static {v2, v1}, Lcom/google/a/e;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 637
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 638
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-static {v3, v1}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_2
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->f:I

    goto :goto_0
.end method
