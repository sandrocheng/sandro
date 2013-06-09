.class public final Lorg/antivirus/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/app/Notification;

.field private f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:Lorg/antivirus/a/i;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/a/h;->b:Z

    const/high16 v0, -0x100

    iput v0, p0, Lorg/antivirus/a/h;->f:I

    const/16 v0, 0x400

    iput v0, p0, Lorg/antivirus/a/h;->g:I

    const-string v0, "search_helper"

    iput-object v0, p0, Lorg/antivirus/a/h;->h:Ljava/lang/String;

    iput-object p2, p0, Lorg/antivirus/a/h;->c:Ljava/lang/String;

    iput p3, p0, Lorg/antivirus/a/h;->d:I

    iput-object p1, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-string v2, "search_helper"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lorg/antivirus/a/h;->a(Landroid/view/ViewGroup;)Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lorg/antivirus/a/h;->e:Landroid/app/Notification;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020051

    const v3, 0x7f09014e

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lorg/antivirus/a/h;->e:Landroid/app/Notification;

    iget-object v1, p0, Lorg/antivirus/a/h;->e:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-class v3, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "progress"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "progress_max"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/a/h;->e:Landroid/app/Notification;

    iget-object v3, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030037

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v2, 0x7f080052

    const v3, 0x7f020051

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v2, 0x7f08000b

    const v3, 0x7f09014e

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f080105

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v2, 0x7f08000b

    iget v3, p0, Lorg/antivirus/a/h;->f:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    iget-object v2, p0, Lorg/antivirus/a/h;->e:Landroid/app/Notification;

    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lorg/antivirus/a/h;->b:Z

    if-nez v1, :cond_1

    const/16 v1, 0x7d1

    iget-object v2, p0, Lorg/antivirus/a/h;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    invoke-interface {v0, p1, p2}, Lorg/antivirus/a/i;->a(II)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    check-cast v0, Landroid/widget/TextView;

    const-string v5, "search_helper"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lorg/antivirus/a/h;->f:I

    move v0, v1

    :goto_1
    return v0

    :cond_0
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lorg/antivirus/a/h;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/a/h;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/a/h;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020051

    const v3, 0x7f090149

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-class v4, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "url"

    iget-object v4, p0, Lorg/antivirus/a/h;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "revision"

    iget v4, p0, Lorg/antivirus/a/h;->d:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const v4, 0x7f090147

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09014c

    invoke-static {v5}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v2, 0x7d1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    invoke-interface {v0}, Lorg/antivirus/a/i;->a()V

    :cond_0
    invoke-direct {p0}, Lorg/antivirus/a/h;->b()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/antivirus/a/h;->b:Z

    iget-object v0, p0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/antivirus/a/h;->b()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lorg/antivirus/a/i;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    return-void
.end method

