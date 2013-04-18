.class final Lking/org/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 41
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 55
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 45
    new-array v1, v0, [C

    move v2, v6

    move v3, v6

    .line 47
    :goto_1
    if-ge v2, v0, :cond_3

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v3

    move v3, v4

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 52
    :cond_3
    if-ne v3, v0, :cond_4

    .line 53
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v6, v3}, Ljava/lang/String;-><init>([CII)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static difference(Lking/org/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-interface {p0, p1}, Lking/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lking/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lking/org/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 110
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    .line 120
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v2

    .line 115
    :goto_1
    if-ge v1, v0, :cond_3

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 120
    goto :goto_0
.end method
