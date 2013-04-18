.class final Lcom/ijinshan/software/recommand/b;
.super Ljava/lang/Thread;
.source "FileDownloadService.java"


# instance fields
.field a:Lcom/ijinshan/software/recommand/c;

.field b:Landroid/os/Message;

.field final synthetic c:Lcom/ijinshan/software/recommand/FileDownloadService;


# direct methods
.method public constructor <init>(Lcom/ijinshan/software/recommand/FileDownloadService;Lcom/ijinshan/software/recommand/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 191
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/FileDownloadService;->e(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    .line 189
    iput-object p2, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    .line 190
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v1, v1, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/FileDownloadService;->a(Lcom/ijinshan/software/recommand/FileDownloadService;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget v1, v1, Lcom/ijinshan/software/recommand/c;->d:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-wide v2, v2, Lcom/ijinshan/software/recommand/c;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 206
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/FileDownloadService;->e(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 224
    :cond_3
    :goto_0
    return-void

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget v1, v1, Lcom/ijinshan/software/recommand/c;->a:I

    iget-object v2, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v2, v2, Lcom/ijinshan/software/recommand/c;->h:Landroid/app/Notification;

    iget-object v3, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v3, v3, Lcom/ijinshan/software/recommand/c;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v4, v4, Lcom/ijinshan/software/recommand/c;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-object v5, v5, Lcom/ijinshan/software/recommand/c;->g:Ljava/io/File;

    iget-object v6, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iget-wide v6, v6, Lcom/ijinshan/software/recommand/c;->e:J

    invoke-virtual/range {v0 .. v7}, Lcom/ijinshan/software/recommand/FileDownloadService;->a(ILandroid/app/Notification;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)J

    move-result-wide v0

    .line 211
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 214
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/FileDownloadService;->e(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 221
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->a:Lcom/ijinshan/software/recommand/c;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/ijinshan/software/recommand/b;->c:Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/FileDownloadService;->e(Lcom/ijinshan/software/recommand/FileDownloadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/b;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
