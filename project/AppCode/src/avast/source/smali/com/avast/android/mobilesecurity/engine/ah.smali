.class public Lcom/avast/android/mobilesecurity/engine/ah;
.super Ljava/lang/Object;
.source "UrlCheckResultStructure.java"


# instance fields
.field public a:Lcom/avast/android/mobilesecurity/engine/ak;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 120
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->b:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/engine/ak;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 120
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->b:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 155
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/engine/ak;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 120
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->b:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 170
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/engine/ah;->b:Ljava/lang/String;

    .line 171
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private static a([BI)Lcom/avast/android/mobilesecurity/engine/ak;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1, p1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 290
    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 291
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 185
    const-string v0, "uchrs-2"

    const-string v1, "uchrs-2"

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

    .line 194
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 195
    if-nez p0, :cond_0

    move-object v0, v3

    .line 211
    :goto_0
    return-object v0

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v1, v2

    .line 200
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 202
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 204
    new-array v4, v0, [B

    .line 205
    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    add-int/2addr v0, v1

    .line 208
    invoke-static {v4}, Lcom/avast/android/mobilesecurity/engine/ah;->b([B)Lcom/avast/android/mobilesecurity/engine/ah;

    move-result-object v1

    .line 209
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 210
    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 211
    goto :goto_0
.end method

.method public static b([B)Lcom/avast/android/mobilesecurity/engine/ah;
    .locals 6
    .parameter

    .prologue
    .line 215
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/ah;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>()V

    .line 217
    const/4 v0, 0x0

    .line 218
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1, v3, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 220
    const/4 v0, 0x4

    .line 221
    add-int/lit8 v1, v1, 0x4

    array-length v3, p0

    if-eq v1, v3, :cond_1

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    const-string v1, "Exception parsing url check result"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 283
    :cond_0
    return-object v2

    :cond_1
    move v1, v0

    .line 228
    :goto_0
    :try_start_1
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 229
    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v3, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 231
    add-int/lit8 v1, v1, 0x4

    .line 232
    add-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 238
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/aj;->a(S)Lcom/avast/android/mobilesecurity/engine/aj;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ai;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/aj;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_3
    :goto_1
    add-int v0, v1, v3

    move v1, v0

    goto :goto_0

    .line 242
    :pswitch_0
    add-int/lit8 v0, v1, 0x2

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/ah;->a([BI)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    .line 245
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    if-nez v0, :cond_3

    .line 250
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    goto :goto_1

    .line 254
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->b:Ljava/lang/String;

    goto :goto_1

    .line 259
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    goto :goto_1

    .line 264
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    goto :goto_1

    .line 269
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ah;->e:Ljava/lang/String;

    return-object v0
.end method
