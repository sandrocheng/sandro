.class public Lking/org/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

# interfaces
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lking/org/apache/commons/codec/language/RefinedSoundex; = null

.field private static final US_ENGLISH_MAPPING:[C = null

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01360240043788015936020505"


# instance fields
.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "01360240043788015936020505"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lking/org/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    .line 56
    new-instance v0, Lking/org/apache/commons/codec/language/RefinedSoundex;

    invoke-direct {v0}, Lking/org/apache/commons/codec/language/RefinedSoundex;-><init>()V

    sput-object v0, Lking/org/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH:Lking/org/apache/commons/codec/language/RefinedSoundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lking/org/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 90
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 77
    iget-object v0, p0, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lking/org/apache/commons/codec/language/SoundexUtils;->difference(Lking/org/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 133
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lking/org/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMappingCode(C)C
    .locals 3
    .parameter

    .prologue
    .line 161
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lking/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/16 v2, 0x41

    sub-int/2addr v1, v2

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 175
    if-nez p1, :cond_1

    .line 176
    const/4 v0, 0x0

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    invoke-static {p1}, Lking/org/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    const/16 v2, 0x2a

    move v5, v3

    move v3, v2

    move v2, v5

    .line 189
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lking/org/apache/commons/codec/language/RefinedSoundex;->getMappingCode(C)C

    move-result v4

    .line 192
    if-eq v4, v3, :cond_3

    .line 193
    if-eqz v4, :cond_2

    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    move v3, v4

    .line 189
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
