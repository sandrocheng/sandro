.class public abstract Lcom/b/a/e;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/b/a/ey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method protected static a(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 311
    if-nez v1, :cond_0

    .line 312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 315
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 316
    check-cast p0, Ljava/util/Collection;

    .line 317
    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 323
    :cond_2
    return-void

    .line 319
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 320
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static b()Lcom/b/a/gf;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/b/a/gf;

    invoke-direct {v0}, Lcom/b/a/gf;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a([BII)Lcom/b/a/e;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/b/a/m;->a([BII)Lcom/b/a/m;

    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/b/a/e;->b(Lcom/b/a/m;)Lcom/b/a/e;

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    return-object p0

    .line 165
    :catch_0
    move-exception v0

    throw v0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a([BIILcom/b/a/df;)Lcom/b/a/e;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/b/a/m;->a([BII)Lcom/b/a/m;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0, p4}, Lcom/b/a/e;->b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    return-object p0

    .line 191
    :catch_0
    move-exception v0

    throw v0

    .line 193
    :catch_1
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/b/a/i;)Lcom/b/a/e;
    .locals 3
    .parameter

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/i;->d()Lcom/b/a/m;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/b/a/e;->b(Lcom/b/a/m;)Lcom/b/a/e;

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    return-object p0

    .line 124
    :catch_0
    move-exception v0

    throw v0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/i;->d()Lcom/b/a/m;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0, p2}, Lcom/b/a/e;->b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;

    .line 140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V
    :try_end_0
    .catch Lcom/b/a/es; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    return-object p0

    .line 142
    :catch_0
    move-exception v0

    throw v0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/b/a/m;)Lcom/b/a/e;
    .locals 1
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/b/a/df;->c()Lcom/b/a/df;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/e;->b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;
.end method

.method public b([B)Lcom/b/a/e;
    .locals 2
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/b/a/e;->a([BII)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b([BLcom/b/a/df;)Lcom/b/a/e;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/b/a/e;->a([BIILcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BII)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/e;->a([BII)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([BIILcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/b/a/e;->a([BIILcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/InputStream;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    invoke-static {}, Lcom/b/a/df;->c()Lcom/b/a/df;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/b/a/e;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/io/InputStream;Lcom/b/a/df;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 277
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 280
    :cond_0
    invoke-static {v0, p1}, Lcom/b/a/m;->a(ILjava/io/InputStream;)I

    move-result v0

    .line 281
    new-instance v1, Lcom/b/a/f;

    invoke-direct {v1, p1, v0}, Lcom/b/a/f;-><init>(Ljava/io/InputStream;I)V

    .line 282
    invoke-virtual {p0, v1, p2}, Lcom/b/a/e;->c(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/e;

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Ljava/io/InputStream;)Lcom/b/a/e;
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Lcom/b/a/m;->a(Ljava/io/InputStream;)Lcom/b/a/m;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lcom/b/a/e;->b(Lcom/b/a/m;)Lcom/b/a/e;

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V

    .line 204
    return-object p0
.end method

.method public c(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/e;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {p1}, Lcom/b/a/m;->a(Ljava/io/InputStream;)Lcom/b/a/m;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0, p2}, Lcom/b/a/e;->b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/m;->a(I)V

    .line 214
    return-object p0
.end method

.method public synthetic c(Lcom/b/a/i;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/i;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/b/a/e;->b(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/b/a/m;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/b/a/e;->b(Lcom/b/a/m;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/b/a/e;->b(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([B)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/b/a/e;->b([B)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BLcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/b/a/e;->b([BLcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/b/a/e;->d()Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/b/a/e;
.end method

.method public synthetic d(Ljava/io/InputStream;)Lcom/b/a/ey;
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/b/a/e;->c(Ljava/io/InputStream;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/b/a/e;->c(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/b/a/e;->d()Lcom/b/a/e;

    move-result-object v0

    return-object v0
.end method
