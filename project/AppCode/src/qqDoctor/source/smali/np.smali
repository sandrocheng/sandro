.class public Lnp;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lnp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILcom/tencent/tmsecure/module/network/NetworkInfoEntity;)Landroid/app/Notification;
    .locals 11

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->f()Z

    move-result v4

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v2, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->f()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v0, Ljp;

    const-string v2, "smslog"

    const-string v3, "mms_pdu"

    const-string v6, "mms_parts"

    invoke-direct {v0, v2, v3, v6}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljp;->e()I

    move-result v6

    invoke-virtual {v1}, Lho;->G()I

    move-result v7

    invoke-virtual {v1}, Lho;->J()I

    move-result v8

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-gtz v6, :cond_0

    if-gtz v7, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v2, Landroid/app/Notification;->when:J

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x3400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-gtz v7, :cond_1

    if-lez v6, :cond_5

    :cond_1
    invoke-virtual {v1}, Lho;->ae()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ltz p2, :cond_5

    const/4 v1, 0x1

    move v3, v1

    :goto_1
    if-eqz v3, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "is_from_notification"

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_back_to_main"

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    const/4 v1, 0x0

    const/high16 v9, 0x800

    :try_start_0
    invoke-static {p1, v1, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/high16 v0, -0x4080

    if-eqz v5, :cond_a

    if-nez p3, :cond_2

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liu;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object p3

    :cond_2
    iget-wide v0, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-nez v0, :cond_7

    const/high16 v0, -0x4080

    :goto_4
    const v1, 0x3f666666

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_a

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_9

    const v1, 0x7f0300ce

    :goto_5
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v9, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_d

    const/4 v1, 0x1

    if-ne v8, v1, :cond_b

    const v1, 0x7f020324

    iput v1, v2, Landroid/app/Notification;->icon:I

    :goto_6
    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080250

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080251

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080252

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f08024f

    const v4, 0x7f020248

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_7
    invoke-static {}, Lgw;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const-string v4, "setTextSize"

    const/high16 v6, 0x4188

    invoke-virtual {v1, v3, v4, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    :goto_8
    if-eqz v5, :cond_15

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080254

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080257

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_9
    if-eqz v5, :cond_4

    const v1, 0x3f666666

    cmpg-float v1, v0, v1

    if-gez v1, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v3, v1

    :goto_a
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_18

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b009a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f080256

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f080256

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x3c23d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1a

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1a

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080255

    const/16 v3, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    :cond_3
    :goto_c
    invoke-static {}, Lgw;->e()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080256

    const-string v3, "setTextSize"

    const/high16 v4, 0x4130

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    :cond_4
    :goto_d
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_1

    :cond_6
    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_3

    :cond_7
    iget-wide v0, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-wide v9, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    sub-long/2addr v0, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v0, v9

    if-lez v0, :cond_8

    iget-wide v0, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    long-to-float v0, v0

    iget-wide v9, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    long-to-float v1, v9

    div-float/2addr v0, v1

    goto/16 :goto_4

    :cond_8
    const/high16 v0, 0x3f80

    goto/16 :goto_4

    :cond_9
    const v1, 0x7f0300cd

    goto/16 :goto_5

    :cond_a
    const v1, 0x7f0300cc

    goto/16 :goto_5

    :cond_b
    const/4 v1, 0x2

    if-ne v8, v1, :cond_c

    const v1, 0x7f020322

    iput v1, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_6

    :cond_c
    const v1, 0x7f020238

    iput v1, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_6

    :cond_d
    const v1, 0x7f020239

    iput v1, v2, Landroid/app/Notification;->icon:I

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080250

    const/16 v6, 0x8

    invoke-virtual {v1, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const v4, 0x7f0b03a3

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f08024f

    const v4, 0x7f020248

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_7

    :cond_e
    if-eqz v4, :cond_f

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const/high16 v4, 0x7f0b

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f08024f

    const v4, 0x7f020248

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_7

    :cond_f
    if-eqz v5, :cond_10

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f08024f

    const v4, 0x7f02024a

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const/high16 v4, 0x7f0b

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lgw;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const-string v4, "setTextSize"

    const/high16 v6, 0x4180

    invoke-virtual {v1, v3, v4, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_8

    :cond_12
    invoke-static {}, Lgw;->c()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const-string v4, "setTextSize"

    const/high16 v6, 0x4180

    invoke-virtual {v1, v3, v4, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lgw;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const-string v4, "setTextSize"

    const/high16 v6, 0x4180

    invoke-virtual {v1, v3, v4, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_8

    :cond_14
    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080253

    const-string v4, "setTextSize"

    const/high16 v6, 0x4170

    invoke-virtual {v1, v3, v4, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_8

    :cond_15
    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080254

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080257

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_9

    :cond_16
    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_17

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090047

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_a

    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090048

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_a

    :cond_18
    iget-wide v4, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0098

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iget-wide v8, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0099

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iget-wide v8, p3, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mTotalForMonth:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, La;->c(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_1a
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1b

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080255

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_c

    :cond_1b
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v3, 0x7f080255

    const/16 v4, 0x64

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto/16 :goto_c

    :cond_1c
    invoke-static {}, Lgw;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080256

    const-string v3, "setTextSize"

    const/high16 v4, 0x4120

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_d

    :cond_1d
    invoke-static {}, Lgw;->c()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080256

    const-string v3, "setTextSize"

    const/high16 v4, 0x4110

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_d

    :cond_1e
    invoke-static {}, Lgw;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f080256

    const-string v3, "setTextSize"

    const/high16 v4, 0x4120

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto/16 :goto_d
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0b025d

    return v0
.end method

.method public d()V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    new-instance v2, Loo;

    invoke-direct {v2, v1}, Loo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->setAresEngineFactor(Lcom/tencent/tmsecure/module/aresengine/AresEngineFactor;)V

    const-class v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/plugin/PluginManager;

    new-instance v1, Lye;

    invoke-direct {v1}, Lye;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/plugin/PluginManager;->setPluginControler(Lcom/tencent/tmsecure/module/plugin/AbsPluginControler;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "http://msm.qq.com/agreement/index_zhcn.jsp?pageNo=1&type=1"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "su"

    return-object v0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
