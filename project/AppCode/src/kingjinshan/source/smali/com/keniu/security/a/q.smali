.class public final Lcom/keniu/security/a/q;
.super Ljava/lang/Object;
.source "StringBlock.java"


# static fields
.field private static final f:I = 0x1c0001


# instance fields
.field public a:[Ljava/lang/String;

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method private static final a([II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 231
    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    .line 232
    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 233
    const v1, 0xffff

    and-int/2addr v0, v1

    .line 235
    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method public static a(Lcom/keniu/security/a/l;)Lcom/keniu/security/a/q;
    .locals 6
    .parameter

    .prologue
    const v4, 0x1c0001

    .line 27
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v0

    if-eq v0, v4, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected chunk of type 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", read 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v0

    .line 29
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v1

    .line 30
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v2

    .line 31
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    .line 32
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v3

    .line 33
    invoke-virtual {p0}, Lcom/keniu/security/a/l;->a()I

    move-result v4

    .line 35
    new-instance v5, Lcom/keniu/security/a/q;

    invoke-direct {v5}, Lcom/keniu/security/a/q;-><init>()V

    .line 36
    invoke-virtual {p0, v1}, Lcom/keniu/security/a/l;->a(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/keniu/security/a/q;->b:[I

    .line 37
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p0, v2}, Lcom/keniu/security/a/l;->a(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/keniu/security/a/q;->d:[I

    .line 41
    :cond_1
    if-nez v4, :cond_2

    move v1, v0

    :goto_0
    sub-int/2addr v1, v3

    .line 42
    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    .line 43
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v4

    .line 41
    goto :goto_0

    .line 45
    :cond_3
    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/keniu/security/a/l;->a(I)[I

    move-result-object v1

    iput-object v1, v5, Lcom/keniu/security/a/q;->c:[I

    .line 47
    if-eqz v4, :cond_5

    .line 48
    sub-int/2addr v0, v4

    .line 49
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4

    .line 50
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_4
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/keniu/security/a/l;->a(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/keniu/security/a/q;->e:[I

    .line 55
    :cond_5
    invoke-virtual {v5}, Lcom/keniu/security/a/q;->a()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v5, Lcom/keniu/security/a/q;->a:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Lcom/keniu/security/a/q;->a()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 57
    iget-object v1, v5, Lcom/keniu/security/a/q;->a:[Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/keniu/security/a/q;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_6
    return-object v5
.end method

.method private b(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/keniu/security/a/q;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/keniu/security/a/i;

    invoke-direct {v1, v0}, Lcom/keniu/security/a/i;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v12, 0x3e

    const/16 v11, 0x3c

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 109
    invoke-virtual {p0, p1}, Lcom/keniu/security/a/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/a/q;->d:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/keniu/security/a/q;->e:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/keniu/security/a/q;->d:[I

    array-length v1, v1

    if-lt p1, v1, :cond_5

    :cond_2
    move-object v1, v5

    .line 114
    :goto_1
    if-eqz v1, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v10

    :goto_2
    move v4, v10

    move v5, v9

    .line 121
    :goto_3
    array-length v6, v1

    if-eq v4, v6, :cond_a

    .line 122
    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    if-eq v6, v9, :cond_4

    .line 123
    if-eq v5, v9, :cond_3

    add-int/lit8 v6, v5, 0x1

    aget v6, v1, v6

    add-int/lit8 v7, v4, 0x1

    aget v7, v1, v7

    if-le v6, v7, :cond_4

    :cond_3
    move v5, v4

    .line 121
    :cond_4
    add-int/lit8 v4, v4, 0x3

    goto :goto_3

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/keniu/security/a/q;->d:[I

    aget v1, v1, p1

    div-int/lit8 v1, v1, 0x4

    move v2, v1

    move v3, v10

    :goto_4
    iget-object v4, p0, Lcom/keniu/security/a/q;->e:[I

    array-length v4, v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/keniu/security/a/q;->e:[I

    aget v4, v4, v2

    if-eq v4, v9, :cond_6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    if-eqz v3, :cond_7

    rem-int/lit8 v2, v3, 0x3

    if-eqz v2, :cond_8

    :cond_7
    move-object v1, v5

    goto :goto_1

    :cond_8
    new-array v2, v3, [I

    move v3, v1

    move v1, v10

    :goto_5
    iget-object v4, p0, Lcom/keniu/security/a/q;->e:[I

    array-length v4, v4

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcom/keniu/security/a/q;->e:[I

    aget v4, v4, v3

    if-eq v4, v9, :cond_9

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/keniu/security/a/q;->e:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    aput v3, v2, v1

    move v1, v4

    move v3, v6

    goto :goto_5

    :cond_9
    move-object v1, v2

    goto :goto_1

    .line 129
    :cond_a
    if-eq v5, v9, :cond_d

    add-int/lit8 v4, v5, 0x1

    aget v4, v1, v4

    :goto_6
    move v6, v3

    move v3, v10

    .line 130
    :goto_7
    array-length v7, v1

    if-eq v3, v7, :cond_e

    .line 131
    add-int/lit8 v7, v3, 0x2

    aget v7, v1, v7

    .line 132
    if-eq v7, v9, :cond_c

    if-ge v7, v4, :cond_c

    .line 133
    if-gt v6, v7, :cond_b

    .line 136
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v2, v0, v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v6, v7, 0x1

    .line 139
    :cond_b
    add-int/lit8 v7, v3, 0x2

    aput v9, v1, v7

    .line 140
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    aget v7, v1, v3

    invoke-virtual {p0, v7}, Lcom/keniu/security/a/q;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_c
    add-int/lit8 v3, v3, 0x3

    goto :goto_7

    .line 129
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_6

    .line 145
    :cond_e
    if-ge v6, v4, :cond_10

    .line 146
    invoke-virtual {v2, v0, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v3, v4

    .line 149
    :goto_8
    if-eq v5, v9, :cond_f

    .line 150
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    aget v4, v1, v5

    invoke-virtual {p0, v4}, Lcom/keniu/security/a/q;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v4, v5, 0x1

    aput v9, v1, v4

    goto/16 :goto_2

    .line 157
    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    move v3, v6

    goto :goto_8
.end method

.method private d(I)[I
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 201
    iget-object v0, p0, Lcom/keniu/security/a/q;->d:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/a/q;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/a/q;->d:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v5

    .line 227
    :goto_0
    return-object v0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/a/q;->d:[I

    aget v0, v0, p1

    div-int/lit8 v0, v0, 0x4

    move v1, v0

    move v2, v4

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/keniu/security/a/q;->e:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/keniu/security/a/q;->e:[I

    aget v3, v3, v1

    if-eq v3, v6, :cond_2

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_2
    if-eqz v2, :cond_3

    rem-int/lit8 v1, v2, 0x3

    if-eqz v1, :cond_4

    :cond_3
    move-object v0, v5

    .line 217
    goto :goto_0

    .line 219
    :cond_4
    new-array v1, v2, [I

    move v2, v0

    move v0, v4

    .line 221
    :goto_2
    iget-object v3, p0, Lcom/keniu/security/a/q;->e:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 222
    iget-object v3, p0, Lcom/keniu/security/a/q;->e:[I

    aget v3, v3, v2

    if-eq v3, v6, :cond_5

    .line 223
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/keniu/security/a/q;->e:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    aput v2, v1, v0

    move v0, v3

    move v2, v5

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 227
    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/keniu/security/a/q;->b:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/a/q;->b:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 165
    if-nez p1, :cond_1

    move v0, v6

    .line 185
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v7

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/a/q;->b:[I

    array-length v1, v1

    if-eq v0, v1, :cond_4

    .line 169
    iget-object v1, p0, Lcom/keniu/security/a/q;->b:[I

    aget v1, v1, v0

    .line 170
    iget-object v2, p0, Lcom/keniu/security/a/q;->c:[I

    invoke-static {v2, v1}, Lcom/keniu/security/a/q;->a([II)I

    move-result v2

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    move v3, v1

    move v1, v7

    .line 175
    :goto_2
    if-eq v1, v2, :cond_2

    .line 176
    add-int/lit8 v3, v3, 0x2

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/keniu/security/a/q;->c:[I

    invoke-static {v5, v3}, Lcom/keniu/security/a/q;->a([II)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 181
    :cond_2
    if-eq v1, v2, :cond_0

    .line 168
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v6

    .line 185
    goto :goto_0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 79
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/a/q;->b:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/a/q;->b:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/a/q;->b:[I

    aget v0, v0, p1

    .line 86
    iget-object v1, p0, Lcom/keniu/security/a/q;->c:[I

    invoke-static {v1, v0}, Lcom/keniu/security/a/q;->a([II)I

    move-result v1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v1

    move v1, v0

    move v0, v4

    .line 88
    :goto_1
    if-eqz v0, :cond_2

    .line 89
    add-int/lit8 v1, v1, 0x2

    .line 90
    iget-object v3, p0, Lcom/keniu/security/a/q;->c:[I

    invoke-static {v3, v1}, Lcom/keniu/security/a/q;->a([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
