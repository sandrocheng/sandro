.class public Lcom/avast/android/mobilesecurity/engine/al;
.super Ljava/lang/Object;
.source "VpsInformation.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Date;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x2710

    const/16 v4, 0xa

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 97
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v4, :cond_0

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    .line 109
    const-wide/32 v0, 0xf4240

    .line 110
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x3f00

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 111
    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    .line 112
    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/avast/android/mobilesecurity/engine/al;->b:Ljava/util/Date;

    .line 113
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/al;->c:J

    .line 114
    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/engine/al;->d:J

    .line 115
    return-void
.end method

.method public static a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 146
    const-string v0, "vpsi-2"

    const-string v1, "vpsi-2"

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

    .line 151
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 152
    if-nez p0, :cond_0

    move-object v0, v3

    .line 168
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v1, v2

    .line 157
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 159
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 161
    new-array v4, v0, [B

    .line 162
    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    add-int/2addr v0, v1

    .line 165
    invoke-static {v4}, Lcom/avast/android/mobilesecurity/engine/al;->b([B)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v1

    .line 166
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 167
    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 168
    goto :goto_0
.end method

.method public static b([B)Lcom/avast/android/mobilesecurity/engine/al;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 172
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/al;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/al;-><init>()V

    .line 174
    const/4 v0, 0x0

    .line 175
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v3, v4, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 177
    const/4 v0, 0x4

    .line 178
    add-int/lit8 v3, v3, 0x4

    array-length v4, p0

    if-eq v3, v4, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v1, "Exception parsing VPS information"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 270
    :goto_0
    return-object v0

    .line 185
    :cond_0
    :try_start_1
    const-string v3, "GMT+1"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    move v3, v0

    .line 186
    :goto_1
    array-length v0, p0

    if-ge v3, v0, :cond_3

    .line 187
    const/4 v0, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v5, v3}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 189
    add-int/lit8 v3, v3, 0x4

    .line 190
    add-int v0, v3, v5

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v6, v3}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 196
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/an;->a(S)Lcom/avast/android/mobilesecurity/engine/an;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_2

    .line 198
    sget-object v6, Lcom/avast/android/mobilesecurity/engine/am;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/an;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :cond_2
    :goto_2
    add-int v0, v3, v5

    move v3, v0

    goto :goto_1

    .line 200
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v0, p0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    goto :goto_2

    .line 205
    :pswitch_1
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 208
    if-eqz v0, :cond_2

    .line 209
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 213
    :pswitch_2
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 216
    if-eqz v0, :cond_2

    .line 217
    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 221
    :pswitch_3
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 224
    if-eqz v0, :cond_2

    .line 225
    const/4 v6, 0x5

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 229
    :pswitch_4
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 232
    if-eqz v0, :cond_2

    .line 233
    const/16 v6, 0xa

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 237
    :pswitch_5
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    .line 240
    if-eqz v0, :cond_2

    .line 241
    const/16 v6, 0xc

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {v4, v6, v0}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_2

    .line 245
    :pswitch_6
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 248
    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/avast/android/mobilesecurity/engine/al;->c:J

    goto/16 :goto_2

    .line 253
    :pswitch_7
    const/4 v0, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v3, 0x2

    invoke-static {p0, v0, v6, v7}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 256
    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/avast/android/mobilesecurity/engine/al;->d:J

    goto/16 :goto_2

    .line 265
    :cond_3
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/al;->b:Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 270
    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
