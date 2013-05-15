.class Lcom/avast/android/antitheft_setup_components/app/home/f;
.super Lcom/avast/android/generic/util/an;
.source "DownloadFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-direct {p0}, Lcom/avast/android/generic/util/an;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->b:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/antitheft_setup_components/app/home/f;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/antitheft_setup_components/app/home/f;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 119
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/f/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download, error"

    const-string v3, "IMEI not found"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->o:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 246
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download, error"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->b:Z

    .line 249
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->c:Ljava/lang/String;

    .line 251
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_4
    const/4 v3, 0x0

    .line 132
    const/4 v1, 0x0

    .line 133
    const/4 v2, 0x0

    .line 134
    const/4 v6, 0x0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v4, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v4}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lcom/avast/android/generic/Application;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/avast/android/antitheft_setup_components/a/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/avast/android/antitheft_setup_components/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_1 .. :try_end_1} :catch_12
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v9

    .line 144
    :try_start_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_2 .. :try_end_2} :catch_13
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v8

    .line 146
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    new-instance v1, Lcom/avast/android/antitheft_setup_components/app/home/g;

    invoke-direct {v1, p0}, Lcom/avast/android/antitheft_setup_components/app/home/g;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/f;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    move v3, v0

    .line 162
    :goto_2
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "AvastAntiTheftInstaller.temp.apk"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_3 .. :try_end_3} :catch_14
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v7

    .line 166
    const/16 v0, 0x400

    :try_start_4
    new-array v2, v0, [B

    .line 168
    const/4 v1, 0x0

    .line 170
    const/4 v0, 0x0

    .line 172
    :cond_5
    :goto_3
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_7

    .line 173
    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 174
    add-int/2addr v1, v4

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 177
    const/4 v4, 0x5

    if-le v0, v4, :cond_5

    .line 179
    const/4 v0, 0x0

    .line 182
    iget-object v4, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    new-instance v5, Lcom/avast/android/antitheft_setup_components/app/home/h;

    invoke-direct {v5, p0, v1, v3}, Lcom/avast/android/antitheft_setup_components/app/home/h;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/f;II)V

    invoke-static {v4, v5}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_3

    .line 215
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 216
    :goto_4
    :try_start_5
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download, error"

    invoke-virtual {v3}, Lcom/avast/android/generic/internet/b/a;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 218
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->af:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 240
    :catchall_0
    move-exception v0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    :goto_5
    const/4 v1, 0x1

    :try_start_6
    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v1}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 241
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    invoke-static {v1}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 242
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {v1}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 243
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-static {v1}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 158
    :cond_6
    const v0, 0x1f4000

    move v3, v0

    goto :goto_2

    .line 203
    :cond_7
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 214
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download"

    const-string v3, "success"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 240
    const/4 v0, 0x1

    :try_start_8
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    invoke-static {v0}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 241
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    invoke-static {v0}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 242
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    invoke-static {v0}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 243
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-static {v0}, Lcom/avast/android/generic/util/af;->a([Ljava/net/HttpURLConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    .line 205
    :cond_8
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_9 .. :try_end_9} :catch_14
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 208
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v3, Ljava/lang/Exception;

    iget-object v4, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v5, Lcom/avast/android/antitheft_setup_components/g;->G:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Lcom/avast/android/generic/internet/b/a; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/avast/android/generic/internet/b/b; {:try_start_a .. :try_end_a} :catch_11
    .catch Lcom/avast/android/generic/internet/b/c; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 215
    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v6, v1

    move-object v7, v2

    goto/16 :goto_4

    .line 220
    :catch_3
    move-exception v0

    move-object v7, v6

    move-object v8, v2

    move-object v9, v1

    move-object v10, v3

    move-object v6, v0

    .line 221
    :goto_6
    :try_start_b
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download, error"

    invoke-virtual {v6}, Lcom/avast/android/generic/internet/b/b;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 223
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->G:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v5, v6}, Lcom/avast/android/generic/util/q;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto/16 :goto_5

    .line 225
    :catch_4
    move-exception v0

    move-object v7, v6

    move-object v8, v2

    move-object v9, v1

    move-object v10, v3

    move-object v6, v0

    .line 226
    :goto_7
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download, error"

    invoke-virtual {v6}, Lcom/avast/android/generic/internet/b/c;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 228
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->I:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v5, v6}, Lcom/avast/android/generic/util/q;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :catch_5
    move-exception v0

    move-object v7, v6

    move-object v8, v2

    move-object v9, v1

    move-object v10, v3

    move-object v6, v0

    .line 231
    :goto_8
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "download, error"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 233
    const-string v0, "AvastGeneric"

    const-string v1, "Exception in internet connectivity"

    invoke-static {v0, v1, v6}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->h:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 240
    :catchall_2
    move-exception v0

    move-object v8, v2

    move-object v9, v1

    move-object v10, v3

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v10, v9

    move-object v9, v1

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    goto/16 :goto_5

    :catchall_5
    move-exception v0

    move-object v6, v1

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    goto/16 :goto_5

    .line 230
    :catch_6
    move-exception v0

    move-object v7, v6

    move-object v8, v2

    move-object v10, v9

    move-object v9, v1

    move-object v6, v0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v7, v6

    move-object v10, v9

    move-object v9, v8

    move-object v6, v0

    move-object v8, v2

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_8

    :catch_9
    move-exception v0

    move-object v6, v0

    move-object v7, v1

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    goto :goto_8

    .line 225
    :catch_a
    move-exception v0

    move-object v7, v6

    move-object v8, v2

    move-object v10, v9

    move-object v9, v1

    move-object v6, v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    move-object v7, v6

    move-object v10, v9

    move-object v9, v8

    move-object v6, v0

    move-object v8, v2

    goto/16 :goto_7

    :catch_c
    move-exception v0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_7

    :catch_d
    move-exception v0

    move-object v6, v0

    move-object v7, v1

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    goto/16 :goto_7

    .line 220
    :catch_e
    move-exception v0

    move-object v7, v6

    move-object v8, v2

    move-object v10, v9

    move-object v9, v1

    move-object v6, v0

    goto/16 :goto_6

    :catch_f
    move-exception v0

    move-object v7, v6

    move-object v10, v9

    move-object v9, v8

    move-object v6, v0

    move-object v8, v2

    goto/16 :goto_6

    :catch_10
    move-exception v0

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_6

    :catch_11
    move-exception v0

    move-object v6, v0

    move-object v7, v1

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    goto/16 :goto_6

    .line 215
    :catch_12
    move-exception v0

    move-object v7, v2

    move-object v8, v1

    move-object v9, v3

    move-object v3, v0

    goto/16 :goto_4

    :catch_13
    move-exception v0

    move-object v3, v0

    move-object v7, v2

    move-object v8, v1

    goto/16 :goto_4

    :catch_14
    move-exception v0

    move-object v3, v0

    move-object v7, v2

    goto/16 :goto_4
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->X:I

    invoke-virtual {v1, v2}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->b(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->c(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/antitheft_setup_components/c;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->d(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-static {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->e(Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iput-boolean v3, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->b:Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/antitheft_setup_components/app/home/f;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    invoke-virtual {v0}, Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/f;->a:Lcom/avast/android/antitheft_setup_components/app/home/DownloadFragment;

    new-instance v1, Lcom/avast/android/antitheft_setup_components/app/home/i;

    invoke-direct {v1, p0}, Lcom/avast/android/antitheft_setup_components/app/home/i;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/f;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
