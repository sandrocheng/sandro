.class public Lking/org/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lking/org/apache/commons/codec/language/Soundex; = null

.field private static final US_ENGLISH_MAPPING:[C = null

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I

.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "01230120022455012623010202"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lking/org/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 57
    new-instance v0, Lking/org/apache/commons/codec/language/Soundex;

    invoke-direct {v0}, Lking/org/apache/commons/codec/language/Soundex;-><init>()V

    sput-object v0, Lking/org/apache/commons/codec/language/Soundex;->US_ENGLISH:Lking/org/apache/commons/codec/language/Soundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 104
    sget-object v0, Lking/org/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lking/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lking/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 132
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 118
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lking/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 119
    iget-object v0, p0, Lking/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x57

    const/16 v3, 0x48

    const/4 v2, 0x1

    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lking/org/apache/commons/codec/language/Soundex;->map(C)C

    move-result v0

    .line 186
    if-le p2, v2, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    .line 187
    sub-int v1, p2, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 188
    if-eq v3, v1, :cond_0

    if-ne v4, v1, :cond_2

    .line 189
    :cond_0
    const/4 v1, 0x2

    sub-int v1, p2, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 190
    invoke-direct {p0, v1}, Lking/org/apache/commons/codec/language/Soundex;->map(C)C

    move-result v2

    .line 191
    if-eq v2, v0, :cond_1

    if-eq v3, v1, :cond_1

    if-ne v4, v1, :cond_2

    .line 192
    :cond_1
    const/4 v0, 0x0

    .line 196
    :cond_2
    return v0
.end method

.method private getSoundexMapping()[C
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lking/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    return-object v0
.end method

.method private map(C)C
    .locals 3
    .parameter

    .prologue
    .line 229
    const/16 v0, 0x41

    sub-int v0, p1, v0

    .line 230
    if-ltz v0, :cond_0

    invoke-direct {p0}, Lking/org/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The character is not mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    invoke-direct {p0}, Lking/org/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    aget-char v0, v1, v0

    return v0
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lking/org/apache/commons/codec/language/SoundexUtils;->difference(Lking/org/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 149
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lking/org/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lking/org/apache/commons/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput p1, p0, Lking/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 246
    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    if-nez p1, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-static {p1}, Lking/org/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 268
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v1, v3

    .line 270
    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v2

    move v3, v4

    move v7, v4

    move v4, v2

    move v2, v7

    .line 271
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 272
    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v3

    .line 273
    if-eqz v3, :cond_4

    .line 274
    const/16 v6, 0x30

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_2

    .line 275
    add-int/lit8 v4, v2, 0x1

    aput-char v3, v1, v2

    move v2, v4

    :cond_2
    move v4, v3

    move v3, v5

    .line 277
    goto :goto_1

    .line 280
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_4
    move v3, v5

    goto :goto_1

    .line 265
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method
