.class final Lcn/com/wali/zft/DataStore;
.super Ljava/lang/Object;
.source "DataStore.java"


# static fields
.field private static final ITEM_SIZE:I = 0x30

.field private static final MAX_SIZE:I = 0x1388


# instance fields
.field private msb:Lcn/com/wali/zft/MemShareBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method private find_blank()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 175
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v0}, Lcn/com/wali/zft/MemShareBuffer;->getMap()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    move v0, v3

    .line 191
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    :goto_1
    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    .line 184
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 188
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 189
    mul-int/lit8 v2, v1, 0x30

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_2
    move v0, v3

    .line 191
    goto :goto_0
.end method

.method private find_item(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x0

    .line 196
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    if-nez v0, :cond_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v0}, Lcn/com/wali/zft/MemShareBuffer;->getMap()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 202
    if-nez v0, :cond_1

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_1
    const/16 v1, 0x29

    new-array v1, v1, [B

    .line 208
    invoke-virtual {v0, v5}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move v2, v5

    .line 209
    :goto_1
    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 211
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 212
    aget-byte v3, v1, v5

    if-eqz v3, :cond_3

    .line 214
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x14

    invoke-direct {v3, v1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    mul-int/lit8 v0, v2, 0x30

    goto :goto_0

    .line 221
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 222
    mul-int/lit8 v3, v2, 0x30

    invoke-virtual {v0, v3}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 224
    :cond_3
    invoke-direct {p0}, Lcn/com/wali/zft/DataStore;->find_blank()I

    move-result v0

    goto :goto_0
.end method

.method private readLong([BI)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide v4, 0xffffffffL

    .line 153
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 155
    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 158
    int-to-long v2, v0

    and-long/2addr v2, v4

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    int-to-long v0, v1

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeLong([BIJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    add-int/lit8 v0, p2, 0x0

    const/16 v1, 0x38

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 164
    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x30

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 165
    add-int/lit8 v0, p2, 0x2

    const/16 v1, 0x28

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 166
    add-int/lit8 v0, p2, 0x3

    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 167
    add-int/lit8 v0, p2, 0x4

    const/16 v1, 0x18

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 168
    add-int/lit8 v0, p2, 0x5

    const/16 v1, 0x10

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 169
    add-int/lit8 v0, p2, 0x6

    const/16 v1, 0x8

    shr-long v1, p3, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 170
    add-int/lit8 v0, p2, 0x7

    long-to-int v1, p3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 171
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v0}, Lcn/com/wali/zft/MemShareBuffer;->close()V

    .line 93
    :cond_0
    return-void
.end method

.method public final get_current()[Lcn/com/wali/zft/DataStore$Pojo;
    .locals 11

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v10, 0x0

    .line 97
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 104
    iget-object v3, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v3}, Lcn/com/wali/zft/MemShareBuffer;->getMap()Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 105
    if-nez v3, :cond_1

    .line 107
    new-array v0, v10, [Lcn/com/wali/zft/DataStore$Pojo;

    goto :goto_0

    .line 113
    :cond_1
    const/16 v4, 0x30

    :try_start_0
    new-array v4, v4, [B

    .line 115
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    move v5, v10

    .line 116
    :goto_1
    const/16 v6, 0x64

    if-ge v5, v6, :cond_3

    .line 118
    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 119
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    if-eqz v6, :cond_3

    .line 121
    const/16 v6, 0x28

    invoke-direct {p0, v4, v6}, Lcn/com/wali/zft/DataStore;->readLong([BI)J

    move-result-wide v6

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 125
    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 127
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v2, v6, :cond_2

    const/4 v6, 0x5

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v1, v6, :cond_2

    .line 130
    new-instance v6, Lcn/com/wali/zft/DataStore$Pojo;

    invoke-direct {v6}, Lcn/com/wali/zft/DataStore$Pojo;-><init>()V

    .line 131
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-direct {v7, v4, v8, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcn/com/wali/zft/DataStore$Pojo;->key:Ljava/lang/String;
    invoke-static {v6, v7}, Lcn/com/wali/zft/DataStore$Pojo;->access$002(Lcn/com/wali/zft/DataStore$Pojo;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    new-instance v7, Ljava/lang/String;

    const/16 v8, 0x14

    const/16 v9, 0x14

    invoke-direct {v7, v4, v8, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcn/com/wali/zft/DataStore$Pojo;->value:Ljava/lang/String;
    invoke-static {v6, v7}, Lcn/com/wali/zft/DataStore$Pojo;->access$102(Lcn/com/wali/zft/DataStore$Pojo;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    const/16 v7, 0x28

    invoke-direct {p0, v4, v7}, Lcn/com/wali/zft/DataStore;->readLong([BI)J

    move-result-wide v7

    #setter for: Lcn/com/wali/zft/DataStore$Pojo;->update:J
    invoke-static {v6, v7, v8}, Lcn/com/wali/zft/DataStore$Pojo;->access$202(Lcn/com/wali/zft/DataStore$Pojo;J)J

    .line 134
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 137
    mul-int/lit8 v6, v5, 0x30

    invoke-virtual {v3, v6}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 139
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/zft/ds"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 148
    :cond_3
    new-array v1, v10, [Lcn/com/wali/zft/DataStore$Pojo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcn/com/wali/zft/DataStore$Pojo;

    move-object v0, p0

    goto/16 :goto_0
.end method

.method public final get_value(Ljava/lang/String;)Lcn/com/wali/zft/DataStore$Pojo;
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x14

    .line 255
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 278
    :goto_0
    return-object v0

    .line 259
    :cond_0
    invoke-direct {p0, p1}, Lcn/com/wali/zft/DataStore;->find_item(Ljava/lang/String;)I

    move-result v0

    .line 260
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v0, v2

    .line 262
    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v1}, Lcn/com/wali/zft/MemShareBuffer;->getMap()Ljava/nio/MappedByteBuffer;

    move-result-object v1

    .line 266
    if-nez v1, :cond_2

    move-object v0, v2

    .line 268
    goto :goto_0

    .line 270
    :cond_2
    const/16 v2, 0x30

    new-array v2, v2, [B

    .line 271
    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 272
    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 273
    new-instance v0, Lcn/com/wali/zft/DataStore$Pojo;

    invoke-direct {v0}, Lcn/com/wali/zft/DataStore$Pojo;-><init>()V

    .line 275
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcn/com/wali/zft/DataStore$Pojo;->key:Ljava/lang/String;
    invoke-static {v0, v1}, Lcn/com/wali/zft/DataStore$Pojo;->access$002(Lcn/com/wali/zft/DataStore$Pojo;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v4, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcn/com/wali/zft/DataStore$Pojo;->value:Ljava/lang/String;
    invoke-static {v0, v1}, Lcn/com/wali/zft/DataStore$Pojo;->access$102(Lcn/com/wali/zft/DataStore$Pojo;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const/16 v1, 0x28

    invoke-direct {p0, v2, v1}, Lcn/com/wali/zft/DataStore;->readLong([BI)J

    move-result-wide v1

    #setter for: Lcn/com/wali/zft/DataStore$Pojo;->update:J
    invoke-static {v0, v1, v2}, Lcn/com/wali/zft/DataStore$Pojo;->access$202(Lcn/com/wali/zft/DataStore$Pojo;J)J

    goto :goto_0
.end method

.method public final open()Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x1388

    const/4 v6, 0x1

    .line 59
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    if-eqz v0, :cond_0

    move v0, v6

    .line 84
    :goto_0
    return v0

    .line 63
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/zft/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 68
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "ds"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 71
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 74
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 80
    :cond_3
    :try_start_0
    new-instance v0, Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x1388

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcn/com/wali/zft/MemShareBuffer;-><init>(Ljava/lang/String;JZZ)V

    iput-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final put_value(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 229
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    if-nez v0, :cond_0

    move v0, v6

    .line 250
    :goto_0
    return v0

    .line 233
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 234
    invoke-direct {p0, p1}, Lcn/com/wali/zft/DataStore;->find_item(Ljava/lang/String;)I

    move-result v1

    .line 235
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v0, v6

    .line 237
    goto :goto_0

    .line 239
    :cond_1
    const/16 v2, 0x30

    new-array v2, v2, [B

    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 241
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 242
    array-length v5, v3

    if-le v5, v7, :cond_2

    move v5, v7

    :goto_1
    invoke-static {v3, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v3, v4

    if-le v3, v7, :cond_3

    move v3, v7

    :goto_2
    invoke-static {v4, v6, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    const/16 v3, 0x28

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lcn/com/wali/zft/DataStore;->writeLong([BIJ)V

    .line 246
    iget-object v0, p0, Lcn/com/wali/zft/DataStore;->msb:Lcn/com/wali/zft/MemShareBuffer;

    invoke-virtual {v0}, Lcn/com/wali/zft/MemShareBuffer;->getMap()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 250
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    array-length v5, v3

    goto :goto_1

    .line 243
    :cond_3
    array-length v3, v4

    goto :goto_2
.end method
