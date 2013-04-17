.class public final Lbo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo$a;
    }
.end annotation


# static fields
.field private static a:Lbo;


# instance fields
.field private b:Lbo$a;

.field private c:Landroid/media/Ringtone;

.field private d:Landroid/media/RingtoneManager;

.field private e:Landroid/content/Context;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbo;->a:Lbo;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lbo;->f:[B

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbo;->e:Landroid/content/Context;

    new-instance v1, Lbo$a;

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    iget-object v0, p0, Lbo;->e:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0}, Lbo$a;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lbo;->b:Lbo$a;

    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbo;->d:Landroid/media/RingtoneManager;

    iget-object v0, p0, Lbo;->d:Landroid/media/RingtoneManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setStopPreviousRingtone(Z)V

    iget-object v0, p0, Lbo;->e:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lbo;)Lbo$a;
    .locals 1

    iget-object v0, p0, Lbo;->b:Lbo$a;

    return-object v0
.end method

.method public static a()Lbo;
    .locals 1

    sget-object v0, Lbo;->a:Lbo;

    if-nez v0, :cond_0

    new-instance v0, Lbo;

    invoke-direct {v0}, Lbo;-><init>()V

    sput-object v0, Lbo;->a:Lbo;

    :cond_0
    sget-object v0, Lbo;->a:Lbo;

    return-object v0
.end method


