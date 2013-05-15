.class public Lcom/avast/android/mobilesecurity/ui/a;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    const-string v0, ""

    .line 65
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    new-array v3, v2, [B

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 62
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/c;

    .line 63
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/c;->a()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/c;->b()I

    move-result v0

    add-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 42
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 43
    aget-byte v3, v2, v0

    .line 44
    div-int/lit8 v4, v3, 0x3

    rem-int/lit8 v3, v3, 0x3

    invoke-static {v4, v3}, Lcom/avast/android/mobilesecurity/ui/c;->a(II)Lcom/avast/android/mobilesecurity/ui/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-object v1
.end method
