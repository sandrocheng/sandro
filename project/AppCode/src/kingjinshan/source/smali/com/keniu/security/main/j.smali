.class final Lcom/keniu/security/main/j;
.super Ljava/lang/Thread;
.source "DubaDownload.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/f;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/main/f;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/main/j;-><init>(Lcom/keniu/security/main/f;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/main/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 175
    .line 179
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v2}, Lcom/keniu/security/main/f;->h(Lcom/keniu/security/main/f;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "url"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 183
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 184
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13

    .line 187
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    .line 195
    :try_start_2
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 196
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 197
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0x190

    if-lt v1, v3, :cond_1

    .line 198
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_13

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_15

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v1

    :try_start_4
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_13

    .line 259
    :try_start_5
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v1

    goto :goto_0

    .line 203
    :cond_1
    :try_start_6
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 205
    invoke-static {}, Lcom/keniu/security/f/f;->e()J

    move-result-wide v3

    mul-int/lit8 v5, v1, 0x2

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 207
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_13

    .line 259
    :try_start_7
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 278
    :catch_2
    move-exception v1

    goto :goto_0

    .line 211
    :cond_2
    :try_start_8
    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keniu/security/f/f;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mosecurity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v4}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v4}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MobileDuba.apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/keniu/security/main/f;->a(Lcom/keniu/security/main/f;Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 218
    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->what:I

    .line 219
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 220
    iget-object v4, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v4}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13

    move-result-object v2

    .line 225
    const/16 v3, 0x2000

    :try_start_9
    new-array v3, v3, [B

    .line 227
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v6}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_14

    move v6, v7

    .line 231
    :goto_1
    :try_start_a
    iget-object v7, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v7}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-result v7

    if-eqz v7, :cond_5

    .line 259
    if-eqz v2, :cond_4

    .line 261
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 266
    :cond_4
    :goto_2
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 274
    :goto_3
    :try_start_d
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 278
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 233
    :cond_5
    :try_start_e
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 234
    if-lez v7, :cond_8

    .line 235
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 236
    add-int/2addr v6, v7

    .line 237
    iget-object v7, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v7}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 238
    const/4 v8, 0x5

    iput v8, v7, Landroid/os/Message;->what:I

    .line 239
    iput v6, v7, Landroid/os/Message;->arg1:I

    .line 240
    iget-object v8, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v8}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_1

    .line 256
    :catch_4
    move-exception v1

    move-object v1, v5

    :goto_4
    :try_start_f
    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 259
    if-eqz v2, :cond_6

    .line 261
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    .line 266
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 268
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 274
    :cond_7
    :goto_6
    :try_start_12
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 279
    :catch_5
    move-exception v1

    goto/16 :goto_0

    .line 242
    :cond_8
    :try_start_13
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v7}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 243
    if-eqz v1, :cond_a

    if-eq v1, v6, :cond_a

    .line 248
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    .line 259
    if-eqz v2, :cond_9

    .line 261
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 266
    :cond_9
    :goto_7
    :try_start_15
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 274
    :goto_8
    :try_start_16
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_0

    .line 278
    :catch_6
    move-exception v1

    goto/16 :goto_0

    .line 252
    :cond_a
    :try_start_17
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->g(Lcom/keniu/security/main/f;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_4

    .line 259
    if-eqz v2, :cond_b

    .line 261
    :try_start_18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    .line 266
    :cond_b
    :goto_9
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    .line 274
    :goto_a
    :try_start_1a
    iget-object v1, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v1}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v3}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto/16 :goto_0

    .line 279
    :catch_7
    move-exception v1

    goto/16 :goto_0

    .line 259
    :catchall_0
    move-exception v1

    move-object v2, v8

    move-object v3, v8

    :goto_b
    if-eqz v3, :cond_c

    .line 261
    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    .line 266
    :cond_c
    :goto_c
    if-eqz v2, :cond_d

    .line 268
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 274
    :cond_d
    :goto_d
    :try_start_1d
    iget-object v2, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v2}, Lcom/keniu/security/main/f;->i(Lcom/keniu/security/main/f;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 275
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/main/j;->a:Lcom/keniu/security/main/f;

    invoke-static {v4}, Lcom/keniu/security/main/f;->d(Lcom/keniu/security/main/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_12

    .line 278
    :cond_e
    :goto_e
    throw v1

    :catch_8
    move-exception v1

    goto/16 :goto_2

    :catch_9
    move-exception v1

    goto/16 :goto_3

    :catch_a
    move-exception v1

    goto/16 :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_8

    :catch_c
    move-exception v1

    goto :goto_9

    :catch_d
    move-exception v1

    goto :goto_a

    :catch_e
    move-exception v2

    goto/16 :goto_5

    :catch_f
    move-exception v1

    goto/16 :goto_6

    :catch_10
    move-exception v3

    goto :goto_c

    :catch_11
    move-exception v2

    goto :goto_d

    :catch_12
    move-exception v2

    goto :goto_e

    .line 259
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v8

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v5

    goto :goto_b

    :catchall_3
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_b

    .line 256
    :catch_13
    move-exception v1

    move-object v1, v8

    move-object v2, v8

    goto/16 :goto_4

    :catch_14
    move-exception v1

    move-object v1, v8

    goto/16 :goto_4

    .line 278
    :catch_15
    move-exception v1

    goto/16 :goto_0
.end method
