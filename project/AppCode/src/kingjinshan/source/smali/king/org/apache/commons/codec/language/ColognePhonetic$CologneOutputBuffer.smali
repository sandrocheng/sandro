.class Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
.super Lking/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.source "ColognePhonetic.java"


# instance fields
.field final synthetic this$0:Lking/org/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lking/org/apache/commons/codec/language/ColognePhonetic;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->this$0:Lking/org/apache/commons/codec/language/ColognePhonetic;

    .line 218
    invoke-direct {p0, p1, p2}, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneBuffer;-><init>(Lking/org/apache/commons/codec/language/ColognePhonetic;I)V

    .line 219
    return-void
.end method


# virtual methods
.method public addRight(C)V
    .locals 2
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->data:[C

    iget v1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    aput-char p1, v0, v1

    .line 223
    iget v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    .line 224
    return-void
.end method

.method protected copyData(II)[C
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 228
    new-array v0, p2, [C

    .line 229
    iget-object v1, p0, Lking/org/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->data:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-object v0
.end method
