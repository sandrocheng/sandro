.class public Lcom/avast/android/mobilesecurity/engine/internal/q;
.super Ljava/lang/Object;
.source "URLChecker.java"


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->c:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0xat
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 128
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 130
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 320
    :goto_0
    return-object v0

    .line 136
    :cond_0
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    .line 138
    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/y;->a()Ljava/net/URI;

    move-result-object v6

    .line 152
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v1

    .line 153
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v7

    .line 155
    invoke-static {p0}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 156
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 159
    :goto_1
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->k()Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    move-result-object v1

    .line 160
    const-string v8, "4D6F62696C65205365637572697479"

    invoke-static {v8}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 161
    invoke-virtual {v1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 163
    const-wide v8, 0x7f952750000000eL

    invoke-virtual {v1, v8, v9}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(J)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 166
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/z;->n()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    move-result-object v8

    .line 167
    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->d(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 168
    if-eqz v7, :cond_2

    const-string v0, ""

    if-eq v7, v0, :cond_2

    .line 169
    invoke-static {v7}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/aa;->c(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;

    .line 171
    :cond_2
    invoke-virtual {v1, v8}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;

    .line 172
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/am;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/al;

    move-result-object v0

    .line 190
    const-string v1, "avdroid"

    invoke-static {v1}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v7

    .line 192
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 195
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/al;->bo()[B

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 197
    const-string v0, "binary/octet-stream"

    invoke-virtual {v6, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 203
    :try_start_0
    invoke-virtual {v7, v1}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v0

    .line 206
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/engine/internal/a/ao;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->b()I

    move-result v3

    if-ge v3, v5, :cond_5

    .line 209
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    if-eqz v0, :cond_3

    .line 313
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 317
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 318
    invoke-virtual {v7}, Landroid/b/a/a;->a()V

    :cond_4
    move-object v0, v2

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_5
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v1, v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ao;->a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ai;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 216
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->g()Lcom/avast/android/mobilesecurity/engine/internal/a/w;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blocker = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/w;->c()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_6

    .line 220
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v6, Lcom/avast/android/mobilesecurity/engine/ak;->b:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v6}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v1, v5

    .line 227
    :goto_3
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->d()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 228
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;

    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phishing = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 231
    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/internal/a/ac;->c()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 269
    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->h()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 270
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/ai;->i()Lcom/avast/android/mobilesecurity/engine/internal/a/af;

    move-result-object v3

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "typo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->i()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 272
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->i()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 273
    new-instance v4, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v5, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v4, v5}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    .line 275
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->b()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 276
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    .line 280
    :goto_5
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->d()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 281
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/af;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    .line 285
    :goto_6
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_8
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 291
    if-eqz v1, :cond_17

    .line 292
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 311
    :cond_9
    :goto_8
    if-eqz v0, :cond_a

    .line 313
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 317
    :cond_a
    :goto_9
    if-eqz v7, :cond_b

    .line 318
    invoke-virtual {v7}, Landroid/b/a/a;->a()V

    :cond_b
    move-object v0, v2

    .line 320
    goto/16 :goto_0

    :cond_c
    move v1, v4

    .line 225
    goto/16 :goto_3

    .line 233
    :pswitch_0
    :try_start_5
    new-instance v5, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v6, Lcom/avast/android/mobilesecurity/engine/ak;->c:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v5, v6}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 300
    :catch_0
    move-exception v1

    .line 302
    :goto_a
    :try_start_6
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    if-eqz v0, :cond_d

    .line 313
    :try_start_7
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 317
    :cond_d
    :goto_b
    if-eqz v7, :cond_e

    .line 318
    invoke-virtual {v7}, Landroid/b/a/a;->a()V

    :cond_e
    move-object v0, v2

    .line 304
    goto/16 :goto_0

    :cond_f
    move v1, v4

    .line 267
    goto/16 :goto_4

    .line 278
    :cond_10
    const/4 v5, 0x0

    :try_start_8
    iput-object v5, v4, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    .line 305
    :catch_1
    move-exception v1

    .line 307
    :goto_c
    :try_start_9
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 311
    if-eqz v0, :cond_11

    .line 313
    :try_start_a
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 317
    :cond_11
    :goto_d
    if-eqz v7, :cond_12

    .line 318
    invoke-virtual {v7}, Landroid/b/a/a;->a()V

    :cond_12
    move-object v0, v2

    .line 309
    goto/16 :goto_0

    .line 283
    :cond_13
    const/4 v3, 0x0

    :try_start_b
    iput-object v3, v4, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    .line 311
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_e
    if-eqz v3, :cond_14

    .line 313
    :try_start_c
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 317
    :cond_14
    :goto_f
    if-eqz v7, :cond_15

    .line 318
    invoke-virtual {v7}, Landroid/b/a/a;->a()V

    .line 311
    :cond_15
    throw v0

    :cond_16
    move v1, v4

    .line 288
    goto/16 :goto_7

    .line 295
    :cond_17
    :try_start_d
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v3}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_8

    .line 314
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_2

    :catch_4
    move-exception v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_b

    :catch_6
    move-exception v1

    goto :goto_f

    .line 311
    :catchall_1
    move-exception v0

    goto :goto_e

    .line 305
    :catch_7
    move-exception v0

    move-object v0, v3

    goto :goto_c

    .line 300
    :catch_8
    move-exception v0

    move-object v0, v3

    goto :goto_a

    :cond_18
    move-object v0, v1

    goto/16 :goto_1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static a()V
    .locals 7

    .prologue
    .line 420
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 423
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 426
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 429
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 551
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    monitor-enter v3

    .line 552
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 555
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 556
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 559
    new-instance v6, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v6, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-static {p0, p1, v6}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;Lorg/apache/http/HttpEntity;)Z

    move-result v1

    .line 562
    if-eqz v1, :cond_0

    .line 563
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v1, v2

    .line 566
    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 567
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 568
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tstmp"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 566
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 577
    :cond_3
    const-string v0, "tstmp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move v0, v2

    .line 580
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 581
    new-instance v2, Lorg/apache/http/entity/FileEntity;

    aget-object v4, v1, v0

    const-string v5, "binary/octet-stream"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 583
    invoke-static {p0, p1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;Lorg/apache/http/HttpEntity;)Z

    move-result v2

    .line 585
    if-eqz v2, :cond_4

    .line 586
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 587
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 591
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    if-nez p3, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tstmp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/engine/ah;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->u()Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    move-result-object v1

    .line 462
    const/4 v0, 0x1

    new-array v2, v0, [B

    .line 463
    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-byte v3, v2, v0

    .line 464
    if-eqz p4, :cond_2

    .line 465
    const/4 v0, 0x0

    aget-byte v3, v2, v0

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 467
    :cond_2
    if-eqz p5, :cond_3

    .line 468
    const/4 v0, 0x0

    aget-byte v3, v2, v0

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 471
    :cond_3
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 472
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->b(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 475
    :cond_4
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->f(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 476
    invoke-static {v2}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 477
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {p0}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 480
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 482
    :cond_5
    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 483
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->g(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 485
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->h(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 487
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/c;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 488
    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/engine/ah;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->e(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 489
    invoke-virtual {v1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 490
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->d(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;

    .line 491
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/f;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/e;

    move-result-object v0

    .line 492
    const/4 v1, 0x0

    .line 493
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 496
    :try_start_0
    sget-object v5, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :try_start_1
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/engine/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/e;->bo()[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 501
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    move-object v3, v1

    .line 503
    :goto_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 504
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 505
    new-instance v7, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tstmp"

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 510
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 511
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 513
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 514
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v2

    .line 516
    :goto_2
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v1

    .line 517
    goto :goto_1

    .line 519
    :cond_6
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 522
    if-eqz v3, :cond_7

    .line 524
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 529
    :cond_7
    :goto_3
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 530
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 519
    :catchall_0
    move-exception v0

    :goto_5
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 520
    :catch_0
    move-exception v0

    .line 522
    if-eqz v1, :cond_8

    .line 524
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 529
    :cond_8
    :goto_6
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 530
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 533
    :cond_9
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 522
    throw v1

    .line 525
    :catch_1
    move-exception v0

    goto :goto_6

    .line 533
    :cond_a
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 522
    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_8
    if-eqz v0, :cond_b

    .line 524
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 529
    :cond_b
    :goto_9
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 530
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/q;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 525
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_3

    .line 522
    :catchall_2
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_8

    .line 519
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :cond_c
    move-object v1, v3

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x2f

    const/4 v3, 0x7

    const-wide/16 v9, 0x3e8

    const/4 v1, 0x0

    .line 332
    .line 333
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 334
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 336
    :cond_0
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    monitor-enter v3

    .line 343
    :try_start_0
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 345
    :goto_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_5

    .line 346
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 347
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 348
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 353
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    mul-long/2addr v7, v9

    mul-long/2addr v7, v9

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 356
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    .line 363
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_3

    .line 372
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a()V

    .line 345
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_4
    monitor-exit v3

    .line 377
    :goto_2
    return-void

    .line 376
    :cond_5
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Integer;Lorg/apache/http/HttpEntity;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/n;->e(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    .line 610
    if-nez v0, :cond_1

    move v0, v1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 618
    :cond_1
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/y;->a()Ljava/net/URI;

    move-result-object v2

    .line 620
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-static {p0}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 623
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 626
    :cond_2
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 630
    :try_start_0
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/q;->c:[B

    invoke-static {v3, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 636
    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 638
    const/16 v0, 0x2b

    const/16 v4, 0x2d

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 639
    const/16 v3, 0x2f

    const/16 v4, 0x5f

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 641
    const-string v3, "avdroid"

    invoke-static {v3}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v3

    .line 642
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v4, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 644
    const/4 v0, 0x0

    .line 647
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 650
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->a(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/engine/internal/a/h;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->b()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v4

    if-nez v4, :cond_5

    .line 666
    if-eqz v2, :cond_3

    .line 668
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 672
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 673
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    :cond_4
    move v0, v1

    .line 653
    goto/16 :goto_0

    .line 632
    :catch_0
    move-exception v0

    move v0, v1

    .line 633
    goto/16 :goto_0

    .line 655
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/h;->c()Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    move-result-object v0

    .line 656
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/r;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->ordinal()I

    move-result v0

    aget v0, v4, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    packed-switch v0, :pswitch_data_0

    .line 666
    if-eqz v2, :cond_6

    .line 668
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 672
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 673
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    :cond_7
    move v0, v1

    .line 675
    goto/16 :goto_0

    .line 659
    :pswitch_0
    const/4 v0, 0x1

    .line 666
    if-eqz v2, :cond_8

    .line 668
    :try_start_6
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 672
    :cond_8
    :goto_3
    if-eqz v3, :cond_0

    .line 673
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    goto/16 :goto_0

    .line 666
    :pswitch_1
    if-eqz v2, :cond_9

    .line 668
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 672
    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    .line 673
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    :cond_a
    move v0, v1

    .line 661
    goto/16 :goto_0

    .line 663
    :catch_1
    move-exception v2

    .line 666
    :goto_5
    if-eqz v0, :cond_b

    .line 668
    :try_start_8
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 672
    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    .line 673
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    :cond_c
    move v0, v1

    .line 664
    goto/16 :goto_0

    .line 666
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_7
    if-eqz v2, :cond_d

    .line 668
    :try_start_9
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 672
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    .line 673
    invoke-virtual {v3}, Landroid/b/a/a;->a()V

    .line 666
    :cond_e
    throw v0

    .line 669
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_6

    .line 666
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 663
    :catch_8
    move-exception v0

    move-object v0, v2

    goto :goto_5

    .line 656
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x2f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 388
    .line 389
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 390
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 392
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 393
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 398
    :cond_1
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    monitor-enter v2

    .line 399
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 405
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/q;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    monitor-exit v2

    move v0, v1

    .line 412
    :goto_0
    return v0

    .line 408
    :cond_2
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 412
    goto :goto_0
.end method
