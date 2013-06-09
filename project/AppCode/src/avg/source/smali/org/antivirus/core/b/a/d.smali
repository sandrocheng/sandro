.class public final Lorg/antivirus/core/b/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/antivirus/core/b/a/o;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lorg/antivirus/core/b/a/b;

    invoke-direct {v2, p0}, Lorg/antivirus/core/b/a/b;-><init>(Lorg/antivirus/core/b/a/o;)V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/antivirus/core/b/a/b;->a(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v1, v0}, Lorg/antivirus/core/b/a/b;->b(II)I

    move-result v0

    return v0
.end method
