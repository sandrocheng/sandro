.class public final Lcom/keniu/security/traffic/at;
.super Ljava/lang/Object;
.source "TrafficFixSmsAction.java"


# static fields
.field public static volatile a:Z = false

.field public static volatile b:Z = false

.field private static final c:I = 0x1101

.field private static d:Lcom/keniu/security/traffic/aw;

.field private static e:Landroid/widget/Toast;

.field private static f:Landroid/content/Context;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static volatile j:[Ljava/lang/String;

.field private static volatile k:[Ljava/lang/String;

.field private static l:Lcn/com/wali/zft/ZftPluginCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/keniu/security/traffic/at;->g:Z

    .line 42
    sput-boolean v0, Lcom/keniu/security/traffic/at;->h:Z

    .line 43
    sput-boolean v0, Lcom/keniu/security/traffic/at;->i:Z

    .line 44
    sput-boolean v1, Lcom/keniu/security/traffic/at;->a:Z

    .line 45
    sput-object v2, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    .line 46
    sput-object v2, Lcom/keniu/security/traffic/at;->k:[Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcom/keniu/security/traffic/at;->b:Z

    .line 48
    new-instance v0, Lcom/keniu/security/traffic/au;

    invoke-direct {v0}, Lcom/keniu/security/traffic/au;-><init>()V

    sput-object v0, Lcom/keniu/security/traffic/at;->l:Lcn/com/wali/zft/ZftPluginCallBack;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    return-void
.end method

.method static synthetic a()Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->e:Landroid/widget/Toast;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/keniu/security/traffic/y;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 124
    const-class v0, Lcom/keniu/security/traffic/at;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 125
    invoke-virtual {p1, v1}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v2

    .line 126
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\u5317\u4eac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\u4e2d\u56fd\u8054\u901a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\u5357\u4eac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    :cond_1
    sget-boolean v1, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v1, :cond_2

    .line 132
    const v1, 0x7f0b02d9

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 134
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/keniu/security/traffic/at;->b:Z

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    const-string v2, "updateTrafficMainData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_0
    monitor-exit v0

    return-void

    .line 142
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    .line 144
    const v1, 0x7f0b02e8

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/keniu/security/traffic/at;->e:Landroid/widget/Toast;

    .line 147
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/traffic/at;->l:Lcn/com/wali/zft/ZftPluginCallBack;

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->registCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    .line 149
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->beginAsyn_1_1(I)I

    move-result v1

    .line 150
    if-eq v1, v5, :cond_5

    .line 151
    sget-boolean v1, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v1, :cond_4

    .line 152
    const v1, 0x7f0b02bb

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 154
    :cond_4
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/traffic/at;->l:Lcn/com/wali/zft/ZftPluginCallBack;

    invoke-virtual {v1, v2}, Lcn/com/wali/zft/plugin;->unregistCallBack(Lcn/com/wali/zft/ZftPluginCallBack;)V

    .line 155
    const/4 v1, 0x0

    sput-boolean v1, Lcom/keniu/security/traffic/at;->b:Z

    .line 156
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v2, "updateTrafficMainData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 162
    :cond_5
    :try_start_2
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/keniu/security/a;->v()V

    .line 165
    const/4 v1, 0x0

    sput-boolean v1, Lcom/keniu/security/traffic/aw;->a:Z

    .line 166
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/at;->g:Z

    .line 167
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/at;->h:Z

    .line 168
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/at;->i:Z

    .line 169
    sget-boolean v1, Lcom/keniu/security/traffic/at;->a:Z

    if-nez v1, :cond_6

    .line 170
    const/4 v1, 0x1

    sput-boolean v1, Lcom/keniu/security/traffic/at;->b:Z

    .line 171
    :cond_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "begin send message"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/keniu/security/traffic/at;->d:Lcom/keniu/security/traffic/aw;

    if-nez v1, :cond_7

    .line 173
    new-instance v1, Lcom/keniu/security/traffic/aw;

    invoke-direct {v1}, Lcom/keniu/security/traffic/aw;-><init>()V

    sput-object v1, Lcom/keniu/security/traffic/at;->d:Lcom/keniu/security/traffic/aw;

    .line 176
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/keniu/security/traffic/y;->o:J

    .line 177
    const v1, 0x7f0b02d7

    invoke-virtual {p1, p0, v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 179
    sget-object v1, Lcom/keniu/security/traffic/at;->d:Lcom/keniu/security/traffic/aw;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/aw;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_from_auto_check_failed_notify"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const v3, 0x7f0b0306

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02020f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, p0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    sget-object v4, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x1101

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method static synthetic a([Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/keniu/security/h/b;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "traffic_updater2_report_fix_sms"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "traffic_updater2_report_fix_sms"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keniu/security/traffic/av;

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    aget-object v3, p0, v3

    aget-object v4, p0, v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/keniu/security/traffic/av;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 35
    sput-object p0, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 231
    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 233
    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    const-string v2, "extra_from_auto_check_failed_notify"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 247
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const v3, 0x7f0b0306

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02020f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v4, p0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 253
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 255
    sget-object v4, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 257
    const/16 v1, 0x1101

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static b([Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    if-eqz p0, :cond_0

    .line 263
    sget-boolean v0, Lcom/keniu/security/h/b;->a:Z

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    const-string v1, "traffic_updater2_report_fix_sms"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 269
    if-nez v1, :cond_0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 271
    const-string v1, "traffic_updater2_report_fix_sms"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keniu/security/traffic/av;

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    aget-object v3, p0, v3

    aget-object v4, p0, v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/keniu/security/traffic/av;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    :cond_0
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/keniu/security/traffic/at;->g:Z

    return v0
.end method

.method static synthetic b([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 35
    sput-object p0, Lcom/keniu/security/traffic/at;->k:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/at;->g:Z

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/keniu/security/traffic/at;->h:Z

    return v0
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/at;->h:Z

    return v0
.end method

.method static synthetic g()Lcom/keniu/security/traffic/aw;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->d:Lcom/keniu/security/traffic/aw;

    return-object v0
.end method

.method static synthetic h()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    if-nez v2, :cond_1

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "extra_from_auto_check_failed_notify"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const v3, 0x7f0b0306

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    sget-object v4, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    if-nez v4, :cond_2

    const v4, 0x7f0b0309

    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f02020f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    sget-object v5, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x1101

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/traffic/TrafficSmsShowActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "address"

    sget-object v3, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "body"

    sget-object v3, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-string v3, "15"

    invoke-static {v2, v3}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v4, 0x7f0b030a

    goto :goto_1
.end method

.method static synthetic i()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/keniu/security/traffic/at;->i:Z

    return v0
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/at;->i:Z

    return v0
.end method

.method static synthetic l()Lcn/com/wali/zft/ZftPluginCallBack;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->l:Lcn/com/wali/zft/ZftPluginCallBack;

    return-object v0
.end method

.method static synthetic m()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    return-object v0
.end method

.method private static n()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    sget-object v0, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 186
    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 191
    sget-object v2, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 192
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    const-string v2, "extra_from_auto_check_failed_notify"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    :goto_1
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 212
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const v3, 0x7f0b0306

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    sget-object v3, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    sget-object v4, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    if-nez v4, :cond_2

    const v4, 0x7f0b0309

    :goto_2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f02020f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 221
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 223
    sget-object v5, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 225
    const/16 v1, 0x1101

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 197
    :cond_1
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-class v3, Lcom/keniu/security/traffic/TrafficSmsShowActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    const-string v2, "address"

    sget-object v3, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v2, "body"

    sget-object v3, Lcom/keniu/security/traffic/at;->j:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    sget-object v2, Lcom/keniu/security/traffic/at;->f:Landroid/content/Context;

    const-string v3, "15"

    invoke-static {v2, v3}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_2
    const v4, 0x7f0b030a

    goto :goto_2
.end method
