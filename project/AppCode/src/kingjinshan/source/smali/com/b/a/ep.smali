.class public final Lcom/b/a/ep;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/b/a/i;)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0xf4

    const/16 v7, 0xbf

    const/16 v6, 0x80

    const/4 v5, 0x0

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/b/a/i;->a()I

    move-result v0

    move v1, v5

    .line 120
    :goto_0
    if-ge v1, v0, :cond_10

    .line 121
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/b/a/i;->a(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 122
    if-lt v1, v6, :cond_13

    .line 124
    const/16 v3, 0xc2

    if-lt v1, v3, :cond_0

    if-le v1, v8, :cond_1

    :cond_0
    move v0, v5

    .line 184
    :goto_1
    return v0

    .line 131
    :cond_1
    if-lt v2, v0, :cond_2

    move v0, v5

    .line 133
    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/b/a/i;->a(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 136
    if-lt v2, v6, :cond_3

    if-le v2, v7, :cond_4

    :cond_3
    move v0, v5

    .line 138
    goto :goto_1

    .line 140
    :cond_4
    const/16 v4, 0xdf

    if-le v1, v4, :cond_11

    .line 142
    if-lt v3, v0, :cond_5

    move v0, v5

    .line 148
    goto :goto_1

    .line 150
    :cond_5
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/b/a/i;->a(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 151
    if-lt v3, v6, :cond_6

    if-le v3, v7, :cond_7

    :cond_6
    move v0, v5

    .line 153
    goto :goto_1

    .line 155
    :cond_7
    const/16 v3, 0xef

    if-gt v1, v3, :cond_a

    .line 158
    const/16 v3, 0xe0

    if-ne v1, v3, :cond_8

    const/16 v3, 0xa0

    if-lt v2, v3, :cond_9

    :cond_8
    const/16 v3, 0xed

    if-ne v1, v3, :cond_12

    const/16 v1, 0x9f

    if-le v2, v1, :cond_12

    :cond_9
    move v0, v5

    .line 161
    goto :goto_1

    .line 167
    :cond_a
    if-lt v4, v0, :cond_b

    move v0, v5

    .line 169
    goto :goto_1

    .line 171
    :cond_b
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/b/a/i;->a(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 172
    if-lt v4, v6, :cond_c

    if-le v4, v7, :cond_d

    :cond_c
    move v0, v5

    .line 174
    goto :goto_1

    .line 177
    :cond_d
    const/16 v4, 0xf0

    if-ne v1, v4, :cond_e

    const/16 v4, 0x90

    if-lt v2, v4, :cond_f

    :cond_e
    if-ne v1, v8, :cond_11

    const/16 v1, 0x8f

    if-le v2, v1, :cond_11

    :cond_f
    move v0, v5

    .line 180
    goto :goto_1

    .line 184
    :cond_10
    const/4 v0, 0x1

    goto :goto_1

    :cond_11
    move v1, v3

    goto :goto_0

    :cond_12
    move v1, v4

    goto :goto_0

    :cond_13
    move v1, v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/b/a/i;
    .locals 3
    .parameter

    .prologue
    .line 93
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/i;->a([B)Lcom/b/a/i;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
