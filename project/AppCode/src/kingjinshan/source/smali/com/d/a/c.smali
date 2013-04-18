.class public final Lcom/d/a/c;
.super Ljava/lang/Object;
.source "GDiffPatcher.java"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->a:Ljava/nio/ByteBuffer;

    .line 63
    iget-object v0, p0, Lcom/d/a/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/c;->b:[B

    .line 69
    return-void
.end method

.method private a(ILjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 204
    move v0, p1

    :goto_0
    if-lez v0, :cond_1

    .line 205
    iget-object v1, p0, Lcom/d/a/c;->b:[B

    array-length v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/d/a/c;->b:[B

    invoke-virtual {p2, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 207
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 208
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/d/a/c;->b:[B

    invoke-virtual {p3, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 210
    sub-int/2addr v0, v1

    .line 211
    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method private a(JILcom/d/a/g;Ljava/io/OutputStream;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-interface {p4, p1, p2}, Lcom/d/a/g;->a(J)V

    move v0, p3

    .line 192
    :goto_0
    if-lez v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/d/a/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/d/a/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 195
    iget-object v1, p0, Lcom/d/a/c;->a:Ljava/nio/ByteBuffer;

    invoke-interface {p4, v1}, Lcom/d/a/g;->a(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 196
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 197
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/d/a/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p5, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 199
    sub-int/2addr v0, v1

    .line 200
    goto :goto_0

    .line 201
    :cond_1
    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/d/a/f;

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/d/a/f;-><init>(Ljava/io/RandomAccessFile;)V

    .line 78
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 79
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/d/a/c;->a(Lcom/d/a/g;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    invoke-virtual {v0}, Lcom/d/a/f;->close()V

    .line 86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 87
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 88
    return-void

    .line 82
    :catch_0
    move-exception v3

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/d/a/f;->close()V

    .line 86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 87
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v3
.end method

.method private a([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Lcom/d/a/a;

    invoke-direct {v0, p1}, Lcom/d/a/a;-><init>([B)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/d/a/c;->a(Lcom/d/a/g;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 96
    return-void
.end method

.method private static a([Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const-wide/32 v5, 0x7fffffff

    .line 219
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 220
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage GDiffPatch source patch output"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "aborting.."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 231
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "source or patch is too large, max length is 2147483647"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "aborting.."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while patching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    :try_start_1
    new-instance v3, Lcom/d/a/c;

    invoke-direct {v3}, Lcom/d/a/c;-><init>()V

    .line 236
    new-instance v4, Lcom/d/a/f;

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/d/a/f;-><init>(Ljava/io/RandomAccessFile;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v3, v4, v0, v1}, Lcom/d/a/c;->a(Lcom/d/a/g;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v4}, Lcom/d/a/f;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 238
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "finished patching file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 236
    :catch_1
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v4}, Lcom/d/a/f;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private a([B[B)[B
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v1, v0}, Lcom/d/a/c;->a([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/d/a/g;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xd1

    .line 112
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, p3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 116
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 122
    :cond_0
    new-instance v0, Lcom/d/a/e;

    const-string v1, "magic string not found, aborting!"

    invoke-direct {v0, v1}, Lcom/d/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    const/16 v1, 0xf6

    if-gt v0, v1, :cond_2

    .line 133
    invoke-direct {p0, v0, v6, v5}, Lcom/d/a/c;->a(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 137
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 140
    invoke-direct {p0, v0, v6, v5}, Lcom/d/a/c;->a(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 144
    invoke-direct {p0, v0, v6, v5}, Lcom/d/a/c;->a(ILjava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 148
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 149
    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 152
    :pswitch_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 153
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 154
    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 157
    :pswitch_4
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 158
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 159
    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 162
    :pswitch_5
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 163
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 164
    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 167
    :pswitch_6
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 168
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 169
    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 172
    :pswitch_7
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 173
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 174
    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 177
    :pswitch_8
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 178
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/d/a/c;->a(JILcom/d/a/g;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 184
    :cond_3
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 186
    return-void

    .line 137
    :pswitch_data_0
    .packed-switch 0xf7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