# virtual methods
.method public final a(D)V
    .locals 11

    const v10, 0x7f08005e

    const v9, 0x7f08005c

    const/4 v1, 0x0

    const/high16 v8, 0x4180

    const v7, 0x7f08005f

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->p()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lbo;->f:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbo;->b:Lbo$a;

    iget-object v2, v0, Lbo$a;->b:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    new-instance v2, La;

    iget-object v0, p0, Lbo;->e:Landroid/content/Context;

    invoke-direct {v2, v0}, La;-><init>(Landroid/content/Context;)V

    iget v0, v2, La;->b:I

    if-ltz v0, :cond_2

    iget v0, v2, La;->b:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbo;->f:[B

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lbo;->b:Lbo$a;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v3, Landroid/os/Message;->arg1:I

    iget-object v0, v2, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v3

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, v2, La;->a:Landroid/app/Notification;

    invoke-virtual {v3}, Lr;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0200cd

    :goto_3
    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iput v0, v4, Landroid/app/Notification;->icon:I

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget v4, v2, La;->b:I

    iput v4, v0, Landroid/app/Notification;->iconLevel:I

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    const/4 v4, 0x2

    iput v4, v0, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    iget-object v4, v2, La;->c:Landroid/content/Context;

    const-class v5, Lcom/tencent/powermanager/ui/GuideActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, v2, La;->c:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v1, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iput-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, v2, La;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f03001a

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    invoke-static {}, Ldv;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    const/high16 v6, 0x4188

    invoke-virtual {v4, v7, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    const/high16 v6, 0x4188

    invoke-virtual {v4, v9, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    :goto_4
    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, v2, La;->c:Landroid/content/Context;

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v0, :cond_c

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f08005d

    iget v0, v2, La;->b:I

    const/16 v5, 0x5a

    if-ge v0, v5, :cond_9

    iget-object v0, v2, La;->c:Landroid/content/Context;

    const v5, 0x7f060067

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, La;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_b

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v5, 0x8

    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, v2, La;->c:Landroid/content/Context;

    const v6, 0x7f060072

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    const/high16 v6, 0x4190

    invoke-virtual {v0, v10, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    :goto_6
    iget-object v0, v2, La;->c:Landroid/content/Context;

    invoke-static {v0, v3, v4}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, La;->a:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_7
    iget v0, v2, La;->b:I

    if-gtz v0, :cond_e

    move v0, v1

    :goto_8
    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f020132

    :goto_9
    iget-object v1, v2, La;->a:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f08005a

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    goto/16 :goto_2

    :pswitch_0
    const v0, 0x7f0200cc

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Ldv;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    invoke-virtual {v4, v7, v5, v8}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    invoke-virtual {v4, v9, v5, v8}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_4

    :cond_6
    invoke-static {}, Ldv;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    invoke-virtual {v4, v7, v5, v8}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    invoke-virtual {v4, v9, v5, v8}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_4

    :cond_7
    invoke-static {}, Ldv;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    invoke-virtual {v4, v7, v5, v8}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    invoke-virtual {v4, v9, v5, v8}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_4

    :cond_8
    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    const/high16 v6, 0x4170

    invoke-virtual {v4, v7, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    iget-object v4, v2, La;->a:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    const/high16 v6, 0x4170

    invoke-virtual {v4, v9, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_4

    :cond_9
    const/16 v5, 0x64

    if-ge v0, v5, :cond_a

    iget-object v0, v2, La;->c:Landroid/content/Context;

    const v5, 0x7f060068

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    iget-object v0, v2, La;->c:Landroid/content/Context;

    const v5, 0x7f060069

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_b
    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v5, v2, La;->c:Landroid/content/Context;

    const v6, 0x7f06003e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v5, "setTextSize"

    const/high16 v6, 0x4160

    invoke-virtual {v0, v10, v5, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v3}, Lr;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, La;->a:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f08005d

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {}, Laf;->a()Laf;

    move-result-object v0

    iget-object v3, v2, La;->a:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v4, v2, La;->c:Landroid/content/Context;

    const v5, 0x7f06006c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, v2, La;->a:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v7, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-wide/16 v3, 0x0

    cmpg-double v3, p1, v3

    if-gez v3, :cond_d

    iget-object v3, v2, La;->a:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v4, v2, La;->c:Landroid/content/Context;

    invoke-virtual {v0}, Laf;->c()D

    move-result-wide v5

    invoke-static {v4, v5, v6}, La;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_d
    iget-object v0, v2, La;->a:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v3, v2, La;->c:Landroid/content/Context;

    invoke-static {v3, p1, p2}, La;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_e
    const/16 v1, 0x9

    if-gt v0, v1, :cond_f

    const/16 v0, 0x9

    goto/16 :goto_8

    :cond_f
    const/16 v1, 0xf

    if-gt v0, v1, :cond_10

    const/16 v0, 0xf

    goto/16 :goto_8

    :cond_10
    const/16 v1, 0x19

    if-gt v0, v1, :cond_11

    const/16 v0, 0x19

    goto/16 :goto_8

    :cond_11
    const/16 v1, 0x32

    if-gt v0, v1, :cond_12

    const/16 v0, 0x32

    goto/16 :goto_8

    :cond_12
    const/16 v1, 0x4b

    if-gt v0, v1, :cond_13

    const/16 v0, 0x4b

    goto/16 :goto_8

    :cond_13
    const/16 v1, 0x50

    if-gt v0, v1, :cond_14

    const/16 v0, 0x50

    goto/16 :goto_8

    :cond_14
    const/16 v1, 0x55

    if-gt v0, v1, :cond_15

    const/16 v0, 0x55

    goto/16 :goto_8

    :cond_15
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_16

    const/16 v0, 0x5a

    goto/16 :goto_8

    :cond_16
    const/16 v1, 0x64

    if-ge v0, v1, :cond_17

    const/16 v0, 0x5f

    goto/16 :goto_8

    :cond_17
    const/16 v0, 0x64

    goto/16 :goto_8

    :sswitch_0
    const v0, 0x7f020133

    goto/16 :goto_9

    :sswitch_1
    const v0, 0x7f020134

    goto/16 :goto_9

    :sswitch_2
    const v0, 0x7f020135

    goto/16 :goto_9

    :sswitch_3
    const v0, 0x7f020136

    goto/16 :goto_9

    :sswitch_4
    const v0, 0x7f020137

    goto/16 :goto_9

    :sswitch_5
    const v0, 0x7f020138

    goto/16 :goto_9

    :sswitch_6
    const v0, 0x7f020139

    goto/16 :goto_9

    :sswitch_7
    const v0, 0x7f02013a

    goto/16 :goto_9

    :sswitch_8
    const v0, 0x7f020132

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0xf -> :sswitch_0
        0x19 -> :sswitch_1
        0x32 -> :sswitch_2
        0x4b -> :sswitch_3
        0x50 -> :sswitch_4
        0x55 -> :sswitch_5
        0x5a -> :sswitch_6
        0x5f -> :sswitch_7
        0x64 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(I)V
    .locals 9

    const/16 v3, 0x14

    const v5, 0x7f06009b

    const-wide/16 v7, 0x0

    const v4, 0x7f060099

    const v6, 0x7f06003f

    invoke-static {}, La;->a()J

    move-result-wide v1

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_b

    if-gt p1, v3, :cond_2

    const v0, 0x7f020167

    cmp-long v3, v1, v7

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-static {v4, v1, v2}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ldp;

    iget-object v3, p0, Lbo;->e:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Ldp;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, v2, Ldp;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, v2, Ldp;->a:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, v2, Ldp;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x28

    if-gt p1, v0, :cond_4

    if-le p1, v3, :cond_4

    const v0, 0x7f020168

    cmp-long v3, v1, v7

    if-lez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-static {v4, v1, v2}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x3c

    if-gt p1, v0, :cond_6

    const/16 v0, 0x28

    if-le p1, v0, :cond_6

    const v0, 0x7f020169

    cmp-long v3, v1, v7

    if-lez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-static {v4, v1, v2}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x50

    if-gt p1, v0, :cond_8

    const/16 v0, 0x3c

    if-le p1, v0, :cond_8

    const v0, 0x7f02016a

    cmp-long v3, v1, v7

    if-lez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-static {v4, v1, v2}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x64

    if-ge p1, v0, :cond_a

    const/16 v0, 0x50

    if-le p1, v0, :cond_a

    const v0, 0x7f02016b

    cmp-long v3, v1, v7

    if-lez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    invoke-static {v4, v1, v2}, La;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    const v0, 0x7f020166

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    const v0, 0x7f020166

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public final a(Lbd;)V
    .locals 11

    if-nez p1, :cond_0

    iget-object v0, p0, Lbo;->b:Lbo$a;

    iget-object v1, v0, Lbo$a;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v0, 0x1080081

    iput v0, v2, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030021

    invoke-direct {v3, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p1, Lbd;->a:Lbe;

    invoke-virtual {v0}, Lbe;->d()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v0, 0x1

    const-wide/16 v5, 0x0

    iget-wide v7, p1, Lbd;->h:J

    add-long/2addr v5, v7

    iget-wide v7, p1, Lbd;->g:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    const-wide/16 v0, 0x1

    iget-wide v7, p1, Lbd;->g:J

    add-long/2addr v0, v7

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-eqz v7, :cond_2

    long-to-float v5, v5

    long-to-float v0, v0

    div-float v0, v5, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    const v1, 0x7f080078

    invoke-virtual {v3, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f08007a

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v1, 0x7f080079

    const-string v4, "%d%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    const-class v3, Lcom/tencent/powermanager/ui/GuideActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    const/4 v3, 0x4

    const/high16 v4, 0x800

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lbo;->b:Lbo$a;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lbo;->c:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbo;->c:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    return-void
.end method

.method public final b(Lbd;)V
    .locals 6

    const v4, 0x7f06008f

    const/4 v5, 0x4

    iget-object v0, p0, Lbo;->b:Lbo$a;

    iget-object v1, v0, Lbo$a;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lbd;->a:Lbe;

    invoke-virtual {v2}, Lbe;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    iget-object v2, p1, Lbd;->a:Lbe;

    invoke-virtual {v2}, Lbe;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbo;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lbo;->b:Lbo$a;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v1, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v1, p0, Lbo;->f:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbo;->b:Lbo$a;

    iget-object v2, v0, Lbo$a;->b:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v1

    invoke-virtual {v1}, Lr;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    const/16 v2, 0x16

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x7f02013e

    iput v1, v0, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lbo;->e:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lbo;->e:Landroid/content/Context;

    const-class v5, Lcom/tencent/powermanager/ui/GuideActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x1000

    invoke-static {v2, v6, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lbo;->e:Landroid/content/Context;

    const v4, 0x7f06006e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06006f

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lbo;->f:[B

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbo;->b:Lbo$a;

    iget-object v3, v2, Lbo$a;->b:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Landroid/os/Message;->arg1:I

    iget-object v2, v2, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbo;->f:[B

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lbo;->b:Lbo$a;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v3, Landroid/os/Message;->arg1:I

    iget-object v0, v2, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lbo;->e:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lbo;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lbo;->c:Landroid/media/Ringtone;

    iget-object v0, p0, Lbo;->c:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbo;->c:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbp;

    invoke-direct {v1, p0}, Lbp;-><init>(Lbo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lbo;->b:Lbo$a;

    iget-object v1, v0, Lbo$a;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lbo$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
