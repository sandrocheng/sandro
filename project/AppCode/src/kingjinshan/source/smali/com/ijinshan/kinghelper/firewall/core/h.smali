.class public final Lcom/ijinshan/kinghelper/firewall/core/h;
.super Ljava/lang/Object;
.source "FirewallNotication.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:I = 0x1986

.field private static final e:I = 0x1987

.field private static final f:I = 0x1988

.field private static final g:I = 0x1989

.field private static final h:I = 0x198a

.field private static final i:I = 0x198b

.field private static final j:I = 0x198c

.field private static k:I

.field private static l:I

.field private static m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    return v0
.end method

.method private static a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 317
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030018

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 319
    iput-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 320
    iput-object p3, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 321
    const v1, 0x7f0800a7

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 322
    const v1, 0x7f0800a8

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object v0, p0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 107
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->e(Landroid/content/Context;)V

    .line 110
    :cond_0
    sput v2, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    .line 111
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 112
    sput v2, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    .line 113
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 114
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 116
    const/16 v0, 0x1987

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 117
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0b0114

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 173
    const/16 v1, 0x1988

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 175
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 178
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 179
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    .line 180
    sput v3, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    .line 181
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    if-lez v0, :cond_2

    .line 186
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    if-gt v0, v3, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 187
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v1, "FirewallLogTabActivity_LOG_FromNotify"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    if-le v1, v3, :cond_1

    .line 225
    new-array v0, v3, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_1
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/b;

    sget v2, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    invoke-direct {v1, v0, v2, v4}, Lcom/ijinshan/kinghelper/firewall/core/b;-><init>(Ljava/lang/String;II)V

    .line 232
    invoke-static {p0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 234
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->e(Landroid/content/Context;)V

    .line 236
    :cond_2
    return-void

    .line 195
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    const-string v1, "FirewallLogDetailActivity_LOG_TYPE"

    const-string v2, "FirewallLogDetailActivity_LOG_TYPE_SMS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "FirewallLogDetailActivity_LOG_ID"

    long-to-int v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v1, "FirewallLogDetailActivity_LOG_FromNotify"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/a/g;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 81
    const/16 v1, 0x1987

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 83
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "FirewallLogTabActivity_current_tab"

    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "FirewallLogTabActivity_LOG_FromNotify"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 91
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    .line 92
    sput v5, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    .line 93
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    if-lez v0, :cond_0

    .line 94
    const v0, 0x7f0b0115

    new-array v1, v5, [Ljava/lang/Object;

    sget v2, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    invoke-direct {v1, v0, v3, v2}, Lcom/ijinshan/kinghelper/firewall/core/b;-><init>(Ljava/lang/String;II)V

    .line 100
    invoke-static {p0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->e(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/jxphone/mosecurity/c/l;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 344
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lcom/keniu/security/a;->aD()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-virtual {v1}, Lcom/keniu/security/a;->aE()I

    move-result v1

    .line 347
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 349
    const/16 v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 352
    if-nez p3, :cond_0

    .line 353
    iput p2, v3, Landroid/app/Notification;->defaults:I

    .line 356
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->hashCode()I

    move-result v4

    .line 358
    const/high16 v5, 0x1000

    invoke-static {p0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 360
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 362
    const v1, 0x7f0b0659

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 364
    const/4 v0, 0x0

    sput v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    .line 365
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 248
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->b(Landroid/content/Context;)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const/high16 v1, 0x3400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 254
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const/high16 v1, 0x800

    invoke-static {p0, v10, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 258
    if-gt p3, v9, :cond_3

    .line 259
    const-string v3, "read=0 and address like ?"

    .line 261
    new-array v4, v9, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/w;->a:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_3

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 273
    :goto_0
    if-le v0, v9, :cond_2

    .line 274
    const v1, 0x7f0b013b

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const v1, 0x7f0b013a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 279
    :goto_1
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f0201ab

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v3, v4, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 282
    invoke-virtual {v2, p0, v0, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 286
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 289
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    .line 291
    :goto_2
    if-eqz v0, :cond_0

    .line 292
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 294
    :cond_0
    const-string v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 296
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 297
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 298
    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v2, Landroid/app/Notification;->defaults:I

    .line 300
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 302
    const/16 v0, 0x1989

    .line 304
    :try_start_0
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x1989

    .line 307
    :goto_3
    invoke-virtual {p0, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 308
    return-void

    :cond_1
    move v0, v10

    .line 289
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_2
    move-object v0, p1

    move-object v1, p2

    goto :goto_1

    :cond_3
    move v0, p3

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x198c

    .line 141
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 143
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0201ab

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 145
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 147
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 150
    sget-object v4, Lcom/ijinshan/kinghelper/firewall/BroadcastRecSms;->b:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 153
    const/high16 v3, 0x800

    invoke-static {p0, v6, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 156
    invoke-virtual {v1, p0, p1, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 158
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 159
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 120
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/h;->e(Landroid/content/Context;)V

    .line 123
    :cond_0
    sput v2, Lcom/ijinshan/kinghelper/firewall/core/h;->l:I

    .line 124
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 125
    sput v2, Lcom/ijinshan/kinghelper/firewall/core/h;->k:I

    .line 126
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/core/b;)V

    .line 127
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 129
    const/16 v0, 0x1988

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 130
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/h;->m:I

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 135
    const/16 v0, 0x198c

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 136
    return-void
.end method

.method private static d()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x1988

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 369
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 371
    new-instance v1, Landroid/app/Notification;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 373
    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 374
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    .line 375
    invoke-virtual {v2}, Lcom/keniu/security/a;->n()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 390
    const/4 v2, -0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 394
    :goto_0
    :pswitch_0
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 395
    return-void

    .line 379
    :pswitch_1
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 382
    :pswitch_2
    const/4 v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 385
    :pswitch_3
    const/4 v2, 0x3

    iput v2, v1, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    const-string v1, "android.intent.action.MY_RECEIVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
