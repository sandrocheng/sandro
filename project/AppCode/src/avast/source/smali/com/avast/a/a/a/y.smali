.class public final Lcom/avast/a/a/a/y;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/ac;


# static fields
.field private static final a:Lcom/avast/a/a/a/y;


# instance fields
.field private b:I

.field private c:Lcom/avast/a/a/a/aa;

.field private d:B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10980
    new-instance v0, Lcom/avast/a/a/a/y;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/y;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/y;->a:Lcom/avast/a/a/a/y;

    .line 10981
    sget-object v0, Lcom/avast/a/a/a/y;->a:Lcom/avast/a/a/a/y;

    invoke-direct {v0}, Lcom/avast/a/a/a/y;->g()V

    .line 10982
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/z;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10648
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 10728
    iput-byte v0, p0, Lcom/avast/a/a/a/y;->d:B

    .line 10749
    iput v0, p0, Lcom/avast/a/a/a/y;->e:I

    .line 10649
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/z;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10643
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/y;-><init>(Lcom/avast/a/a/a/z;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10650
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 10728
    iput-byte v0, p0, Lcom/avast/a/a/a/y;->d:B

    .line 10749
    iput v0, p0, Lcom/avast/a/a/a/y;->e:I

    .line 10650
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/y;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10643
    iput p1, p0, Lcom/avast/a/a/a/y;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/y;Lcom/avast/a/a/a/aa;)Lcom/avast/a/a/a/aa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10643
    iput-object p1, p0, Lcom/avast/a/a/a/y;->c:Lcom/avast/a/a/a/aa;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/y;
    .locals 1

    .prologue
    .line 10654
    sget-object v0, Lcom/avast/a/a/a/y;->a:Lcom/avast/a/a/a/y;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/z;
    .locals 1
    .parameter

    .prologue
    .line 10840
    invoke-static {}, Lcom/avast/a/a/a/y;->d()Lcom/avast/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/z;->a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/avast/a/a/a/z;
    .locals 1

    .prologue
    .line 10837
    invoke-static {}, Lcom/avast/a/a/a/z;->f()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 10726
    sget-object v0, Lcom/avast/a/a/a/aa;->a:Lcom/avast/a/a/a/aa;

    iput-object v0, p0, Lcom/avast/a/a/a/y;->c:Lcom/avast/a/a/a/aa;

    .line 10727
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 10643
    invoke-virtual {p0}, Lcom/avast/a/a/a/y;->f()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 10643
    invoke-virtual {p0}, Lcom/avast/a/a/a/y;->e()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 10743
    invoke-virtual {p0}, Lcom/avast/a/a/a/y;->w()I

    .line 10744
    iget v0, p0, Lcom/avast/a/a/a/y;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 10745
    iget-object v0, p0, Lcom/avast/a/a/a/y;->c:Lcom/avast/a/a/a/aa;

    invoke-virtual {v0}, Lcom/avast/a/a/a/aa;->a()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->c(II)V

    .line 10747
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10719
    iget v1, p0, Lcom/avast/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/avast/a/a/a/aa;
    .locals 1

    .prologue
    .line 10722
    iget-object v0, p0, Lcom/avast/a/a/a/y;->c:Lcom/avast/a/a/a/aa;

    return-object v0
.end method

.method public e()Lcom/avast/a/a/a/z;
    .locals 1

    .prologue
    .line 10838
    invoke-static {}, Lcom/avast/a/a/a/y;->d()Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/avast/a/a/a/z;
    .locals 1

    .prologue
    .line 10842
    invoke-static {p0}, Lcom/avast/a/a/a/y;->a(Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/z;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 10730
    iget-byte v2, p0, Lcom/avast/a/a/a/y;->d:B

    .line 10731
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 10738
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 10731
    goto :goto_0

    .line 10733
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/y;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 10734
    iput-byte v1, p0, Lcom/avast/a/a/a/y;->d:B

    move v0, v1

    .line 10735
    goto :goto_0

    .line 10737
    :cond_2
    iput-byte v0, p0, Lcom/avast/a/a/a/y;->d:B

    goto :goto_0
.end method

.method public w()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10751
    iget v0, p0, Lcom/avast/a/a/a/y;->e:I

    .line 10752
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10760
    :goto_0
    return v0

    .line 10754
    :cond_0
    const/4 v0, 0x0

    .line 10755
    iget v1, p0, Lcom/avast/a/a/a/y;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 10756
    iget-object v1, p0, Lcom/avast/a/a/a/y;->c:Lcom/avast/a/a/a/aa;

    invoke-virtual {v1}, Lcom/avast/a/a/a/aa;->a()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10759
    :cond_1
    iput v0, p0, Lcom/avast/a/a/a/y;->e:I

    goto :goto_0
.end method
