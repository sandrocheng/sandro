.class final Lcom/keniu/security/f/e;
.super Ljava/lang/Object;
.source "DbUpdate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/f/c;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/f/c;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/f/e;-><init>(Lcom/keniu/security/f/c;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/f/c;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x6ddd00

    .line 180
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    const-string v1, "com.ijinshan.duba"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->a(Lcom/keniu/security/f/c;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 264
    :goto_0
    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 193
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v2}, Lcom/keniu/security/f/c;->b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "check_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 199
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    const-string v1, "http://dl.sj.ijinshan.com/update2/db_version.ini"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/keniu/security/f/c;->a(Lcom/keniu/security/f/c;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 204
    :cond_3
    :try_start_3
    new-instance v0, Lcom/keniu/security/f/g;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v3}, Lcom/keniu/security/f/c;->c(Lcom/keniu/security/f/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "db_version.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/keniu/security/f/g;-><init>(Ljava/io/File;)V

    .line 205
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v2}, Lcom/keniu/security/f/c;->b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "version"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-gt v3, v2, :cond_4

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 213
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "db_info.ini"

    invoke-static {v2, v3, v4}, Lcom/keniu/security/f/c;->a(Lcom/keniu/security/f/c;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    if-nez v2, :cond_5

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 218
    :cond_5
    :try_start_5
    const-string v2, "md5"

    invoke-virtual {v0, v2}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v4}, Lcom/keniu/security/f/c;->c(Lcom/keniu/security/f/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "db_info.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/keniu/security/malware/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v0

    if-nez v0, :cond_6

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 224
    :cond_6
    :try_start_6
    new-instance v0, Lcom/keniu/security/f/g;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v4}, Lcom/keniu/security/f/c;->c(Lcom/keniu/security/f/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "db_info.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/keniu/security/f/g;-><init>(Ljava/io/File;)V

    .line 226
    iget-object v2, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v2}, Lcom/keniu/security/f/c;->b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 227
    const-string v3, "check_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v3, "version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v1, "notification_title"

    const-string v3, "notification_title"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v1, "notification_content"

    const-string v3, "notification_content"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v1, "dialog_title"

    const-string v3, "dialog_title"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 232
    const-string v1, "dialog_content"

    const-string v3, "dialog_content"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v1, "dialog_btn_positive"

    const-string v3, "dialog_btn_positive"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v1, "dialog_btn_negetive"

    const-string v3, "dialog_btn_negetive"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v1, "url"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/keniu/security/f/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    const-class v2, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    const-string v1, "dbupdate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v1

    const/16 v2, 0x8

    const/high16 v3, 0x1000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 248
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Lcom/keniu/security/MoSecurityApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 250
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f02013f

    iget-object v4, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v4}, Lcom/keniu/security/f/c;->b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notification_title"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 253
    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 254
    invoke-static {}, Lcom/keniu/security/MoSecurityApplication;->a()Lcom/keniu/security/MoSecurityApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v4}, Lcom/keniu/security/f/c;->b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "notification_title"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v5}, Lcom/keniu/security/f/c;->b(Lcom/keniu/security/f/c;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "notification_content"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 258
    const/16 v1, 0x99

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 263
    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v0}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/keniu/security/f/e;->a:Lcom/keniu/security/f/c;

    invoke-static {v1}, Lcom/keniu/security/f/c;->d(Lcom/keniu/security/f/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
