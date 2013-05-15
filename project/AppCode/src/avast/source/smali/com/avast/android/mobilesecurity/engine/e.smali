.class public Lcom/avast/android/mobilesecurity/engine/e;
.super Ljava/lang/Object;
.source "DetectionPrefix.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/e;->a:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 127
    const-string v0, "dp-1"

    const-string v1, "dp-1"

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 138
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 139
    if-nez p0, :cond_0

    move-object v0, v3

    .line 158
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v1, v2

    .line 144
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 146
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 148
    new-array v4, v0, [B

    .line 149
    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    add-int/2addr v0, v1

    .line 152
    invoke-static {v4}, Lcom/avast/android/mobilesecurity/engine/e;->b([B)Lcom/avast/android/mobilesecurity/engine/e;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v1, v0

    .line 157
    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 158
    goto :goto_0
.end method

.method public static b([B)Lcom/avast/android/mobilesecurity/engine/e;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 170
    .line 172
    const/4 v0, 0x0

    .line 173
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v2, v3, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 175
    const/4 v0, 0x4

    .line 176
    add-int/lit8 v2, v2, 0x4

    array-length v3, p0

    if-eq v2, v3, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid structure length"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v2, "Exception parsing detection prefix"

    invoke-static {v2, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :cond_0
    return-object v1

    :cond_1
    move v2, v0

    .line 183
    :goto_0
    :try_start_1
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 184
    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v3, v2}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 186
    add-int/lit8 v2, v2, 0x4

    .line 187
    add-int v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid payload length"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v2}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 193
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/g;->a(S)Lcom/avast/android/mobilesecurity/engine/g;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_3

    .line 195
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/f;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/g;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    move-object v0, v1

    .line 205
    :goto_1
    add-int v1, v2, v3

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 197
    :pswitch_0
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/e;

    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v6, v3, -0x2

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v0, v4}, Lcom/avast/android/mobilesecurity/engine/e;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
