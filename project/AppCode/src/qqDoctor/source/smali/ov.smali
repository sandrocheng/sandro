.class public Lov;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lov$a;
    }
.end annotation


# static fields
.field private static a:Lov;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/media/AudioManager;

.field private e:Lov$a;

.field private f:Landroid/media/Ringtone;

.field private g:Landroid/media/Ringtone;

.field private h:Landroid/media/RingtoneManager;

.field private i:Landroid/os/Vibrator;

.field private j:Landroid/content/Context;

.field private k:Lho;

.field private l:Lhg;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lov;->a:Lov;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lov;->b:I

    iput v4, p0, Lov;->c:I

    iput-boolean v5, p0, Lov;->m:Z

    iput-boolean v5, p0, Lov;->n:Z

    iput-boolean v5, p0, Lov;->o:Z

    iput-boolean v4, p0, Lov;->p:Z

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lov;->k:Lho;

    new-instance v0, Lhg;

    invoke-direct {v0}, Lhg;-><init>()V

    iput-object v0, p0, Lov;->l:Lhg;

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    new-instance v1, Lov$a;

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {v1, v2, v0}, Lov$a;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    iput-object v1, p0, Lov;->e:Lov$a;

    new-instance v0, Landroid/media/RingtoneManager;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lov;->h:Landroid/media/RingtoneManager;

    iget-object v0, p0, Lov;->h:Landroid/media/RingtoneManager;

    invoke-virtual {v0, v5}, Landroid/media/RingtoneManager;->setStopPreviousRingtone(Z)V

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    iget-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lov;->b:I

    iget-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Lov;->c:I

    return-void
.end method

.method static synthetic a(Lov;)Lov$a;
    .locals 1

    iget-object v0, p0, Lov;->e:Lov$a;

    return-object v0
.end method

