.class public Lking/org/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lking/org/apache/commons/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x4

    iput v0, p0, Lking/org/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 70
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 350
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextChar(Ljava/lang/StringBuffer;IC)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    .line 332
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_1

    .line 334
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    move v0, v2

    .line 336
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 334
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isPreviousChar(Ljava/lang/StringBuffer;IC)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 322
    .line 323
    if-lez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 325
    sub-int v0, p2, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    move v0, v2

    .line 327
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 325
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isVowel(Ljava/lang/StringBuffer;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 318
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 341
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 343
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 346
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 368
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lking/org/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lking/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lking/org/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Lking/org/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lking/org/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x4b

    const/16 v9, 0x53

    const/16 v8, 0x48

    const/4 v7, 0x1

    .line 83
    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const-string v0, ""

    .line 314
    :goto_0
    return-object v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 89
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    aget-char v3, v0, v11

    sparse-switch v3, :sswitch_data_0

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 134
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move v3, v11

    .line 137
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v5

    if-ge v4, v5, :cond_1f

    if-ge v3, v0, :cond_1f

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 141
    const/16 v5, 0x43

    if-eq v4, v5, :cond_4

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 142
    :cond_4
    packed-switch v4, :pswitch_data_0

    .line 308
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 311
    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 101
    :sswitch_0
    aget-char v3, v0, v7

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_6

    .line 102
    array-length v3, v0

    sub-int/2addr v3, v7

    invoke-virtual {v1, v0, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 108
    :sswitch_1
    aget-char v3, v0, v7

    const/16 v4, 0x45

    if-ne v3, v4, :cond_7

    .line 109
    array-length v3, v0

    sub-int/2addr v3, v7

    invoke-virtual {v1, v0, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 111
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 115
    :sswitch_2
    aget-char v3, v0, v7

    const/16 v4, 0x52

    if-ne v3, v4, :cond_8

    .line 116
    array-length v3, v0

    sub-int/2addr v3, v7

    invoke-virtual {v1, v0, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    :cond_8
    aget-char v3, v0, v7

    if-ne v3, v8, :cond_9

    .line 120
    array-length v3, v0

    sub-int/2addr v3, v7

    invoke-virtual {v1, v0, v7, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 121
    const/16 v0, 0x57

    invoke-virtual {v1, v11, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_1

    .line 123
    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :sswitch_3
    aput-char v9, v0, v11

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 146
    :pswitch_0
    if-nez v3, :cond_5

    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 151
    :pswitch_1
    const/16 v5, 0x4d

    invoke-direct {p0, v1, v3, v5}, Lking/org/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 153
    :cond_a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 159
    :pswitch_2
    invoke-direct {p0, v1, v3, v9}, Lking/org/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "EIY"

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    .line 162
    :cond_b
    const-string v4, "CIA"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 165
    const/16 v4, 0x58

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 168
    :cond_c
    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "EIY"

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_d

    .line 170
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 173
    :cond_d
    invoke-direct {p0, v1, v3, v9}, Lking/org/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-direct {p0, v1, v3, v8}, Lking/org/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 175
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 178
    :cond_e
    invoke-direct {p0, v1, v3, v8}, Lking/org/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 179
    if-nez v3, :cond_f

    const/4 v4, 0x3

    if-lt v0, v4, :cond_f

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 182
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 184
    :cond_f
    const/16 v4, 0x58

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 187
    :cond_10
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 191
    :pswitch_3
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v0, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_11

    const/16 v4, 0x47

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "EIY"

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_11

    .line 194
    const/16 v4, 0x4a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_3

    .line 196
    :cond_11
    const/16 v4, 0x54

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 200
    :pswitch_4
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v0, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-direct {p0, v1, v3, v8}, Lking/org/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-nez v4, :cond_5

    .line 202
    :cond_12
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v0, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-direct {p0, v1, v3, v8}, Lking/org/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v4, v3, 0x2

    invoke-direct {p0, v1, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 207
    :cond_13
    if-lez v3, :cond_14

    const-string v4, "GN"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "GNED"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 212
    :cond_14
    const/16 v4, 0x47

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v4

    if-eqz v4, :cond_15

    move v4, v7

    .line 220
    :goto_4
    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "EIY"

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_16

    if-nez v4, :cond_16

    .line 223
    const/16 v4, 0x4a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :cond_15
    move v4, v11

    .line 218
    goto :goto_4

    .line 225
    :cond_16
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 229
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 230
    if-lez v3, :cond_17

    const-string v4, "CSPTG"

    sub-int v5, v3, v7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_5

    .line 234
    :cond_17
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, v1, v4}, Lking/org/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 246
    :pswitch_6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 249
    :pswitch_7
    if-lez v3, :cond_18

    .line 250
    const/16 v5, 0x43

    invoke-direct {p0, v1, v3, v5}, Lking/org/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuffer;IC)Z

    move-result v5

    if-nez v5, :cond_5

    .line 251
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 254
    :cond_18
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 258
    :pswitch_8
    invoke-direct {p0, v1, v3, v8}, Lking/org/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuffer;IC)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 260
    const/16 v4, 0x46

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 262
    :cond_19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 266
    :pswitch_9
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 269
    :pswitch_a
    const-string v4, "SH"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "SIO"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "SIA"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 272
    :cond_1a
    const/16 v4, 0x58

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 274
    :cond_1b
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 278
    :pswitch_b
    const-string v4, "TIA"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "TIO"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 280
    :cond_1c
    const/16 v4, 0x58

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 283
    :cond_1d
    const-string v4, "TCH"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 285
    const-string v4, "TH"

    invoke-direct {p0, v1, v3, v4}, Lking/org/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuffer;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 289
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 291
    :cond_1e
    const/16 v4, 0x54

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 295
    :pswitch_c
    const/16 v4, 0x46

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 297
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lking/org/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v1, v5}, Lking/org/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuffer;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 299
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 303
    :pswitch_e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 306
    :pswitch_f
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 314
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x47 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_0
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
    .end sparse-switch

    .line 142
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput p1, p0, Lking/org/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
