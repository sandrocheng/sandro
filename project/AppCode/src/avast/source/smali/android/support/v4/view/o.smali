.class Landroid/support/v4/view/o;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/q;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIIII)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    and-int v2, p1, p2

    if-eqz v2, :cond_0

    move v2, v0

    .line 50
    :goto_0
    or-int v3, p3, p4

    .line 51
    and-int v4, p1, v3

    if-eqz v4, :cond_1

    .line 53
    :goto_1
    if-eqz v2, :cond_4

    .line 54
    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 49
    goto :goto_0

    :cond_1
    move v0, v1

    .line 51
    goto :goto_1

    .line 57
    :cond_2
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr p0, v0

    .line 61
    :cond_3
    :goto_2
    return p0

    .line 58
    :cond_4
    if-eqz v0, :cond_3

    .line 59
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr p0, v0

    goto :goto_2
.end method


# virtual methods
.method public a(I)I
    .locals 2
    .parameter

    .prologue
    .line 67
    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_1

    .line 68
    or-int/lit8 v0, p1, 0x1

    .line 70
    :goto_0
    and-int/lit8 v1, v0, 0x30

    if-eqz v1, :cond_0

    .line 71
    or-int/lit8 v0, v0, 0x2

    .line 73
    :cond_0
    and-int/lit16 v0, v0, 0xf7

    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public a(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, p1}, Landroid/support/v4/view/o;->a(I)I

    move-result v1

    and-int/lit16 v1, v1, 0xf7

    .line 79
    const/16 v2, 0x40

    const/16 v3, 0x80

    invoke-static {v1, p2, v0, v2, v3}, Landroid/support/v4/view/o;->a(IIIII)I

    move-result v1

    .line 81
    const/4 v2, 0x2

    const/16 v3, 0x10

    const/16 v4, 0x20

    invoke-static {v1, p2, v2, v3, v4}, Landroid/support/v4/view/o;->a(IIIII)I

    move-result v1

    .line 83
    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/support/v4/view/o;->a(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
