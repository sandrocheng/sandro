.class public final Lkdebug/b;
.super Ljava/lang/Object;
.source "KZipUtils.java"


# static fields
.field private static final a:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/DataOutput;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    and-int/lit16 v0, p1, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 151
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 152
    return p1
.end method

.method private static a(Ljava/io/DataOutput;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    const-wide/16 v0, 0xff

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 143
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 144
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 145
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 146
    return-wide p1
.end method

.method public static a(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 22
    const/high16 v4, 0x10

    new-array v4, v4, [B

    .line 26
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 30
    new-array v7, v6, [J

    .line 31
    new-array v8, v6, [[B

    .line 32
    new-array v9, v6, [Ljava/io/File;

    .line 33
    new-array v10, v6, [J

    .line 38
    const/16 p1, 0x0

    .line 39
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 40
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move/from16 v12, p1

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 42
    new-instance v13, Ljava/io/File;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v14, "_"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v14, Ljava/lang/String;

    const-string v15, "8859_1"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v15, "GB2312"

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 47
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    aput-wide v14, v10, v12

    .line 48
    const-wide/32 v14, 0x4034b50

    invoke-static {v5, v14, v15}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 49
    const/16 v14, 0xa

    invoke-static {v5, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 50
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 51
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 52
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 53
    const/4 v14, 0x0

    invoke-static {v5, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 54
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    .line 55
    const-wide/16 v16, 0x0

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 56
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v16

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 57
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v16

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 58
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 59
    const/16 v16, 0x0

    move-object v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 60
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 63
    new-instance v16, Ljava/util/zip/CRC32;

    invoke-direct/range {v16 .. v16}, Ljava/util/zip/CRC32;-><init>()V

    .line 64
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 67
    :goto_1
    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v18

    .line 68
    if-lez v18, :cond_0

    .line 70
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object v1, v4

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 74
    const/16 v19, 0x0

    move-object v0, v5

    move-object v1, v4

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :catch_0
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    :goto_2
    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 79
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v17

    .line 80
    invoke-virtual {v5, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 81
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    invoke-static {v5, v14, v15}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 82
    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 85
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    aput-wide v14, v7, v12

    .line 86
    aput-object p1, v8, v12

    .line 87
    aput-object v13, v9, v12

    .line 88
    add-int/lit8 p1, v12, 0x1

    move/from16 v12, p1

    .line 89
    goto/16 :goto_0

    .line 91
    :cond_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    .line 96
    const/16 p1, 0x0

    :goto_3
    move/from16 v0, p1

    move v1, v6

    if-ge v0, v1, :cond_2

    .line 98
    const-wide/32 v13, 0x2014b50

    invoke-static {v5, v13, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 99
    const/16 v4, 0x14

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 100
    const/16 v4, 0xa

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 101
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 102
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 103
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 104
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 105
    aget-wide v13, v7, p1

    invoke-static {v5, v13, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 106
    aget-object v4, v9, p1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v5, v13, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 107
    aget-object v4, v9, p1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-static {v5, v13, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 108
    aget-object v4, v8, p1

    array-length v4, v4

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 109
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 110
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 111
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 112
    const/4 v4, 0x0

    invoke-static {v5, v4}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 113
    const-wide/16 v13, 0x0

    invoke-static {v5, v13, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 114
    aget-wide v13, v10, p1

    invoke-static {v5, v13, v14}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 115
    aget-object v4, v8, p1

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 96
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 118
    :cond_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    .line 123
    const-wide/32 v8, 0x6054b50

    invoke-static {v5, v8, v9}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 124
    const/16 p1, 0x0

    move-object v0, v5

    move/from16 v1, p1

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 125
    const/16 p1, 0x0

    move-object v0, v5

    move/from16 v1, p1

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 126
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->size()I

    move-result p1

    move-object v0, v5

    move/from16 v1, p1

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 127
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->size()I

    move-result p0

    move-object v0, v5

    move/from16 v1, p0

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 128
    sub-long p0, v6, v11

    move-object v0, v5

    move-wide/from16 v1, p0

    invoke-static {v0, v1, v2}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 129
    invoke-static {v5, v11, v12}, Lkdebug/b;->a(Ljava/io/DataOutput;J)J

    .line 130
    const/16 p0, 0x0

    move-object v0, v5

    move/from16 v1, p0

    invoke-static {v0, v1}, Lkdebug/b;->a(Ljava/io/DataOutput;I)I

    .line 132
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
