.class public final Lcom/b/a/fy;
.super Ljava/lang/Object;
.source "TextFormat.java"


# static fields
.field private static final a:Lcom/b/a/gc; = null

.field private static final b:Lcom/b/a/gc; = null

.field private static final c:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/b/a/gc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/gc;-><init>(Z)V

    sput-object v0, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    .line 59
    new-instance v0, Lcom/b/a/gc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/b/a/gc;-><init>(Z)V

    sput-object v0, Lcom/b/a/fy;->b:Lcom/b/a/gc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;ZZ)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 1393
    .line 1396
    const-string v0, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1397
    if-nez p1, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 1401
    const/4 v1, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 1404
    :goto_0
    const/16 v2, 0xa

    .line 1405
    const-string v3, "0x"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1406
    add-int/lit8 v1, v1, 0x2

    move v2, v1

    move v1, v4

    .line 1412
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_5

    .line 1417
    invoke-static {v2, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 1418
    if-eqz v0, :cond_c

    .line 1419
    neg-long v0, v1

    .line 1425
    :goto_2
    if-nez p2, :cond_a

    .line 1426
    if-eqz p1, :cond_3

    .line 1427
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 1428
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1408
    :cond_2
    const-string v3, "0"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1409
    const/16 v2, 0x8

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_1

    .line 1432
    :cond_3
    const-wide v2, 0x100000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 1433
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_5
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 1440
    if-eqz v0, :cond_b

    .line 1441
    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 1445
    :goto_3
    if-nez p2, :cond_7

    .line 1446
    if-eqz p1, :cond_6

    .line 1447
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_9

    .line 1448
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_6
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_9

    .line 1453
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_7
    if-eqz p1, :cond_8

    .line 1459
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_9

    .line 1460
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number out of range for 64-bit signed integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_8
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_9

    .line 1465
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number out of range for 64-bit unsigned integer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_9
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 1474
    :cond_a
    return-wide v0

    :cond_b
    move-object v0, v3

    goto/16 :goto_3

    :cond_c
    move-wide v0, v1

    goto/16 :goto_2

    :cond_d
    move v5, v2

    move v2, v1

    move v1, v5

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/CharSequence;)Lcom/b/a/i;
    .locals 11
    .parameter

    .prologue
    const/16 v9, 0x5c

    const/16 v8, 0x27

    const/4 v7, 0x0

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v1

    new-array v1, v1, [B

    move v2, v7

    move v3, v7

    .line 1226
    :goto_0
    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 1227
    invoke-virtual {v0, v2}, Lcom/b/a/i;->a(I)B

    move-result v4

    .line 1228
    if-ne v4, v9, :cond_4

    .line 1229
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1230
    add-int/lit8 v2, v2, 0x1

    .line 1231
    invoke-virtual {v0, v2}, Lcom/b/a/i;->a(I)B

    move-result v4

    .line 1232
    invoke-static {v4}, Lcom/b/a/fy;->a(B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1234
    invoke-static {v4}, Lcom/b/a/fy;->c(B)I

    move-result v4

    .line 1235
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v6

    if-ge v5, v6, :cond_7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Lcom/b/a/i;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/b/a/fy;->a(B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1236
    add-int/lit8 v2, v2, 0x1

    .line 1237
    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v2}, Lcom/b/a/i;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/b/a/fy;->c(B)I

    move-result v5

    add-int/2addr v4, v5

    move v10, v4

    move v4, v2

    move v2, v10

    .line 1239
    :goto_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v6

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Lcom/b/a/i;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/b/a/fy;->a(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1240
    add-int/lit8 v4, v4, 0x1

    .line 1241
    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v4}, Lcom/b/a/i;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/b/a/fy;->c(B)I

    move-result v5

    add-int/2addr v2, v5

    .line 1244
    :cond_0
    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    move v2, v4

    move v3, v5

    .line 1226
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    sparse-switch v4, :sswitch_data_0

    .line 1276
    new-instance v0, Lcom/b/a/ga;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid escape sequence: \'\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/ga;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1248
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1249
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1250
    :sswitch_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1251
    :sswitch_4
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1252
    :sswitch_5
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1253
    :sswitch_6
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1254
    :sswitch_7
    add-int/lit8 v4, v3, 0x1

    aput-byte v9, v1, v3

    move v3, v4

    goto :goto_2

    .line 1255
    :sswitch_8
    add-int/lit8 v4, v3, 0x1

    aput-byte v8, v1, v3

    move v3, v4

    goto :goto_2

    .line 1256
    :sswitch_9
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x22

    aput-byte v5, v1, v3

    move v3, v4

    goto :goto_2

    .line 1260
    :sswitch_a
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Lcom/b/a/i;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/b/a/fy;->b(B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1262
    add-int/lit8 v2, v2, 0x1

    .line 1263
    invoke-virtual {v0, v2}, Lcom/b/a/i;->a(I)B

    move-result v4

    invoke-static {v4}, Lcom/b/a/fy;->c(B)I

    move-result v4

    .line 1268
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0}, Lcom/b/a/i;->a()I

    move-result v6

    if-ge v5, v6, :cond_6

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Lcom/b/a/i;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/b/a/fy;->b(B)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1269
    add-int/lit8 v2, v2, 0x1

    .line 1270
    mul-int/lit8 v4, v4, 0x10

    invoke-virtual {v0, v2}, Lcom/b/a/i;->a(I)B

    move-result v5

    invoke-static {v5}, Lcom/b/a/fy;->c(B)I

    move-result v5

    add-int/2addr v4, v5

    move v10, v4

    move v4, v2

    move v2, v10

    .line 1272
    :goto_3
    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    move v2, v4

    move v3, v5

    .line 1273
    goto/16 :goto_2

    .line 1265
    :cond_2
    new-instance v0, Lcom/b/a/ga;

    const-string v1, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v0, v1}, Lcom/b/a/ga;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_3
    new-instance v0, Lcom/b/a/ga;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Lcom/b/a/ga;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_4
    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v1, v3

    move v3, v5

    goto/16 :goto_2

    .line 1289
    :cond_5
    invoke-static {v1, v7, v3}, Lcom/b/a/i;->a([BII)Lcom/b/a/i;

    move-result-object v0

    return-object v0

    :cond_6
    move v10, v4

    move v4, v2

    move v2, v10

    goto :goto_3

    :cond_7
    move v10, v4

    move v4, v2

    move v2, v10

    goto/16 :goto_1

    .line 1246
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 55
    if-ltz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/b/a/fy;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/cq;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    sget-object v1, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v2, Lcom/b/a/gd;

    invoke-direct {v2, v0}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p0, p1, v2}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/b/a/ev;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    sget-object v1, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v2, Lcom/b/a/gd;

    invoke-direct {v2, v0}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p0, v2}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/ev;Lcom/b/a/gd;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Lcom/b/a/gg;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    sget-object v1, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v2, Lcom/b/a/gd;

    invoke-direct {v2, v0}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p0, v2}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/gg;Lcom/b/a/gd;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Lcom/b/a/i;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1176
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/b/a/i;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1177
    invoke-virtual {p0, v1}, Lcom/b/a/i;->a(I)B

    move-result v2

    .line 1178
    sparse-switch v2, :sswitch_data_0

    .line 1194
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 1195
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1180
    :sswitch_0
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1181
    :sswitch_1
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1182
    :sswitch_2
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1183
    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1184
    :sswitch_4
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1185
    :sswitch_5
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1186
    :sswitch_6
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1187
    :sswitch_7
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1188
    :sswitch_8
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1189
    :sswitch_9
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1197
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1198
    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1199
    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1200
    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1205
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1178
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1310
    invoke-static {p0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->a(Lcom/b/a/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 957
    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    .line 958
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 959
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 962
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 964
    :cond_0
    return-object v0
.end method

.method static synthetic a(ILjava/lang/Object;Lcom/b/a/gd;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/b/a/fy;->b(ILjava/lang/Object;Lcom/b/a/gd;)V

    return-void
.end method

.method private static a(ILjava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v0, Lcom/b/a/gd;

    invoke-direct {v0, p2}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {p0, p1, v0}, Lcom/b/a/fy;->b(ILjava/lang/Object;Lcom/b/a/gd;)V

    .line 186
    return-void
.end method

.method private static a(Lcom/b/a/cq;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    sget-object v0, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v1, Lcom/b/a/gd;

    invoke-direct {v1, p2}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v0, p0, p1, v1}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    .line 141
    return-void
.end method

.method private static a(Lcom/b/a/ev;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v1, Lcom/b/a/gd;

    invoke-direct {v1, p1}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v0, p0, v1}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/ev;Lcom/b/a/gd;)V

    .line 69
    return-void
.end method

.method private static a(Lcom/b/a/ge;Lcom/b/a/db;Lcom/b/a/ew;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x0

    .line 992
    invoke-interface {p2}, Lcom/b/a/ew;->C()Lcom/b/a/cj;

    move-result-object v0

    .line 995
    const-string v1, "["

    invoke-virtual {p0, v1}, Lcom/b/a/ge;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/ge;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    :goto_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Lcom/b/a/ge;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    invoke-virtual {p0}, Lcom/b/a/ge;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/b/a/db;->a(Ljava/lang/String;)Lcom/b/a/de;

    move-result-object v2

    .line 1006
    if-nez v2, :cond_1

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" not found in the ExtensionRegistry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->d(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 1009
    :cond_1
    iget-object v3, v2, Lcom/b/a/de;->a:Lcom/b/a/cq;

    invoke-virtual {v3}, Lcom/b/a/cq;->r()Lcom/b/a/cj;

    move-result-object v3

    if-eq v3, v0, :cond_2

    .line 1010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extension \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not extend message type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->d(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 1015
    :cond_2
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->b(Ljava/lang/String;)V

    .line 1017
    iget-object v0, v2, Lcom/b/a/de;->a:Lcom/b/a/cq;

    move-object v1, v0

    move-object v0, v2

    .line 1050
    :goto_1
    invoke-virtual {v1}, Lcom/b/a/cq;->f()Lcom/b/a/cr;

    move-result-object v2

    sget-object v3, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v2, v3, :cond_a

    .line 1051
    const-string v2, ":"

    invoke-virtual {p0, v2}, Lcom/b/a/ge;->a(Ljava/lang/String;)Z

    .line 1054
    const-string v2, "<"

    invoke-virtual {p0, v2}, Lcom/b/a/ge;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1055
    const-string v2, ">"

    .line 1062
    :goto_2
    if-nez v0, :cond_7

    .line 1063
    invoke-interface {p2, v1}, Lcom/b/a/ew;->e(Lcom/b/a/cq;)Lcom/b/a/ew;

    move-result-object v0

    .line 1068
    :goto_3
    invoke-virtual {p0, v2}, Lcom/b/a/ge;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1069
    invoke-virtual {p0}, Lcom/b/a/ge;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->c(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 1019
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/ge;->c()Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-virtual {v0, v1}, Lcom/b/a/cj;->a(Ljava/lang/String;)Lcom/b/a/cq;

    move-result-object v2

    .line 1025
    if-nez v2, :cond_4

    .line 1028
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-virtual {v0, v2}, Lcom/b/a/cj;->a(Ljava/lang/String;)Lcom/b/a/cq;

    move-result-object v2

    .line 1031
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v3

    sget-object v4, Lcom/b/a/cs;->j:Lcom/b/a/cs;

    if-eq v3, v4, :cond_4

    move-object v2, v5

    .line 1036
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v3

    sget-object v4, Lcom/b/a/cs;->j:Lcom/b/a/cs;

    if-ne v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/b/a/cq;->t()Lcom/b/a/cj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/b/a/cj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v2, v5

    .line 1041
    :cond_5
    if-nez v2, :cond_f

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" has no field named \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->d(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    .line 1057
    :cond_6
    const-string v2, "{"

    invoke-virtual {p0, v2}, Lcom/b/a/ge;->b(Ljava/lang/String;)V

    .line 1058
    const-string v2, "}"

    goto/16 :goto_2

    .line 1065
    :cond_7
    iget-object v0, v0, Lcom/b/a/de;->b:Lcom/b/a/ev;

    invoke-interface {v0}, Lcom/b/a/ev;->E()Lcom/b/a/ew;

    move-result-object v0

    goto/16 :goto_3

    .line 1073
    :cond_8
    invoke-static {p0, p1, v0}, Lcom/b/a/fy;->a(Lcom/b/a/ge;Lcom/b/a/db;Lcom/b/a/ew;)V

    goto/16 :goto_3

    .line 1076
    :cond_9
    invoke-interface {v0}, Lcom/b/a/ew;->K()Lcom/b/a/ev;

    move-result-object v0

    .line 1153
    :goto_4
    invoke-virtual {v1}, Lcom/b/a/cq;->m()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1154
    invoke-interface {p2, v1, v0}, Lcom/b/a/ew;->a(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    .line 1158
    :goto_5
    return-void

    .line 1079
    :cond_a
    const-string v0, ":"

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->b(Ljava/lang/String;)V

    .line 1081
    sget-object v0, Lcom/b/a/fz;->a:[I

    invoke-virtual {v1}, Lcom/b/a/cq;->h()Lcom/b/a/cs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/cs;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v5

    goto :goto_4

    .line 1085
    :pswitch_0
    invoke-virtual {p0}, Lcom/b/a/ge;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    .line 1091
    :pswitch_1
    invoke-virtual {p0}, Lcom/b/a/ge;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 1096
    :pswitch_2
    invoke-virtual {p0}, Lcom/b/a/ge;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    .line 1101
    :pswitch_3
    invoke-virtual {p0}, Lcom/b/a/ge;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 1105
    :pswitch_4
    invoke-virtual {p0}, Lcom/b/a/ge;->i()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_4

    .line 1109
    :pswitch_5
    invoke-virtual {p0}, Lcom/b/a/ge;->h()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    .line 1113
    :pswitch_6
    invoke-virtual {p0}, Lcom/b/a/ge;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    .line 1117
    :pswitch_7
    invoke-virtual {p0}, Lcom/b/a/ge;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1121
    :pswitch_8
    invoke-virtual {p0}, Lcom/b/a/ge;->l()Lcom/b/a/i;

    move-result-object v0

    goto :goto_4

    .line 1125
    :pswitch_9
    invoke-virtual {v1}, Lcom/b/a/cq;->u()Lcom/b/a/co;

    move-result-object v0

    .line 1127
    invoke-virtual {p0}, Lcom/b/a/ge;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1128
    invoke-virtual {p0}, Lcom/b/a/ge;->d()I

    move-result v2

    .line 1129
    invoke-virtual {v0, v2}, Lcom/b/a/co;->b(I)Lcom/b/a/cp;

    move-result-object v3

    .line 1130
    if-nez v3, :cond_b

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enum type \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/co;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value with number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->d(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    :cond_b
    move-object v0, v3

    .line 1135
    goto/16 :goto_4

    .line 1136
    :cond_c
    invoke-virtual {p0}, Lcom/b/a/ge;->c()Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-virtual {v0, v2}, Lcom/b/a/co;->a(Ljava/lang/String;)Lcom/b/a/cp;

    move-result-object v3

    .line 1138
    if-nez v3, :cond_d

    .line 1139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enum type \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/b/a/co;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value named \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/ge;->d(Ljava/lang/String;)Lcom/b/a/gb;

    move-result-object v0

    throw v0

    :cond_d
    move-object v0, v3

    .line 1145
    goto/16 :goto_4

    .line 1149
    :pswitch_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_e
    invoke-interface {p2, v1, v0}, Lcom/b/a/ew;->b(Lcom/b/a/cq;Ljava/lang/Object;)Lcom/b/a/ew;

    goto/16 :goto_5

    :cond_f
    move-object v0, v5

    move-object v1, v2

    goto/16 :goto_1

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private static a(Lcom/b/a/gg;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v1, Lcom/b/a/gd;

    invoke-direct {v1, p1}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v0, p0, v1}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/gg;Lcom/b/a/gd;)V

    .line 76
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Lcom/b/a/db;Lcom/b/a/ew;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 976
    new-instance v0, Lcom/b/a/ge;

    invoke-direct {v0, p0}, Lcom/b/a/ge;-><init>(Ljava/lang/CharSequence;)V

    .line 978
    :goto_0
    invoke-virtual {v0}, Lcom/b/a/ge;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    invoke-static {v0, p1, p2}, Lcom/b/a/fy;->a(Lcom/b/a/ge;Lcom/b/a/db;Lcom/b/a/ew;)V

    goto :goto_0

    .line 981
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Lcom/b/a/ew;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 925
    invoke-static {}, Lcom/b/a/db;->a()Lcom/b/a/db;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;Lcom/b/a/db;Lcom/b/a/ew;)V

    .line 926
    return-void
.end method

.method private static a(Ljava/lang/Readable;Lcom/b/a/db;Lcom/b/a/ew;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v0, p1, p2}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;Lcom/b/a/db;Lcom/b/a/ew;)V

    .line 946
    return-void
.end method

.method private static a(Ljava/lang/Readable;Lcom/b/a/ew;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 915
    invoke-static {}, Lcom/b/a/db;->a()Lcom/b/a/db;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {v1, v0, p1}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;Lcom/b/a/db;Lcom/b/a/ew;)V

    .line 916
    return-void
.end method

.method private static a(B)Z
    .locals 1
    .parameter

    .prologue
    .line 1324
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 1355
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/b/a/fy;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 413
    if-ltz p0, :cond_0

    .line 414
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 422
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 423
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/ev;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    sget-object v1, Lcom/b/a/fy;->b:Lcom/b/a/gc;

    new-instance v2, Lcom/b/a/gd;

    invoke-direct {v2, v0}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p0, v2}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/ev;Lcom/b/a/gd;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(Lcom/b/a/gg;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 99
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    sget-object v1, Lcom/b/a/fy;->b:Lcom/b/a/gc;

    new-instance v2, Lcom/b/a/gd;

    invoke-direct {v2, v0}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p0, v2}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/gg;Lcom/b/a/gd;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(ILjava/lang/Object;Lcom/b/a/gd;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-static {p0}, Lcom/b/a/go;->a(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/b/a/fy;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 210
    :goto_0
    return-void

    .line 197
    :pswitch_2
    const-string v0, "0x%08x"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v1, v2

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :pswitch_3
    const-string v0, "0x%016x"

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    aput-object p1, v1, v2

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 205
    check-cast p1, Lcom/b/a/i;

    invoke-static {p1}, Lcom/b/a/fy;->a(Lcom/b/a/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    .line 206
    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/b/a/gd;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :pswitch_5
    sget-object v0, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    check-cast p1, Lcom/b/a/gg;

    invoke-static {v0, p1, p2}, Lcom/b/a/gc;->a(Lcom/b/a/gc;Lcom/b/a/gg;Lcom/b/a/gd;)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/b/a/cq;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    sget-object v0, Lcom/b/a/fy;->a:Lcom/b/a/gc;

    new-instance v1, Lcom/b/a/gd;

    invoke-direct {v1, p2}, Lcom/b/a/gd;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v0, p0, p1, v1}, Lcom/b/a/gc;->b(Lcom/b/a/gc;Lcom/b/a/cq;Ljava/lang/Object;Lcom/b/a/gd;)V

    .line 169
    return-void
.end method

.method private static b(B)Z
    .locals 1
    .parameter

    .prologue
    .line 1329
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(B)I
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x61

    const/16 v1, 0x30

    .line 1340
    if-gt v1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1341
    sub-int v0, p0, v1

    .line 1345
    :goto_0
    return v0

    .line 1342
    :cond_0
    if-gt v2, p0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 1343
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1345
    :cond_1
    const/16 v0, 0x41

    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1366
    invoke-static {p0, v0, v0}, Lcom/b/a/fy;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static d(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1375
    invoke-static {p0, v0, v0}, Lcom/b/a/fy;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method static e(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 1386
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/b/a/fy;->a(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1319
    invoke-static {p0}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;)Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
