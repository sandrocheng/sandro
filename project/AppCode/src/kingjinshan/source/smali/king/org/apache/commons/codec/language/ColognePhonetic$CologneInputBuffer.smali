.class Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
.super Lking/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.source "ColognePhonetic.java"


# instance fields
.field final synthetic this$0:Lking/org/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lking/org/apache/commons/codec/language/ColognePhonetic;[C)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->this$0:Lking/org/apache/commons/codec/language/ColognePhonetic;

    .line 237
    invoke-direct {p0, p1, p2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;-><init>(Lking/org/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 238
    return-void
.end method


# virtual methods
.method public addLeft(C)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iget v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    .line 242
    iget-object v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aput-char p1, v0, v1

    .line 243
    return-void
.end method

.method protected copyData(II)[C
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 247
    new-array v0, p2, [C

    .line 248
    iget-object v1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    iget-object v2, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v2, v2

    iget v3, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    return-object v0
.end method

.method public getNextChar()C
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextPos()I

    move-result v1

    aget-char v0, v0, v1

    return v0
.end method

.method protected getNextPos()I
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->data:[C

    array-length v0, v0

    iget v1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public removeNext()C
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v0

    .line 262
    iget v1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length:I

    .line 263
    return v0
.end method
