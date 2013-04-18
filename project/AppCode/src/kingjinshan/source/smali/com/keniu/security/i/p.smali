.class final Lcom/keniu/security/i/p;
.super Landroid/os/Handler;
.source "FileWatchManager.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/i/o;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/o;)V
    .locals 0
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 526
    iget-object v0, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0734

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 528
    const-string v0, ""

    .line 529
    const-string v1, ""

    .line 540
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 542
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v10, :cond_0

    .line 545
    iget v3, p1, Landroid/os/Message;->arg2:I

    packed-switch v3, :pswitch_data_1

    move-object v3, v1

    move-object v4, v0

    move-object v0, v9

    move-object v1, v9

    .line 570
    :goto_1
    new-instance v5, Landroid/app/Notification;

    const v6, 0x7f0200f9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 578
    const/16 v4, 0x10

    iput v4, v5, Landroid/app/Notification;->flags:I

    .line 579
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 580
    iget-object v6, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v3}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0b0728

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 585
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 605
    :goto_2
    iget-object v1, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 607
    iget-object v3, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v3}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v5, v3, v2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 609
    iget-object v0, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->e(Lcom/keniu/security/i/o;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/keniu/security/i/o;->f:I

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 612
    iget-object v0, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->f(Lcom/keniu/security/i/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/keniu/security/i/q;

    invoke-direct {v1, p0}, Lcom/keniu/security/i/q;-><init>(Lcom/keniu/security/i/p;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 548
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/i/b;

    .line 549
    iget-object v1, v0, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    .line 550
    iget-object v3, v0, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    .line 551
    iget-object v4, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v4}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0725

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    aput-object v6, v5, v11

    iget-object v6, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v6}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b072b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 554
    iget-object v5, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v5}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0726

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    aput-object v0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    .line 557
    goto/16 :goto_1

    .line 559
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/malware/AppMettle;

    .line 560
    iget-object v1, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 561
    iget-object v3, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 562
    iget-object v4, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v4}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0725

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v7}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v11

    iget-object v6, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v7}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v6}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b072b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 567
    iget-object v5, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v5}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0726

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v7}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto/16 :goto_1

    .line 589
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v3}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0b0727

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    iget-object v3, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v3, v1}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 596
    if-eqz v3, :cond_2

    .line 597
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v6, v1}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 603
    :goto_3
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 600
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "\u65e0\u6cd5\u542f\u52a8\u6b64\u5e94\u7528"

    invoke-static {v1, v3, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object v1, v9

    goto :goto_3

    .line 632
    :pswitch_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    packed-switch v3, :pswitch_data_2

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    move-object v6, v0

    move-object v0, v9

    move-object v1, v9

    .line 661
    :goto_4
    new-instance v7, Landroid/app/Notification;

    const v8, 0x7f0200f8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v7, v8, v6, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 669
    const/16 v6, 0x22

    iput v6, v7, Landroid/app/Notification;->flags:I

    .line 672
    new-instance v6, Landroid/content/Intent;

    iget-object v8, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v8}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/keniu/security/malware/TransparentVircusAcitvity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 674
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 675
    const-string v9, "notificationID"

    sget v10, Lcom/keniu/security/i/o;->e:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    const-string v9, "packName"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v4, "watcherModel"

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    const-string v4, "malName"

    invoke-virtual {v8, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v1, "softName"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "filePath"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v6, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 682
    const/high16 v0, 0x1000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    iget-object v0, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/keniu/security/i/o;->e:I

    invoke-static {v0, v1, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1, v2, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 687
    iget-object v0, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->e(Lcom/keniu/security/i/o;)Landroid/app/NotificationManager;

    move-result-object v0

    sget v1, Lcom/keniu/security/i/o;->e:I

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 634
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/i/b;

    .line 635
    iget-object v1, v0, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    .line 636
    iget-object v3, v0, Lcom/keniu/security/i/b;->d:Ljava/lang/String;

    .line 637
    iget-object v4, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    .line 638
    iget-object v5, v0, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    .line 639
    iget-object v6, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v6}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0725

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    aput-object v8, v7, v11

    iget-object v8, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v8}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b072a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 642
    iget-object v7, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v7}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0729

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    aput-object v0, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, v0

    move-object v0, v13

    .line 645
    goto/16 :goto_4

    .line 647
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/keniu/security/malware/AppMettle;

    .line 648
    iget-object v1, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 649
    iget-object v1, v0, Lcom/keniu/security/malware/AppMettle;->b:Lcom/keniu/security/d/d;

    iget-object v4, v1, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    .line 650
    iget-object v1, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v5}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 652
    iget-object v5, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 653
    iget-object v6, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v6}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0725

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v9}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v11

    iget-object v8, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v9}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v8}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b072a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 658
    iget-object v7, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v7}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b0729

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/keniu/security/i/p;->a:Lcom/keniu/security/i/o;

    invoke-static {v9}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v1

    move-object v1, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v0

    move-object v0, v13

    goto/16 :goto_4

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 545
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 632
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
