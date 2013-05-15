.class public Lcom/avast/android/mobilesecurity/engine/l;
.super Ljava/lang/Object;
.source "MessageScanResultStructure.java"


# instance fields
.field public a:Lcom/avast/android/mobilesecurity/engine/o;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 218
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/avast/android/mobilesecurity/engine/o;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 218
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Infection description must be passed if the scan result is not RESULT_OK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 255
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    .line 256
    return-void
.end method

.method private static a([BI)Lcom/avast/android/mobilesecurity/engine/o;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1, p1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 381
    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v0, v0, 0x100

    .line 382
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/o;->a(I)Lcom/avast/android/mobilesecurity/engine/o;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 274
    const-string v0, "msrs-1"

    const-string v1, "msrs-1"

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

    .line 279
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 280
    if-nez p0, :cond_0

    move-object v0, v3

    .line 296
    :goto_0
    return-object v0

    .line 283
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    move v1, v2

    .line 285
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 287
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 289
    new-array v4, v0, [B

    .line 290
    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    add-int/2addr v0, v1

    .line 293
    invoke-static {v4}, Lcom/avast/android/mobilesecurity/engine/l;->b([B)Lcom/avast/android/mobilesecurity/engine/l;

    move-result-object v1

    .line 294
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 295
    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 296
    goto :goto_0
.end method

.method public static b([B)Lcom/avast/android/mobilesecurity/engine/l;
    .locals 6
    .parameter

    .prologue
    .line 307
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/l;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/l;-><init>()V

    .line 309
    const/4 v0, 0x0

    .line 310
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1, v3, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 312
    const/4 v0, 0x4

    .line 313
    add-int/lit8 v1, v1, 0x4

    array-length v3, p0

    if-eq v1, v3, :cond_2

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string v1, "Exception parsing message scan result"

    invoke-static {v1, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 359
    const-string v0, ""

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    .line 361
    :cond_0
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, v2, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_1
    return-object v2

    :cond_2
    move v1, v0

    .line 320
    :goto_0
    :try_start_1
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 321
    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v3, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 323
    add-int/lit8 v1, v1, 0x4

    .line 324
    add-int v0, v1, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_3
    const/4 v0, 0x0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v4, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 330
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/n;->a(S)Lcom/avast/android/mobilesecurity/engine/n;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_4

    .line 332
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/m;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/n;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 353
    :cond_4
    :goto_1
    add-int v0, v1, v3

    move v1, v0

    goto :goto_0

    .line 334
    :pswitch_0
    add-int/lit8 v0, v1, 0x2

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/l;->a([BI)Lcom/avast/android/mobilesecurity/engine/o;

    move-result-object v0

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 337
    iget-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    if-nez v0, :cond_4

    .line 342
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    goto :goto_1

    .line 346
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v0, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
