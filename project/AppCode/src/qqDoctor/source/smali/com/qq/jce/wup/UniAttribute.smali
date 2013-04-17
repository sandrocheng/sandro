.class public Lcom/qq/jce/wup/UniAttribute;
.super Lcom/qq/jce/wup/OldUniAttribute;
.source "UniAttribute.java"


# instance fields
.field _is:Lcom/qq/taf/jce/JceInputStream;

.field protected _newData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private cachedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/jce/wup/OldUniAttribute;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    return-void
.end method

.method private decodeData([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "data"
    .parameter "proxy"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, p1}, Lcom/qq/taf/jce/JceInputStream;->warp([B)V

    .line 259
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, o:Ljava/lang/Object;
    return-object v0
.end method

.method private saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "o"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
.end method


# virtual methods
.method public clearCacheData()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public decode([B)V
    .locals 5
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 400
    :try_start_0
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->decode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, p1}, Lcom/qq/taf/jce/JceInputStream;->warp([B)V

    .line 404
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 405
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 406
    .local v0, _tempdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v2, ""

    new-array v3, v4, [B

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v2, v0, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public decodeVersion2([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->decode([B)V

    .line 392
    return-void
.end method

.method public decodeVersion3([B)V
    .locals 4
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, p1}, Lcom/qq/taf/jce/JceInputStream;->warp([B)V

    .line 380
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 381
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 382
    .local v0, _tempdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const-string v1, ""

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    .line 384
    return-void
.end method

.method public encode()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 366
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 367
    .local v0, _os:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 369
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 371
    .end local v0           #_os:Lcom/qq/taf/jce/JceOutputStream;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/qq/jce/wup/OldUniAttribute;->encode()[B

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is encoded by new version, please use getByClass(String name, T proxy)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is encoded by new version, please use get(String name, T proxy, Object defaultValue)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/OldUniAttribute;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter
    .parameter "defaultValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, proxy:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    .end local p3
    :goto_0
    return-object p3

    .restart local p3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method

.method public getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .local p2, proxy:Ljava/lang/Object;,"TT;"
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 138
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 139
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v5

    .line 141
    :cond_1
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 142
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 144
    :cond_2
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 146
    .local v1, data:[B
    :try_start_0
    invoke-direct {p0, v1, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    .local v5, o:Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 148
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v5           #o:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 152
    .local v3, ex:Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 156
    .end local v1           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 161
    :cond_4
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 162
    .local v6, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 163
    .local v0, className:Ljava/lang/String;
    new-array v1, v8, [B

    .line 164
    .restart local v1       #data:[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 166
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 170
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v7, v1}, Lcom/qq/taf/jce/JceInputStream;->warp([B)V

    .line 171
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v8, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 172
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, p2, v8, v9}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 173
    .restart local v5       #o:Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 175
    .end local v5           #o:Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 176
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public getByClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .local p2, proxy:Ljava/lang/Object;,"TT;"
    .local p3, defaultValue:Ljava/lang/Object;,"TT;"
    const/4 v8, 0x0

    .line 194
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v7, :cond_4

    .line 195
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 230
    .end local p3           #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_0
    :goto_0
    return-object p3

    .line 197
    .restart local p3       #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_1
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 198
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 200
    :cond_2
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 202
    .local v1, data:[B
    :try_start_0
    invoke-direct {p0, v1, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 203
    .local v5, o:Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 204
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object p3, v5

    .line 206
    goto :goto_0

    .line 207
    .end local v5           #o:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 208
    .local v3, ex:Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 212
    .end local v1           #data:[B
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_4
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 214
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 215
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 217
    :cond_5
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 218
    .local v6, pair:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v0, 0x0

    .line 219
    .local v0, className:Ljava/lang/String;
    new-array v1, v8, [B

    .line 220
    .restart local v1       #data:[B
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    .local v2, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #className:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 222
    .restart local v0       #className:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:[B
    check-cast v1, [B

    .line 226
    .end local v2           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .restart local v1       #data:[B
    :cond_6
    :try_start_1
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v7, v1}, Lcom/qq/taf/jce/JceInputStream;->warp([B)V

    .line 227
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    iget-object v8, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 228
    iget-object v7, p0, Lcom/qq/jce/wup/UniAttribute;->_is:Lcom/qq/taf/jce/JceInputStream;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, p2, v8, v9}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    .line 229
    .restart local v5       #o:Ljava/lang/Object;
    invoke-direct {p0, p1, v5}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p3, v5

    .line 230
    goto/16 :goto_0

    .line 231
    .end local v5           #o:Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 232
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v7, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v7, v3}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public bridge synthetic getEncodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/qq/jce/wup/OldUniAttribute;->getEncodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is encoded by new version, please use getJceStruct(String name,T proxy)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->getJceStruct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .line 109
    .local p2, proxy:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    const/4 v2, 0x0

    .line 120
    :cond_0
    :goto_0
    return-object v2

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->cachedData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 116
    .local v0, data:[B
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, o:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 118
    invoke-direct {p0, p1, v2}, Lcom/qq/jce/wup/UniAttribute;->saveDataCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v2           #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 122
    .local v1, ex:Ljava/lang/Exception;
    new-instance v3, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v3, v1}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, t:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "put key can not is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "put value can not is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_1
    instance-of v2, p2, Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can not support Set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_2
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 90
    .local v0, _out:Lcom/qq/taf/jce/JceOutputStream;
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->encodeName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 93
    .local v1, _sBuffer:[B
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v0           #_out:Lcom/qq/taf/jce/JceOutputStream;
    .end local v1           #_sBuffer:[B
    :goto_0
    return-void

    .line 95
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/qq/jce/wup/OldUniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    :goto_0
    return-object v0

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_1
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qq/jce/wup/ObjectCreateException;
        }
    .end annotation

    .prologue
    .local p2, proxy:Ljava/lang/Object;,"TT;"
    const/4 v1, 0x0

    .line 350
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    :goto_0
    return-object v1

    .line 353
    :cond_0
    if-eqz p2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 355
    .local v0, data:[B
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->decodeData([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 356
    .local v1, o:Ljava/lang/Object;
    goto :goto_0

    .line 358
    .end local v0           #data:[B
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic setEncodeName(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/qq/jce/wup/OldUniAttribute;->setEncodeName(Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 62
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public useVersion3()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->_newData:Ljava/util/HashMap;

    .line 31
    return-void
.end method
