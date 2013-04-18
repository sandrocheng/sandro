.class public final Lcom/keniu/security/f/k;
.super Ljava/lang/Object;
.source "Miscellaneous.java"


# static fields
.field private static final a:Ljava/lang/String; = "0123456789abcdef"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    .line 13
    :cond_0
    array-length v0, p0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 18
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    const-string v3, "0123456789abcdef"

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    move v4, p4

    :goto_0
    if-ge v4, p5, :cond_8

    if-ge p1, p2, :cond_8

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p4

    .line 48
    const/16 v0, 0x3f

    if-ne p4, v0, :cond_1

    .line 50
    add-int/lit8 v1, p1, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;IILjava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 52
    const/4 p0, 0x1

    .line 109
    :goto_1
    return p0

    .line 54
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 55
    add-int/lit8 p4, v4, 0x1

    move v4, p4

    goto :goto_0

    .line 57
    :cond_1
    const/16 v0, 0x2a

    if-ne p4, v0, :cond_6

    .line 59
    :goto_2
    add-int/lit8 v1, p1, 0x1

    if-ge v1, p2, :cond_2

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 62
    const/16 p4, 0x2a

    if-eq p1, p4, :cond_d

    const/16 p4, 0x3f

    if-eq p1, p4, :cond_d

    .line 64
    :cond_2
    if-lt v1, p2, :cond_4

    .line 69
    const/4 p0, 0x1

    goto :goto_1

    .line 78
    :cond_3
    add-int/lit8 p1, v4, 0x1

    move v4, p1

    .line 72
    :cond_4
    if-ge v4, p5, :cond_5

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v5, p5

    .line 74
    invoke-static/range {v0 .. v5}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;IILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 76
    const/4 p0, 0x1

    goto :goto_1

    .line 80
    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    .line 84
    :cond_6
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p4, v0, :cond_7

    .line 86
    const/4 p0, 0x0

    goto :goto_1

    .line 88
    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 89
    add-int/lit8 p4, v4, 0x1

    move v4, p4

    .line 91
    goto :goto_0

    .line 93
    :cond_8
    if-ge v4, p5, :cond_9

    .line 95
    const/4 p0, 0x0

    goto :goto_1

    .line 99
    :cond_9
    :goto_3
    if-ge p1, p2, :cond_b

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    .line 102
    const/16 p4, 0x2a

    if-eq p3, p4, :cond_a

    const/16 p4, 0x3f

    if-ne p3, p4, :cond_b

    .line 104
    :cond_a
    add-int/lit8 p1, p1, 0x1

    .line 108
    goto :goto_3

    .line 109
    :cond_b
    if-lt p1, p2, :cond_c

    const/4 p0, 0x1

    goto :goto_1

    :cond_c
    const/4 p0, 0x0

    goto :goto_1

    :cond_d
    move p1, v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {p0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/keniu/security/f/k;->a(Ljava/lang/String;IILjava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method
