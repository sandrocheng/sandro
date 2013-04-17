.class public final Lcom/qq/taf/jce/JceInputStream;
.super Ljava/lang/Object;
.source "JceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/taf/jce/JceInputStream$HeadData;
    }
.end annotation


# instance fields
.field private bs:Ljava/nio/ByteBuffer;

.field protected sServerEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 51
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .parameter "bs"
    .parameter "pos"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 1000
    return-void
.end method

.method private peakHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)I
    .locals 1
    .parameter "hd"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .local p1, mt:Ljava/lang/Object;,"TT;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 818
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 819
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 820
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 821
    iget-byte v5, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v5, :pswitch_data_0

    .line 834
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 823
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 824
    .local v3, size:I
    if-gez v3, :cond_0

    .line 825
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 826
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    .line 827
    .local v2, lr:[Ljava/lang/Object;,"[TT;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 828
    invoke-virtual {p0, p1, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 829
    .local v4, t:Ljava/lang/Object;,"TT;"
    aput-object v4, v2, v1

    .line 827
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v2           #lr:[Ljava/lang/Object;,"[TT;"
    .end local v3           #size:I
    .end local v4           #t:Ljava/lang/Object;,"TT;"
    :cond_1
    if-eqz p3, :cond_2

    .line 837
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 839
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "hd"
    .parameter "bb"

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 74
    .local v0, b:B
    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    .line 75
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    .line 76
    iget v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    .line 78
    const/4 v1, 0x2

    .line 80
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readMap(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .locals 12
    .parameter
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 495
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 526
    :cond_1
    return-object p1

    .line 500
    .restart local p1       #mr:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 501
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 502
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 503
    .local v5, mk:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 505
    .local v6, mv:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 506
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 507
    .local v1, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 508
    iget-byte v9, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v9, :pswitch_data_0

    .line 521
    new-instance v9, Lcom/qq/taf/jce/JceDecodeException;

    const-string v10, "type mismatch."

    invoke-direct {v9, v10}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 510
    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v7

    .line 511
    .local v7, size:I
    if-gez v7, :cond_3

    .line 512
    new-instance v9, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size invalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 513
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 514
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v5, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 515
    .local v4, k:Ljava/lang/Object;,"TK;"
    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {p0, v6, v9, v10}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v8

    .line 516
    .local v8, v:Ljava/lang/Object;,"TV;"
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #i:I
    .end local v4           #k:Ljava/lang/Object;,"TK;"
    .end local v7           #size:I
    .end local v8           #v:Ljava/lang/Object;,"TV;"
    :cond_4
    if-eqz p4, :cond_1

    .line 524
    new-instance v9, Lcom/qq/taf/jce/JceDecodeException;

    const-string v10, "require field not exist."

    invoke-direct {v9, v10}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 508
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private skip(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    return-void
.end method

.method private skipField()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 126
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 127
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V

    .line 128
    return-void
.end method

.method private skipField(B)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 190
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "invalid type."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :pswitch_0
    invoke-direct {p0, v6}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 192
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 136
    :pswitch_2
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 139
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 142
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 145
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 148
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 152
    .local v2, len:I
    if-gez v2, :cond_1

    .line 153
    add-int/lit16 v2, v2, 0x100

    .line 154
    :cond_1
    invoke-direct {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 158
    .end local v2           #len:I
    :pswitch_8
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_0

    .line 162
    :pswitch_9
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 163
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    mul-int/lit8 v4, v3, 0x2

    if-ge v1, v4, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/qq/taf/jce/JceInputStream;->skipField()V

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    .end local v1           #i:I
    .end local v3           #size:I
    :pswitch_a
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 169
    .restart local v3       #size:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/qq/taf/jce/JceInputStream;->skipField()V

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 174
    .end local v1           #i:I
    .end local v3           #size:I
    :pswitch_b
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 175
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 176
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v4, :cond_2

    .line 177
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipField with invalid type, type value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_2
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 180
    .restart local v3       #size:I
    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto/16 :goto_0

    .line 184
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v3           #size:I
    :pswitch_c
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    goto/16 :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public directRead(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;
    .locals 5
    .parameter "o"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 897
    const/4 v2, 0x0

    .line 898
    .local v2, ref:Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 900
    :try_start_0
    invoke-virtual {p1}, Lcom/qq/taf/jce/JceStruct;->newInit()Lcom/qq/taf/jce/JceStruct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 905
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 906
    .local v1, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 907
    iget-byte v3, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 908
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :catch_0
    move-exception v0

    .line 902
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 909
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    invoke-virtual {v2, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 910
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 914
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    return-object v2

    .line 911
    :cond_2
    if-eqz p3, :cond_1

    .line 912
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getBs()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public read(BIZ)B
    .locals 3
    .parameter "c"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 202
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 203
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_0

    .line 211
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :sswitch_0
    const/4 p1, 0x0

    .line 216
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    :goto_0
    return p1

    .line 208
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 209
    goto :goto_0

    .line 213
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    if-eqz p3, :cond_0

    .line 214
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public read(DIZ)D
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 318
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 320
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 321
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_0

    .line 332
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :sswitch_0
    const-wide/16 p1, 0x0

    .line 337
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    :goto_0
    return-wide p1

    .line 326
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    float-to-double p1, v1

    .line 327
    goto :goto_0

    .line 329
    :sswitch_2
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    .line 330
    goto :goto_0

    .line 334
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    if-eqz p4, :cond_0

    .line 335
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public read(FIZ)F
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 298
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 300
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 301
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_0

    .line 309
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :sswitch_0
    const/4 p1, 0x0

    .line 314
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    :goto_0
    return p1

    .line 306
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    .line 307
    goto :goto_0

    .line 311
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    if-eqz p3, :cond_0

    .line 312
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public read(IIZ)I
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 243
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 245
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 246
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_0

    .line 260
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :sswitch_0
    const/4 p1, 0x0

    .line 265
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    :goto_0
    return p1

    .line 251
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 252
    goto :goto_0

    .line 254
    :sswitch_2
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 255
    goto :goto_0

    .line 257
    :sswitch_3
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    .line 258
    goto :goto_0

    .line 262
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    if-eqz p3, :cond_0

    .line 263
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public read(JIZ)J
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 269
    invoke-virtual {p0, p3}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 271
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 272
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_0

    .line 289
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :sswitch_0
    const-wide/16 p1, 0x0

    .line 294
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    :goto_0
    return-wide p1

    .line 277
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-long p1, v1

    .line 278
    goto :goto_0

    .line 280
    :sswitch_2
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-long p1, v1

    .line 281
    goto :goto_0

    .line 283
    :sswitch_3
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long p1, v1

    .line 284
    goto :goto_0

    .line 286
    :sswitch_4
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    .line 287
    goto :goto_0

    .line 291
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    if-eqz p4, :cond_0

    .line 292
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;
    .locals 5
    .parameter "o"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 919
    const/4 v2, 0x0

    .line 920
    .local v2, ref:Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 922
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ref:Lcom/qq/taf/jce/JceStruct;
    check-cast v2, Lcom/qq/taf/jce/JceStruct;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    .restart local v2       #ref:Lcom/qq/taf/jce/JceStruct;
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 928
    .local v1, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 929
    iget-byte v3, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 930
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 923
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #ref:Lcom/qq/taf/jce/JceStruct;
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 931
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v2       #ref:Lcom/qq/taf/jce/JceStruct;
    :cond_0
    invoke-virtual {v2, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 932
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 936
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    return-object v2

    .line 933
    :cond_2
    if-eqz p3, :cond_1

    .line 934
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public read(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, o:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 945
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 984
    .end local p1           #o:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v1

    .line 947
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 948
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 949
    :cond_1
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_2

    .line 950
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 951
    :cond_2
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 952
    invoke-virtual {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    .line 953
    .local v0, i:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 954
    .end local v0           #i:I
    :cond_3
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 955
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 956
    :cond_4
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    .line 957
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 958
    :cond_5
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_6

    .line 959
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 960
    :cond_6
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 961
    invoke-virtual {p0, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 962
    :cond_7
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_8

    .line 963
    check-cast p1, Ljava/util/Map;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    .line 964
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_8
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_9

    .line 965
    check-cast p1, Ljava/util/List;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray(Ljava/util/List;IZ)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 966
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_9
    instance-of v2, p1, Lcom/qq/taf/jce/JceStruct;

    if-eqz v2, :cond_a

    .line 967
    check-cast p1, Lcom/qq/taf/jce/JceStruct;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v1

    goto/16 :goto_0

    .line 968
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 969
    instance-of v2, p1, [B

    if-nez v2, :cond_b

    instance-of v2, p1, [Ljava/lang/Byte;

    if-eqz v2, :cond_c

    .line 970
    :cond_b
    check-cast v1, [B

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v1

    goto/16 :goto_0

    .line 971
    :cond_c
    instance-of v2, p1, [Z

    if-eqz v2, :cond_d

    .line 972
    check-cast v1, [Z

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([ZIZ)[Z

    move-result-object v1

    goto/16 :goto_0

    .line 973
    :cond_d
    instance-of v2, p1, [S

    if-eqz v2, :cond_e

    .line 974
    check-cast v1, [S

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([SIZ)[S

    move-result-object v1

    goto/16 :goto_0

    .line 975
    :cond_e
    instance-of v2, p1, [I

    if-eqz v2, :cond_f

    .line 976
    check-cast v1, [I

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([IIZ)[I

    move-result-object v1

    goto/16 :goto_0

    .line 977
    :cond_f
    instance-of v2, p1, [J

    if-eqz v2, :cond_10

    .line 978
    check-cast v1, [J

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([JIZ)[J

    move-result-object v1

    goto/16 :goto_0

    .line 979
    :cond_10
    instance-of v2, p1, [F

    if-eqz v2, :cond_11

    .line 980
    check-cast v1, [F

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([FIZ)[F

    move-result-object v1

    goto/16 :goto_0

    .line 981
    :cond_11
    instance-of v2, p1, [D

    if-eqz v2, :cond_12

    .line 982
    check-cast v1, [D

    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read([DIZ)[D

    move-result-object v1

    goto/16 :goto_0

    .line 984
    :cond_12
    check-cast p1, [Ljava/lang/Object;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 987
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_13
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "read object error: unsupport type."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .parameter "s"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 373
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 374
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 375
    .local v1, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 376
    iget-byte v4, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 406
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 378
    :pswitch_0
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 379
    .local v2, len:I
    if-gez v2, :cond_0

    .line 380
    add-int/lit16 v2, v2, 0x100

    .line 381
    :cond_0
    new-array v3, v2, [B

    .line 382
    .local v3, ss:[B
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 384
    :try_start_0
    new-instance p1, Ljava/lang/String;

    .end local p1
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #len:I
    .end local v3           #ss:[B
    .restart local p1
    :cond_1
    :goto_0
    return-object p1

    .line 386
    .end local p1
    .restart local v1       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v2       #len:I
    .restart local v3       #ss:[B
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 392
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v2           #len:I
    .end local v3           #ss:[B
    :pswitch_1
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 393
    .restart local v2       #len:I
    const/high16 v4, 0x640

    if-gt v2, v4, :cond_2

    if-gez v2, :cond_3

    .line 394
    :cond_2
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "String too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_3
    new-array v3, v2, [B

    .line 396
    .restart local v3       #ss:[B
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 398
    :try_start_1
    new-instance p1, Ljava/lang/String;

    .end local p1
    iget-object v4, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local p1
    goto :goto_0

    .line 400
    .end local p1
    :catch_1
    move-exception v0

    .line 401
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 408
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #len:I
    .end local v3           #ss:[B
    :cond_4
    if-eqz p3, :cond_1

    .line 409
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 376
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public read(SIZ)S
    .locals 3
    .parameter "n"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 220
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 222
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 223
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v1, :sswitch_data_0

    .line 234
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "type mismatch."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :sswitch_0
    const/4 p1, 0x0

    .line 239
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    :goto_0
    return p1

    .line 228
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-short p1, v1

    .line 229
    goto :goto_0

    .line 231
    :sswitch_2
    iget-object v1, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 232
    goto :goto_0

    .line 236
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_1
    if-eqz p3, :cond_0

    .line 237
    new-instance v1, Lcom/qq/taf/jce/JceDecodeException;

    const-string v2, "require field not exist."

    invoke-direct {v1, v2}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public read(ZIZ)Z
    .locals 2
    .parameter "b"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    .line 196
    .local v0, c:B
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public read([BIZ)[B
    .locals 8
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, lr:[B
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 641
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 642
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 643
    iget-byte v5, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    sparse-switch v5, :sswitch_data_0

    .line 667
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 645
    :sswitch_0
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 646
    .local v1, hh:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 647
    iget-byte v5, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v5, :cond_0

    .line 648
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type mismatch, tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 650
    :cond_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    .line 651
    .local v4, size:I
    if-gez v4, :cond_1

    .line 652
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid size, tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 653
    :cond_1
    new-array v3, v4, [B

    .line 654
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 672
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #hh:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v4           #size:I
    :cond_2
    return-object v3

    .line 658
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :sswitch_1
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    .line 659
    .restart local v4       #size:I
    if-gez v4, :cond_3

    .line 660
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size invalid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 661
    :cond_3
    new-array v3, v4, [B

    .line 662
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 663
    aget-byte v5, v3, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v5

    aput-byte v5, v3, v2

    .line 662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_4
    if-eqz p3, :cond_2

    .line 670
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 643
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public read([DIZ)[D
    .locals 8
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 772
    const/4 v2, 0x0

    .line 773
    .local v2, lr:[D
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 774
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 775
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 776
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 787
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 778
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 779
    .local v3, size:I
    if-gez v3, :cond_0

    .line 780
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 781
    :cond_0
    new-array v2, v3, [D

    .line 782
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 783
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 790
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 792
    :cond_2
    return-object v2

    .line 776
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public read([FIZ)[F
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 748
    const/4 v2, 0x0

    .line 749
    .local v2, lr:[F
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 750
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 751
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 752
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 763
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 754
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 755
    .local v3, size:I
    if-gez v3, :cond_0

    .line 756
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 757
    :cond_0
    new-array v2, v3, [F

    .line 758
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 759
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v4

    aput v4, v2, v1

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 766
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 768
    :cond_2
    return-object v2

    .line 752
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public read([IIZ)[I
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 700
    const/4 v2, 0x0

    .line 701
    .local v2, lr:[I
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 702
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 703
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 704
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 715
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 706
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 707
    .local v3, size:I
    if-gez v3, :cond_0

    .line 708
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 709
    :cond_0
    new-array v2, v3, [I

    .line 710
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 711
    aget v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    aput v4, v2, v1

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 718
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 720
    :cond_2
    return-object v2

    .line 704
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public read([JIZ)[J
    .locals 8
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, lr:[J
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 726
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 727
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 728
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 739
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :pswitch_0
    invoke-virtual {p0, v6, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 731
    .local v3, size:I
    if-gez v3, :cond_0

    .line 732
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 733
    :cond_0
    new-array v2, v3, [J

    .line 734
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 735
    aget-wide v4, v2, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 742
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 744
    :cond_2
    return-object v2

    .line 728
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public read([Lcom/qq/taf/jce/JceStruct;IZ)[Lcom/qq/taf/jce/JceStruct;
    .locals 1
    .parameter "o"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 940
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/taf/jce/JceStruct;

    return-object v0
.end method

.method public read([Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 1
    .parameter "s"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 458
    invoke-virtual {p0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public read([SIZ)[S
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 676
    const/4 v2, 0x0

    .line 677
    .local v2, lr:[S
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 678
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 679
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 680
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 691
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 682
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 683
    .local v3, size:I
    if-gez v3, :cond_0

    .line 684
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 685
    :cond_0
    new-array v2, v3, [S

    .line 686
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 687
    aget-short v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v4

    aput-short v4, v2, v1

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 694
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 696
    :cond_2
    return-object v2

    .line 680
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public read([ZIZ)[Z
    .locals 7
    .parameter "l"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, lr:[Z
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 617
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 618
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 619
    iget-byte v4, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v4, :pswitch_data_0

    .line 630
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "type mismatch."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 621
    :pswitch_0
    invoke-virtual {p0, v5, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v3

    .line 622
    .local v3, size:I
    if-gez v3, :cond_0

    .line 623
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 624
    :cond_0
    new-array v2, v3, [Z

    .line 625
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 626
    aget-boolean v4, v2, v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v4

    aput-boolean v4, v2, v1

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz p3, :cond_2

    .line 633
    new-instance v4, Lcom/qq/taf/jce/JceDecodeException;

    const-string v5, "require field not exist."

    invoke-direct {v4, v5}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 635
    :cond_2
    return-object v2

    .line 619
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public readArray(Ljava/util/List;IZ)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;IZ)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 805
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 813
    :cond_1
    :goto_0
    return-object v1

    .line 808
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v2

    .line 809
    .local v2, tt:[Ljava/lang/Object;,"[TT;"
    if-nez v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 810
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v1, ll:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 812
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public readArray([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, l:[Ljava/lang/Object;,"[TT;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 798
    :cond_0
    new-instance v0, Lcom/qq/taf/jce/JceDecodeException;

    const-string v1, "unable to get type of key and value."

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readArrayImpl(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readByteString(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "s"
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 341
    invoke-virtual {p0, p2}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 343
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 344
    iget-byte v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v3, :pswitch_data_0

    .line 364
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "type mismatch."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :pswitch_0
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 347
    .local v1, len:I
    if-gez v1, :cond_0

    .line 348
    add-int/lit16 v1, v1, 0x100

    .line 349
    :cond_0
    new-array v2, v1, [B

    .line 350
    .local v2, ss:[B
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 351
    invoke-static {v2}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    .line 369
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #len:I
    .end local v2           #ss:[B
    :cond_1
    :goto_0
    return-object p1

    .line 355
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :pswitch_1
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 356
    .restart local v1       #len:I
    const/high16 v3, 0x640

    if-gt v1, v3, :cond_2

    if-gez v1, :cond_3

    .line 357
    :cond_2
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_3
    new-array v2, v1, [B

    .line 359
    .restart local v2       #ss:[B
    iget-object v3, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 360
    invoke-static {v2}, Lcom/qq/taf/jce/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object p1

    .line 362
    goto :goto_0

    .line 366
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #len:I
    .end local v2           #ss:[B
    :cond_4
    if-eqz p3, :cond_1

    .line 367
    new-instance v3, Lcom/qq/taf/jce/JceDecodeException;

    const-string v4, "require field not exist."

    invoke-direct {v3, v4}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V
    .locals 1
    .parameter "hd"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    .line 85
    return-void
.end method

.method public readList(IZ)Ljava/util/List;
    .locals 13
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 531
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v5, lr:Ljava/util/List;
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 533
    new-instance v2, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v2}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 534
    .local v2, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v2}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 535
    iget-byte v10, v2, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v10, :pswitch_data_0

    .line 606
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    const-string v11, "type mismatch."

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 537
    :pswitch_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v10, v11, v12}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v7

    .line 538
    .local v7, size:I
    if-gez v7, :cond_0

    .line 539
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "size invalid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 540
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_3

    .line 541
    new-instance v9, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v9}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 542
    .local v9, subH:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v9}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 543
    iget-byte v10, v9, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v10, :pswitch_data_1

    .line 598
    :pswitch_1
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    const-string v11, "type mismatch."

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 545
    :pswitch_2
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 540
    :goto_1
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    :pswitch_4
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 551
    :pswitch_5
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 554
    :pswitch_6
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 557
    :pswitch_7
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 560
    :pswitch_8
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 563
    :pswitch_9
    iget-object v10, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 564
    .local v4, len:I
    if-gez v4, :cond_1

    .line 565
    add-int/lit16 v4, v4, 0x100

    .line 566
    :cond_1
    invoke-direct {p0, v4}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 570
    .end local v4           #len:I
    :pswitch_a
    iget-object v10, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    goto :goto_1

    .line 583
    :pswitch_b
    :try_start_0
    const-class v10, Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 584
    .local v6, newoneClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 585
    .local v0, cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qq/taf/jce/JceStruct;

    .line 586
    .local v8, struct:Lcom/qq/taf/jce/JceStruct;
    invoke-virtual {v8, p0}, Lcom/qq/taf/jce/JceStruct;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 587
    invoke-virtual {p0}, Lcom/qq/taf/jce/JceInputStream;->skipToStructEnd()V

    .line 588
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 589
    .end local v0           #cons:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v6           #newoneClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #struct:Lcom/qq/taf/jce/JceStruct;
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 591
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type mismatch."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 595
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_c
    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 608
    .end local v2           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v3           #i:I
    .end local v7           #size:I
    .end local v9           #subH:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_2
    if-eqz p2, :cond_3

    .line 609
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    const-string v11, "require field not exist."

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 611
    :cond_3
    return-object v5

    .line 535
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 543
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_1
        :pswitch_c
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .locals 1
    .parameter
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;IZ)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public readString(IZ)Ljava/lang/String;
    .locals 8
    .parameter "tag"
    .parameter "isRequire"

    .prologue
    .line 415
    const/4 v3, 0x0

    .line 416
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 417
    new-instance v1, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v1}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 418
    .local v1, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 419
    iget-byte v5, v1, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v5, :pswitch_data_0

    .line 449
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "type mismatch."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 421
    :pswitch_0
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 422
    .local v2, len:I
    if-gez v2, :cond_0

    .line 423
    add-int/lit16 v2, v2, 0x100

    .line 424
    :cond_0
    new-array v4, v2, [B

    .line 425
    .local v4, ss:[B
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    :try_start_0
    new-instance v3, Ljava/lang/String;

    .end local v3           #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #len:I
    .end local v4           #ss:[B
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 429
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v2       #len:I
    .restart local v4       #ss:[B
    :catch_0
    move-exception v0

    .line 430
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v2           #len:I
    .end local v4           #ss:[B
    :pswitch_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 436
    .restart local v2       #len:I
    const/high16 v5, 0x640

    if-gt v2, v5, :cond_2

    if-gez v2, :cond_3

    .line 437
    :cond_2
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "String too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 438
    :cond_3
    new-array v4, v2, [B

    .line 439
    .restart local v4       #ss:[B
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 441
    :try_start_1
    new-instance v3, Ljava/lang/String;

    .end local v3           #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 443
    .end local v3           #s:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 444
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_0

    .line 451
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v2           #len:I
    .end local v4           #ss:[B
    :cond_4
    if-eqz p2, :cond_1

    .line 452
    new-instance v5, Lcom/qq/taf/jce/JceDecodeException;

    const-string v6, "require field not exist."

    invoke-direct {v5, v6}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readStringMap(IZ)Ljava/util/Map;
    .locals 9
    .parameter "tag"
    .parameter "isRequire"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 462
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v3, mr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/qq/taf/jce/JceInputStream;->skipToTag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 464
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 465
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 466
    iget-byte v6, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v6, :pswitch_data_0

    .line 479
    new-instance v6, Lcom/qq/taf/jce/JceDecodeException;

    const-string v7, "type mismatch."

    invoke-direct {v6, v7}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 468
    :pswitch_0
    invoke-virtual {p0, v8, v8, v7}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v4

    .line 469
    .local v4, size:I
    if-gez v4, :cond_0

    .line 470
    new-instance v6, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 471
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 472
    invoke-virtual {p0, v8, v7}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, k:Ljava/lang/String;
    invoke-virtual {p0, v7, v7}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, v:Ljava/lang/String;
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 481
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #i:I
    .end local v2           #k:Ljava/lang/String;
    .end local v4           #size:I
    .end local v5           #v:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 482
    new-instance v6, Lcom/qq/taf/jce/JceDecodeException;

    const-string v7, "require field not exist."

    invoke-direct {v6, v7}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 484
    :cond_2
    return-object v3

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public setServerEncoding(Ljava/lang/String;)I
    .locals 1
    .parameter "se"

    .prologue
    .line 993
    iput-object p1, p0, Lcom/qq/taf/jce/JceInputStream;->sServerEncoding:Ljava/lang/String;

    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public skipToStructEnd()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 118
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)V

    .line 119
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V

    .line 120
    iget-byte v1, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 121
    return-void
.end method

.method public skipToTag(I)Z
    .locals 5
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 100
    :try_start_0
    new-instance v0, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 102
    .local v0, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :goto_0
    invoke-direct {p0, v0}, Lcom/qq/taf/jce/JceInputStream;->peakHead(Lcom/qq/taf/jce/JceInputStream$HeadData;)I

    move-result v1

    .line 103
    .local v1, len:I
    iget v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    if-le p1, v3, :cond_0

    iget-byte v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    .line 104
    :cond_0
    iget v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 111
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #len:I
    :cond_1
    :goto_1
    return v2

    .line 105
    .restart local v0       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .restart local v1       #len:I
    :cond_2
    invoke-direct {p0, v1}, Lcom/qq/taf/jce/JceInputStream;->skip(I)V

    .line 106
    iget-byte v3, v0, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-direct {p0, v3}, Lcom/qq/taf/jce/JceInputStream;->skipField(B)V
    :try_end_0
    .catch Lcom/qq/taf/jce/JceDecodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 108
    .end local v0           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v1           #len:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 109
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public warp([B)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/JceInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method