.method public static a()Lov;
    .locals 2

    const-class v1, Lov;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lov;->a:Lov;

    if-nez v0, :cond_0

    new-instance v0, Lov;

    invoke-direct {v0}, Lov;-><init>()V

    sput-object v0, Lov;->a:Lov;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lov;->a:Lov;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x6

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->O()Z

    move-result v0

    iget-object v1, p0, Lov;->k:Lho;

    invoke-virtual {v1}, Lho;->f()Z

    move-result v1

    iget-object v2, p0, Lov;->k:Lho;

    invoke-virtual {v2}, Lho;->ae()Z

    move-result v2

    new-instance v3, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v3, v3, Liy;->a:Landroid/content/SharedPreferences;

    const-string v4, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v5

    invoke-virtual {v5}, Lnp;->f()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v6}, Lov$a;->a(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lnp;->a(Landroid/content/Context;ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v6}, Lov$a;->a(I)V

    goto :goto_0

    :cond_2
    iput-object p3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lov;->e:Lov$a;

    invoke-virtual {v1, v6, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lov;->f:Landroid/media/Ringtone;

    iget-object v0, p0, Lov;->f:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lov;->f:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    iget-boolean v0, p0, Lov;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const-string v2, "IS_FROM_NOTIFICATION"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "password"

    const-string v5, "fromnotification"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Laai;->a()Laai;

    move-result-object v4

    invoke-virtual {v4}, Laai;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/SecureSpaceActivity;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "password"

    const-string v4, "-1"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_back_to_main"

    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f02023c

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lov;->k:Lho;

    invoke-virtual {v2}, Lho;->A()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput v7, v0, Landroid/app/Notification;->defaults:I

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x39

    iput v2, v0, Landroid/app/Notification;->flags:I

    const v2, -0xff0100

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x1f4

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x7d0

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->k:Lho;

    invoke-virtual {v3}, Lho;->B()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->k:Lho;

    invoke-virtual {v4}, Lho;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    invoke-virtual {v1, v7, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionControlActivity;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "SHORTCUT_TO_SECURE_SPACE"

    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public final a(FZ)V
    .locals 1

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkWarningDialog;->a(Landroid/content/Context;FZ)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, p1}, Lov$a;->a(I)V

    return-void
.end method

.method public final a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V
    .locals 13

    iget-boolean v0, p0, Lov;->m:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->ae()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lov;->o:Z

    iget-object v6, p0, Lov;->j:Landroid/content/Context;

    iget-object v7, p0, Lov;->k:Lho;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljp;->e()I

    move-result v1

    invoke-virtual {v7}, Lho;->G()I

    move-result v0

    iget-object v8, p2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f0b050a

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    add-int v11, v1, v0

    if-nez v11, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lov;->a(ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;Ljava/lang/String;)V

    iget-object v0, p0, Lov;->l:Lhg;

    invoke-virtual {v0}, Lhg;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->I()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    :cond_1
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    const v3, 0x7f020323

    const v4, 0x7f0b01e4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v11, 0x1

    if-ne p1, v11, :cond_5

    if-lez v1, :cond_4

    const/4 v2, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v7}, Lho;->Y()I

    move-result v3

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v4

    if-eq v3, v4, :cond_b

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-virtual {v7, v3}, Lho;->l(I)V

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    if-eqz v8, :cond_8

    const-string v3, ""

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b050d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    invoke-static {}, Lov;->a()Lov;

    move-result-object v1

    iget-object v1, v1, Lov;->e:Lov$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lov$a;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lov$a;->a(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lov$a;->a(I)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_5
    const/4 v11, 0x2

    if-ne p1, v11, :cond_7

    if-lez v0, :cond_6

    const/4 v2, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b044b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v12, v1

    move-object v1, v0

    move v0, v12

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_12

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    if-eqz v5, :cond_9

    const-string v3, "-1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_9
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0510

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b050d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b050d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b050d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b050e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b050f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    if-nez v0, :cond_d

    new-instance v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    :cond_d
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    const v3, 0x7f020323

    const v4, 0x7f0b01e4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    if-nez v0, :cond_f

    new-instance v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    :cond_f
    sget-object v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    const v3, 0x7f020238

    const v4, 0x7f0b01e4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lov;->o:Z

    goto/16 :goto_1

    :cond_11
    move-object v3, v5

    goto/16 :goto_4

    :cond_12
    move v0, v2

    move-object v1, v3

    move v2, v4

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;LQQPIM/CloudInfo;)V
    .locals 7

    const/16 v6, 0xe

    invoke-virtual {p2}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x7f02023f

    iput v2, v1, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    invoke-virtual {v0}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/TransparentActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "key_cloud_info"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "key_tips_warning"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v0, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v6}, Lov$a;->a(I)V

    const/4 v0, 0x4

    iput v0, v1, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v6, v1}, Lov$a;->a(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xa

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x7f02023f

    iput v1, v0, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/SyncAssistantActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "extra_back_to_main"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    invoke-virtual {v1, v6}, Lov$a;->a(I)V

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v1, p0, Lov;->e:Lov$a;

    invoke-virtual {v1, v6, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x7f02024d

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const v3, 0x7f0b0579

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const v3, 0x7f0b057a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "taskName"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iput v6, v0, Landroid/app/Notification;->number:I

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    const-string v2, "taskType"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    add-int/lit16 v2, v2, 0xaa

    invoke-virtual {v1, v2}, Lov$a;->a(I)V

    iget-object v1, p0, Lov;->e:Lov$a;

    const-string v2, "taskType"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    add-int/lit16 v2, v2, 0xaa

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const-string v1, "taskType"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit16 v1, v1, 0xaa

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 9

    const/16 v8, 0x33

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_CALL_LOG_ENTITY"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "extra_back_to_main"

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x800

    invoke-static {v0, v7, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x7f02023a

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const v3, 0x7f0b064e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const v4, 0x7f0b064f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b0651

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iput v6, v1, Landroid/app/Notification;->number:I

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v8}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v8, v1}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final a(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lov;->k:Lho;

    invoke-virtual {v2}, Lho;->av()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lov;->k:Lho;

    invoke-virtual {v2}, Lho;->aw()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lov;->p:Z

    return-void

    :pswitch_0
    iget-object v2, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v2, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lov;->g:Landroid/media/Ringtone;

    iget-object v0, p0, Lov;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lov;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v2, p0, Lov;->d:Landroid/media/AudioManager;

    invoke-virtual {v2, v0, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    iget-object v2, p0, Lov;->i:Landroid/os/Vibrator;

    const/4 v3, 0x3

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lov;->k:Lho;

    invoke-virtual {v3}, Lho;->ax()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_1
    :pswitch_3
    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    iget-object v2, p0, Lov;->k:Lho;

    invoke-virtual {v2}, Lho;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v0, v2}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lov;->d:Landroid/media/AudioManager;

    iget v4, p0, Lov;->b:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v3, p0, Lov;->d:Landroid/media/AudioManager;

    iget v4, p0, Lov;->c:I

    invoke-virtual {v3, v0, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-direct {p0}, Lov;->k()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lov;->d()V

    goto :goto_1

    :pswitch_6
    iget-object v3, p0, Lov;->d:Landroid/media/AudioManager;

    iget v4, p0, Lov;->b:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v3, p0, Lov;->d:Landroid/media/AudioManager;

    iget v4, p0, Lov;->c:I

    invoke-virtual {v3, v0, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-direct {p0}, Lov;->k()V

    invoke-virtual {p0}, Lov;->d()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 0x8
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 2

    iget-boolean v0, p0, Lov;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lov;->a(ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const v1, 0x7f020239

    iput v1, v0, Landroid/app/Notification;->icon:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x800

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const v4, 0x7f0b0452

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    new-instance v0, Lpa;

    invoke-direct {v0, p0}, Lpa;-><init>(Lov;)V

    invoke-virtual {v0}, Lpa;->start()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/high16 v7, 0x1000

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/WifiApproveDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "Location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "FromInternalUI"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "WifiSsid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x7f020241

    iput v2, v1, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const v3, 0x7f0b0597

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b03ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lmu;)V
    .locals 10

    const/16 v9, 0x18

    const/4 v8, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v1, p2}, La;->a(Landroid/content/Context;Lmu;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v3, 0x7f02024d

    iput v3, v2, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    iget v3, v2, Landroid/app/Notification;->defaults:I

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b04bf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0500

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lmu;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x7f0b04ff

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lov;->j:Landroid/content/Context;

    const/high16 v6, 0x1000

    invoke-static {v5, v8, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b03ef

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v2, v0, Lkv;->d:Lkw;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lov;->e:Lov$a;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {v2, v0}, Lov$a;->a(I)V

    goto :goto_0
.end method

.method public final a(Lkv;)V
    .locals 11

    if-nez p1, :cond_0

    iget-object v0, p0, Lov;->e:Lov$a;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

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

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030065

    invoke-direct {v3, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v0, 0x1

    const-wide/16 v5, 0x0

    iget-wide v7, p1, Lkv;->mCurrentSize:J

    add-long/2addr v5, v7

    iget-wide v7, p1, Lkv;->mSize:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    const-wide/16 v0, 0x1

    iget-wide v7, p1, Lkv;->mSize:J

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
    const v1, 0x7f080022

    invoke-virtual {v3, v1, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f080110

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    const v1, 0x7f08010f

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

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const/16 v1, 0x32

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "IS_FROM_NOTIFICATION"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_back_to_main"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x800

    invoke-static {v0, v1, v4, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v1, p1, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1, v2}, Lov$a;->a(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lov;->o:Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lov;->m:Z

    iput-boolean p2, p0, Lov;->n:Z

    iget-boolean v0, p0, Lov;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    :cond_0
    iget-boolean v0, p0, Lov;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    :cond_1
    return-void
.end method

.method public final a(ZZZ)V
    .locals 6

    const/4 v1, 0x0

    const v5, 0x7f0b0515

    if-eqz p3, :cond_8

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->f()Z

    move-result v0

    new-instance v2, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Liy;->a:Landroid/content/SharedPreferences;

    const-string v3, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v4

    invoke-virtual {v4}, Lnp;->f()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lov;->o:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2, v1, v0}, Lov;->a(ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_6

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    if-eqz p2, :cond_3

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0518

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    if-eqz p2, :cond_6

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0516

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0517

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v2, -0x1

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method public final a([J)V
    .locals 2

    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method public final b(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareUpdateActivity;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "IS_FROM_NOTIFICATION"

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra_back_to_main"

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {v1, v7, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f02023f

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const v3, 0x7f0b0730

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    iput v2, v0, Landroid/app/Notification;->defaults:I

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x19

    iput v2, v0, Landroid/app/Notification;->flags:I

    const v2, -0xff0100

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x1f4

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x7d0

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const v4, 0x7f0b0731

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b072f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v2, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lov;->m:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b040d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->ac()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b051c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-le v1, v9, :cond_3

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b051b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    iget-object v5, p0, Lov;->j:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "tab_name"

    const-string v7, "tab_call"

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "is_from_notification"

    invoke-virtual {v6, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "extra_back_to_main"

    invoke-virtual {v6, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x800

    invoke-static {v4, v2, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    const v6, 0x7f02023b

    iput v6, v5, Landroid/app/Notification;->icon:I

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget v6, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/app/Notification;->defaults:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b051a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v5, v6, v3, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Landroid/app/Notification;->when:J

    if-le v1, v9, :cond_4

    move v0, v1

    :goto_2
    iput v0, v5, Landroid/app/Notification;->number:I

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v10}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v10, v5}, Lov$a;->a(ILandroid/app/Notification;)V

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0, v1}, Lho;->o(I)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b040f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "come_from"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/MarketActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_back_to_main"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "IS_FROM_NOTIFICATION"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f0201f0

    iput v1, v0, Landroid/app/Notification;->icon:I

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x19

    iput v1, v0, Landroid/app/Notification;->flags:I

    const v1, -0xff0100

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    const/16 v1, 0x1f4

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 v1, 0x7d0

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/app/Notification;->when:J

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0300ec

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v3, 0x7f08030b

    invoke-virtual {v1, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f08030c

    invoke-virtual {v1, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lov;->e:Lov$a;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lmu;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x18

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v1, p2}, La;->a(Landroid/content/Context;Lmu;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v3, 0x7f02024d

    iput v3, v2, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    iget v3, v2, Landroid/app/Notification;->defaults:I

    const/4 v3, -0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b04bf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b02c9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lmu;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const v5, 0x7f0b02ca

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lov;->j:Landroid/content/Context;

    const/high16 v6, 0x1000

    invoke-static {v5, v9, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b03ef

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    const v12, 0x7f0b04f7

    const/4 v11, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lkv;->d:Lkw;

    invoke-virtual {v4}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    iget-object v4, v0, Lkv;->d:Lkw;

    invoke-virtual {v4}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lov;->j:Landroid/content/Context;

    iget-object v7, v0, Lkv;->d:Lkw;

    invoke-virtual {v7}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    iget-object v8, p0, Lov;->j:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v9, v8, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "IS_FROM_NOTIFICATION"

    invoke-virtual {v9, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v8, "extra_back_to_main"

    invoke-virtual {v9, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v8, 0x800

    invoke-static {v6, v7, v9, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {v3, v0, v2}, Lov$a;->a(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lov;->e:Lov$a;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-virtual {v3, v2}, Lov$a;->a(I)V

    goto/16 :goto_1
.end method

.method public final b(Lkv;)V
    .locals 10

    const v4, 0x7f0b04f7

    const/4 v9, 0x1

    iget-object v0, p1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    iget-object v5, p1, Lkv;->d:Lkw;

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lov;->j:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "IS_FROM_NOTIFICATION"

    invoke-virtual {v7, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "extra_back_to_main"

    invoke-virtual {v7, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x800

    invoke-static {v4, v5, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lov;->e:Lov$a;

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object v1, p0, Lov;->e:Lov$a;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {v1, v0}, Lov$a;->a(I)V

    goto/16 :goto_0
.end method

.method public final b(Z)V
    .locals 11

    const/high16 v10, 0x800

    const/16 v9, 0x13

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    const v0, 0x7f02023d

    iput v0, v2, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->bM()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const v1, 0x7f0b087f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "notification_screenshot_action"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v3, v7, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_0
    const/4 v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x29

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v9, v2}, Lov$a;->a(ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const v1, 0x7f0b0883

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const-string v4, "IS_FROM_NOTIFICATION"

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotListActivity;

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_back_to_main"

    invoke-virtual {v5, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v1, v7, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v9}, Lov$a;->a(I)V

    goto :goto_1
.end method

.method public final c()V
    .locals 8

    const v5, 0x7f0b054d

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const-string v1, "IS_FROM_NOTIFICATION"

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "AUTO_SCAN"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_back_to_main"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    const/high16 v1, 0x800

    invoke-static {v0, v6, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x7f02024d

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b054e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    iput v6, v1, Landroid/app/Notification;->number:I

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v7}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v7, v1}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0, p1}, Lho;->N(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "phone_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contact_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareMoveActivity;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "IS_FROM_NOTIFICATION"

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extra_back_to_main"

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x800

    invoke-static {v1, v7, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f02023f

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    const v3, 0x7f0b0896

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    iput v2, v0, Landroid/app/Notification;->defaults:I

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x19

    iput v2, v0, Landroid/app/Notification;->flags:I

    const v2, -0xff0100

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x1f4

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x7d0

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const v4, 0x7f0b0897

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b0898

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final c(Lkv;)V
    .locals 10

    const v4, 0x7f0b0458

    const/4 v9, 0x1

    iget-object v0, p1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    iget-object v5, p1, Lkv;->d:Lkw;

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v6, p0, Lov;->j:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v7, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "IS_FROM_NOTIFICATION"

    invoke-virtual {v7, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "extra_back_to_main"

    invoke-virtual {v7, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x800

    invoke-static {v4, v5, v7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lov;->e:Lov$a;

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void

    :cond_1
    iget-object v1, p0, Lov;->e:Lov$a;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-virtual {v1, v0}, Lov$a;->a(I)V

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 9

    const/4 v8, 0x1

    iget-boolean v0, p0, Lov;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const-string v4, "IS_FROM_NOTIFICATION"

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "password"

    const-string v7, "fromnotification"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Laai;->a()Laai;

    move-result-object v6

    invoke-virtual {v6}, Laai;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    const-class v6, Lcom/tencent/qqpimsecure/ui/activity/SecureSpaceActivity;

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "password"

    const-string v6, "-1"

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v5, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_back_to_main"

    invoke-virtual {v5, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x800

    invoke-static {v1, v2, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f02023c

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v2, p0, Lov;->k:Lho;

    invoke-virtual {v2}, Lho;->C()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v2, 0x4

    iput v2, v0, Landroid/app/Notification;->defaults:I

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x39

    iput v2, v0, Landroid/app/Notification;->flags:I

    const v2, -0xff0100

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    const/16 v2, 0x1f4

    iput v2, v0, Landroid/app/Notification;->ledOnMS:I

    const/16 v2, 0x7d0

    iput v2, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v2, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->k:Lho;

    invoke-virtual {v3}, Lho;->F()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lov;->k:Lho;

    invoke-virtual {v4}, Lho;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lov;->e:Lov$a;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lov$a;->a(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    const-class v6, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionControlActivity;

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "SHORTCUT_TO_SECURE_SPACE"

    invoke-virtual {v5, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const v2, 0x7f02024d

    iput v2, v1, Landroid/app/Notification;->icon:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    const-string v2, "%s\'%s\'%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const v5, 0x7f0b04fe

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    iput v3, v1, Landroid/app/Notification;->defaults:I

    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x1000

    invoke-static {v3, v6, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lov;->j:Landroid/content/Context;

    const v5, 0x7f0b03ef

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lov;->l()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lov;->k()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lov;->l()V

    invoke-direct {p0}, Lov;->k()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v0, Low;

    invoke-direct {v0, p0}, Low;-><init>(Lov;)V

    invoke-virtual {v0}, Low;->start()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lov;->l()V

    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v0, Lox;

    invoke-direct {v0, p0}, Lox;-><init>(Lov;)V

    invoke-virtual {v0}, Lox;->start()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lov;->k()V

    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v0, Loy;

    invoke-direct {v0, p0}, Loy;-><init>(Lov;)V

    invoke-virtual {v0}, Loy;->start()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lov;->l()V

    invoke-direct {p0}, Lov;->k()V

    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    new-instance v0, Loz;

    invoke-direct {v0, p0}, Loz;-><init>(Lov;)V

    invoke-virtual {v0}, Loz;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 0x8
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x8
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lov;->p:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lov;->p:Z

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->av()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lov;->k:Lho;

    invoke-virtual {v0}, Lho;->aw()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    iget v1, p0, Lov;->b:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    iget v1, p0, Lov;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lov;->g:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lov;->g:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lov;->i:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    iget v1, p0, Lov;->b:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    iget-object v0, p0, Lov;->d:Landroid/media/AudioManager;

    iget v1, p0, Lov;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final g()V
    .locals 9

    const/16 v8, 0x9

    const/4 v0, 0x0

    const/4 v7, 0x1

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iget-object v1, p0, Lov;->j:Landroid/content/Context;

    iget-object v3, p0, Lov;->j:Landroid/content/Context;

    const-string v4, "IS_FROM_NOTIFICATION"

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/tencent/qqpimsecure/ui/activity/smscheck/SMSChargeCheckActivity;

    invoke-direct {v5, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "isfilter"

    invoke-virtual {v5, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_back_to_main"

    invoke-virtual {v5, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x800

    invoke-static {v1, v0, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget v1, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v2, Landroid/app/Notification;->defaults:I

    const/16 v1, 0x10

    iput v1, v2, Landroid/app/Notification;->flags:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    const v1, 0x7f02023e

    iput v1, v2, Landroid/app/Notification;->icon:I

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lov;->k:Lho;

    invoke-virtual {v1}, Lho;->ad()I

    move-result v1

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v5

    iget-object v5, v5, Ljo;->b:Landroid/content/SharedPreferences$Editor;

    const-string v6, "isshowtip"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lov;->k:Lho;

    invoke-virtual {v5, v1}, Lho;->p(I)V

    if-le v1, v7, :cond_0

    move v0, v1

    :cond_0
    iput v0, v2, Landroid/app/Notification;->number:I

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0b0512

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0513

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0514

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-virtual {v2, v0, v6, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v8}, Lov$a;->a(I)V

    iget-object v0, p0, Lov;->e:Lov$a;

    invoke-virtual {v0, v8, v2}, Lov$a;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lov;->e:Lov$a;

    iget-object v0, v0, Lov$a;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lov;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationDialog;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lov;->e:Lov$a;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lov$a;->a(I)V

    return-void
.end method