.method public final run()V
    .locals 17

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/antivirus/a/h;->c:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :try_start_2
    const-string v3, "x-Content-Length"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    :cond_0
    move v11, v2

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    if-gtz v11, :cond_3

    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->c()V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    invoke-static {v3}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v11, v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lorg/antivirus/a/a;->b(Ljava/io/File;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x9

    if-le v3, v7, :cond_19

    add-int/lit8 v3, v3, -0x9

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_2
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v9, v2

    mul-long/2addr v7, v9

    int-to-long v9, v11

    cmp-long v2, v7, v9

    if-gez v2, :cond_d

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v3, v5

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v2

    move-object/from16 v2, v16

    :goto_3
    if-eqz v4, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_6
    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_7
    :try_start_7
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/Android/data/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    invoke-static {v6}, Lorg/antivirus/a/a;->b(Ljava/io/File;)V

    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v9, v2

    mul-long/2addr v7, v9

    int-to-long v9, v11

    cmp-long v2, v7, v9

    if-gez v2, :cond_b

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v5, :cond_9

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_a
    :goto_7
    throw v1

    :cond_b
    :try_start_a
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ver_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v8, v0, Lorg/antivirus/a/h;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-object v10, v2

    move-object v5, v3

    :goto_8
    const/4 v2, 0x0

    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lorg/antivirus/a/h;->a(II)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    move-result-object v3

    const/16 v2, 0x400

    :try_start_c
    new-array v4, v2, [B

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/antivirus/a/h;->b:Z

    if-nez v8, :cond_e

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    const/4 v9, 0x0

    invoke-virtual {v5, v4, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v8, v6

    const-wide/16 v14, 0x3e8

    cmp-long v12, v12, v14

    if-ltz v12, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lorg/antivirus/a/h;->a(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    move-wide v6, v8

    goto :goto_9

    :cond_d
    :try_start_d
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ver_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v8, v0, Lorg/antivirus/a/h;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ver_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v8, v0, Lorg/antivirus/a/h;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".apk"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v5

    move-object v10, v2

    goto/16 :goto_8

    :cond_e
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    const/4 v3, 0x0

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    const/4 v5, 0x0

    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lorg/antivirus/a/h;->a(II)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/antivirus/a/h;->b:Z

    if-eqz v1, :cond_f

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_3

    :cond_f
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Lorg/antivirus/a/f;

    invoke-direct {v2}, Lorg/antivirus/a/f;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/antivirus/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v2, Lorg/antivirus/a/f;->a:[Ljava/security/cert/Certificate;

    if-eqz v6, :cond_10

    iget-object v6, v2, Lorg/antivirus/a/f;->a:[Ljava/security/cert/Certificate;

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11

    :cond_10
    const-string v1, "bad version update"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->c()V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    move-object v5, v4

    move-object v4, v3

    goto/16 :goto_5

    :cond_11
    new-instance v6, Landroid/content/pm/Signature;

    iget-object v2, v2, Lorg/antivirus/a/f;->a:[Ljava/security/cert/Certificate;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/content/pm/Signature;-><init>([B)V

    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "bad version update"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->c()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/antivirus/a/h;->b:Z

    if-eqz v2, :cond_13

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    :try_start_13
    monitor-exit p0

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    :cond_13
    const/4 v6, 0x0

    :try_start_14
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v7, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v11, "packageinstaller"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    :goto_a
    const/high16 v6, 0x1000

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    invoke-interface {v6}, Lorg/antivirus/a/i;->b()Z

    move-result v6

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    invoke-interface {v6, v10}, Lorg/antivirus/a/i;->a(Ljava/io/File;)V

    :cond_15
    :goto_b
    if-eqz v2, :cond_16

    new-instance v2, Landroid/app/Notification;

    const v6, 0x7f020051

    const v8, 0x7f090149

    invoke-static {v8}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v2, v6, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v6, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x30

    iput v6, v2, Landroid/app/Notification;->flags:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x800

    invoke-static {v6, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/antivirus/a/h;->j:Landroid/content/Context;

    const v8, 0x7f090147

    invoke-static {v8}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f09014d

    invoke-static {v9}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v6, 0x7d1

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    :cond_16
    :goto_c
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lorg/antivirus/a/h;->b()V

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_1

    :cond_17
    :try_start_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/antivirus/a/h;->i:Lorg/antivirus/a/i;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lorg/antivirus/a/i;->a(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto :goto_b

    :catch_4
    move-exception v1

    :try_start_17
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto :goto_c

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :catch_6
    move-exception v2

    goto/16 :goto_6

    :catch_7
    move-exception v2

    goto/16 :goto_7

    :catchall_3
    move-exception v1

    move-object v4, v3

    goto/16 :goto_5

    :catchall_4
    move-exception v1

    move-object v4, v3

    goto/16 :goto_5

    :catchall_5
    move-exception v1

    move-object v4, v2

    move-object v5, v3

    goto/16 :goto_5

    :catch_8
    move-exception v1

    move-object v3, v5

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    goto/16 :goto_3

    :catch_9
    move-exception v2

    move-object v3, v5

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v2

    move-object/from16 v2, v16

    goto/16 :goto_3

    :catch_a
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_3

    :catch_b
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_3

    :catch_c
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object/from16 v1, v16

    goto/16 :goto_3

    :cond_18
    move v2, v6

    goto/16 :goto_a

    :cond_19
    move-object v3, v2

    goto/16 :goto_2

    nop

    :array_0
    .array-data 0x1
        0xadt
        0x83t
        0x10t
        0x7ft
        0x7bt
        0x40t
        0xbbt
        0x9at
        0x1dt
        0xb3t
        0x6at
        0x4ft
        0x64t
        0x9ct
        0xdbt
        0xe9t
        0x58t
        0x6dt
        0x83t
        0xe0t
    .end array-data
.end method
