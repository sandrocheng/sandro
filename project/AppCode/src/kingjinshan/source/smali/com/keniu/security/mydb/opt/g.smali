.class public final Lcom/keniu/security/mydb/opt/g;
.super Ljava/lang/Object;
.source "DBUtils.java"


# static fields
.field public static final a:I = 0x4

.field public static final b:I = 0x2

.field public static final c:I = 0x3d

.field public static final d:I = 0xa

.field public static final e:I = 0xa

.field public static final f:I = 0x20

.field public static final g:Ljava/lang/String; = "unkown_str"

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/keniu/security/mydb/opt/g;->h:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)I
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 353
    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v0

    return v0
.end method

.method private static a([BI)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 76
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_0

    const-wide/16 v0, -0x1

    .line 81
    :goto_0
    return-wide v0

    .line 77
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v5, v0

    move-wide v1, v5

    move v0, p1

    .line 78
    :goto_1
    add-int/lit8 v3, p1, 0x4

    if-ge v0, v3, :cond_1

    .line 79
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v0, p1

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-wide v0, v1

    .line 81
    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/16 v13, 0x14

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v12, 0x4

    const/16 v11, 0xa

    .line 404
    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    const/16 v0, 0x3d

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    array-length v1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/keniu/security/mydb/opt/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/keniu/security/mydb/opt/e;-><init>(Lcom/keniu/security/mydb/opt/c;)V

    new-array v2, v11, [B

    new-array v3, v11, [B

    new-array v4, v12, [B

    new-array v5, v12, [B

    const/16 v6, 0x20

    new-array v6, v6, [B

    move v8, v7

    :goto_1
    array-length v9, v0

    if-ge v7, v9, :cond_7

    if-ge v7, v11, :cond_2

    aget-byte v9, v0, v7

    aput-byte v9, v2, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-ge v7, v13, :cond_3

    sub-int v9, v7, v11

    aget-byte v10, v0, v7

    aput-byte v10, v3, v9

    goto :goto_2

    :cond_3
    const/16 v9, 0x18

    if-ge v7, v9, :cond_4

    sub-int v9, v7, v13

    aget-byte v10, v0, v7

    aput-byte v10, v4, v9

    goto :goto_2

    :cond_4
    const/16 v9, 0x18

    if-ne v7, v9, :cond_5

    aget-byte v8, v0, v7

    goto :goto_2

    :cond_5
    const/16 v9, 0x1d

    if-ge v7, v9, :cond_6

    const/16 v9, 0x19

    sub-int v9, v7, v9

    aget-byte v10, v0, v7

    aput-byte v10, v5, v9

    goto :goto_2

    :cond_6
    const/16 v9, 0x1d

    sub-int v9, v7, v9

    aget-byte v10, v0, v7

    aput-byte v10, v6, v9

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/keniu/security/mydb/opt/e;->a:Ljava/lang/String;

    array-length v0, v3

    if-eq v0, v11, :cond_8

    const-string v0, ""

    :goto_3
    iput-object v0, v1, Lcom/keniu/security/mydb/opt/e;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/mydb/opt/e;->c:J

    iput v8, v1, Lcom/keniu/security/mydb/opt/e;->d:I

    invoke-static {v5}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/mydb/opt/e;->e:J

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/keniu/security/mydb/opt/e;->f:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v3}, Lcom/keniu/security/mydb/opt/g;->c([B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v3, v12}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static a([BLcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/16 v13, 0x18

    const/16 v12, 0x14

    const/4 v6, 0x0

    const/4 v11, 0x4

    const/16 v10, 0xa

    .line 241
    array-length v0, p0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 263
    :goto_0
    return-object v0

    .line 242
    :cond_0
    new-instance v0, Lcom/keniu/security/mydb/opt/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/keniu/security/mydb/opt/e;-><init>(Lcom/keniu/security/mydb/opt/c;)V

    .line 243
    new-array v1, v10, [B

    .line 244
    new-array v2, v10, [B

    .line 245
    new-array v3, v11, [B

    .line 246
    new-array v4, v11, [B

    .line 247
    const/16 v5, 0x20

    new-array v5, v5, [B

    move v7, v6

    .line 249
    :goto_1
    array-length v8, p0

    if-ge v6, v8, :cond_6

    .line 250
    if-ge v6, v10, :cond_1

    aget-byte v8, p0, v6

    aput-byte v8, v1, v6

    .line 249
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 251
    :cond_1
    if-ge v6, v12, :cond_2

    sub-int v8, v6, v10

    aget-byte v9, p0, v6

    aput-byte v9, v2, v8

    goto :goto_2

    .line 252
    :cond_2
    if-ge v6, v13, :cond_3

    sub-int v8, v6, v12

    aget-byte v9, p0, v6

    aput-byte v9, v3, v8

    goto :goto_2

    .line 253
    :cond_3
    if-ne v6, v13, :cond_4

    aget-byte v7, p0, v6

    goto :goto_2

    .line 254
    :cond_4
    const/16 v8, 0x1d

    if-ge v6, v8, :cond_5

    const/16 v8, 0x19

    sub-int v8, v6, v8

    aget-byte v9, p0, v6

    aput-byte v9, v4, v8

    goto :goto_2

    .line 255
    :cond_5
    const/16 v8, 0x1d

    sub-int v8, v6, v8

    aget-byte v9, p0, v6

    aput-byte v9, v5, v8

    goto :goto_2

    .line 257
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v0, Lcom/keniu/security/mydb/opt/e;->a:Ljava/lang/String;

    .line 258
    array-length v1, v2

    if-eq v1, v10, :cond_7

    const-string v1, ""

    :goto_3
    iput-object v1, v0, Lcom/keniu/security/mydb/opt/e;->b:Ljava/lang/String;

    .line 259
    invoke-static {v3}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/keniu/security/mydb/opt/e;->c:J

    .line 260
    iput v7, v0, Lcom/keniu/security/mydb/opt/e;->d:I

    .line 261
    invoke-static {v4}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/keniu/security/mydb/opt/e;->e:J

    .line 262
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/keniu/security/mydb/opt/e;->f:Ljava/lang/String;

    goto :goto_0

    .line 258
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2}, Lcom/keniu/security/mydb/opt/g;->c([B)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v2, v11}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v6, 0x6

    invoke-static {v2, v6}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static a(Ljava/io/InputStream;J)Ljava/util/List;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 157
    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-static {v1}, Lcom/keniu/security/mydb/opt/g;->c([B)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;JILcom/keniu/security/mydb/opt/c;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;JI)[[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/keniu/security/mydb/opt/d;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p4}, Lcom/keniu/security/mydb/opt/d;-><init>(Lcom/keniu/security/mydb/opt/c;)V

    aget-object v4, v1, v2

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->c:I

    aget-object v4, v1, v2

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v4

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->a:I

    aget-object v4, v1, v2

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->d:I

    aget-object v4, v1, v2

    const/16 v5, 0x8

    aget-byte v4, v4, v5

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a([[BLcom/keniu/security/mydb/opt/c;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    array-length v0, p0

    if-lez v0, :cond_0

    aget-object v0, p0, v2

    array-length v0, v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 124
    :cond_1
    return-object v0

    .line 120
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 121
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 122
    new-instance v2, Lcom/keniu/security/mydb/opt/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-static {v4}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lcom/keniu/security/mydb/opt/f;-><init>(Lcom/keniu/security/mydb/opt/c;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a([B)V
    .locals 4
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 51
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public static a(Ljava/io/InputStream;JI)[[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    long-to-int v0, p1

    filled-new-array {v0, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)I
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 340
    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 341
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 342
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 343
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v0

    return v0
.end method

.method private static b([BI)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 103
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 108
    :goto_0
    return v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    .line 105
    :goto_1
    add-int/lit8 v2, p1, 0x2

    if-ge v0, v2, :cond_1

    .line 106
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v0, p1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 108
    goto :goto_0
.end method

.method public static b(Ljava/io/InputStream;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 364
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 365
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 366
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 367
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b([B)J
    .locals 2
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Ljava/io/InputStream;Lcom/keniu/security/mydb/opt/c;)Lcom/keniu/security/mydb/opt/e;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/16 v13, 0x14

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/4 v12, 0x4

    const/16 v11, 0xa

    .line 390
    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 391
    :cond_0
    const/16 v0, 0x3d

    new-array v0, v0, [B

    .line 392
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 393
    array-length v1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lcom/keniu/security/mydb/opt/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p1}, Lcom/keniu/security/mydb/opt/e;-><init>(Lcom/keniu/security/mydb/opt/c;)V

    new-array v2, v11, [B

    new-array v3, v11, [B

    new-array v4, v12, [B

    new-array v5, v12, [B

    const/16 v6, 0x20

    new-array v6, v6, [B

    move v8, v7

    :goto_1
    array-length v9, v0

    if-ge v7, v9, :cond_7

    if-ge v7, v11, :cond_2

    aget-byte v9, v0, v7

    aput-byte v9, v2, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-ge v7, v13, :cond_3

    sub-int v9, v7, v11

    aget-byte v10, v0, v7

    aput-byte v10, v3, v9

    goto :goto_2

    :cond_3
    const/16 v9, 0x18

    if-ge v7, v9, :cond_4

    sub-int v9, v7, v13

    aget-byte v10, v0, v7

    aput-byte v10, v4, v9

    goto :goto_2

    :cond_4
    const/16 v9, 0x18

    if-ne v7, v9, :cond_5

    aget-byte v8, v0, v7

    goto :goto_2

    :cond_5
    const/16 v9, 0x1d

    if-ge v7, v9, :cond_6

    const/16 v9, 0x19

    sub-int v9, v7, v9

    aget-byte v10, v0, v7

    aput-byte v10, v5, v9

    goto :goto_2

    :cond_6
    const/16 v9, 0x1d

    sub-int v9, v7, v9

    aget-byte v10, v0, v7

    aput-byte v10, v6, v9

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/keniu/security/mydb/opt/e;->a:Ljava/lang/String;

    array-length v0, v3

    if-eq v0, v11, :cond_8

    const-string v0, ""

    :goto_3
    iput-object v0, v1, Lcom/keniu/security/mydb/opt/e;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/mydb/opt/e;->c:J

    iput v8, v1, Lcom/keniu/security/mydb/opt/e;->d:I

    invoke-static {v5}, Lcom/keniu/security/mydb/opt/g;->b([B)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/keniu/security/mydb/opt/e;->e:J

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v0, v1, Lcom/keniu/security/mydb/opt/e;->f:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v3}, Lcom/keniu/security/mydb/opt/g;->c([B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v3, v12}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v3, v2}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static b(Ljava/io/InputStream;JILcom/keniu/security/mydb/opt/c;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-static {p0, p1, p2, p3}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;JI)[[B

    move-result-object v1

    .line 280
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 281
    new-instance v3, Lcom/keniu/security/mydb/opt/d;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p4}, Lcom/keniu/security/mydb/opt/d;-><init>(Lcom/keniu/security/mydb/opt/c;)V

    .line 282
    aget-object v4, v1, v2

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->c:I

    .line 283
    aget-object v4, v1, v2

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v4

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->a:I

    .line 284
    aget-object v4, v1, v2

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->d:I

    .line 285
    aget-object v4, v1, v2

    const/16 v5, 0x8

    aget-byte v4, v4, v5

    iput v4, v3, Lcom/keniu/security/mydb/opt/d;->b:I

    .line 286
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/io/InputStream;JI)[[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    long-to-int v0, p1

    filled-new-array {v0, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 173
    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    .line 174
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-object v0
.end method

.method private static c([B)I
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v0

    return v0
.end method

.method private static c(Ljava/io/InputStream;)J
    .locals 2
    .parameter

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/keniu/security/mydb/opt/g;->b(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Ljava/io/InputStream;J)Ljava/util/List;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 136
    cmp-long v0, v1, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 137
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 140
    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-gez v3, :cond_1

    .line 141
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 142
    invoke-static {v1}, Lcom/keniu/security/mydb/opt/g;->c([B)I

    move-result v3

    new-array v3, v3, [B

    .line 143
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 144
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return-object v0
.end method

.method private static d([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 227
    array-length v0, p0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const-string v0, ""

    .line 228
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lcom/keniu/security/mydb/opt/g;->c([B)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/io/InputStream;J)[J
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 200
    long-to-int v0, p1

    new-array v0, v0, [J

    .line 201
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;JI)[[B

    move-result-object v1

    move v2, v5

    .line 202
    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 203
    aget-object v3, v1, v2

    invoke-static {v3, v5}, Lcom/keniu/security/mydb/opt/g;->a([BI)J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-object v0
.end method

.method private static e(Ljava/io/InputStream;J)[J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-static {p0, p1, p2}, Lcom/keniu/security/mydb/opt/g;->d(Ljava/io/InputStream;J)[J

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/io/InputStream;J)[J
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 313
    long-to-int v0, p1

    new-array v0, v0, [J

    .line 314
    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Lcom/keniu/security/mydb/opt/g;->a(Ljava/io/InputStream;JI)[[B

    move-result-object v1

    move v2, v5

    .line 315
    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 316
    aget-object v3, v1, v2

    invoke-static {v3, v5}, Lcom/keniu/security/mydb/opt/g;->b([BI)I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-object v0
.end method

.method private static g(Ljava/io/InputStream;J)[J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-static {p0, p1, p2}, Lcom/keniu/security/mydb/opt/g;->d(Ljava/io/InputStream;J)[J

    move-result-object v0

    return-object v0
.end method
