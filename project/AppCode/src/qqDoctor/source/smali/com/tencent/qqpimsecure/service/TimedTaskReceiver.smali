.class public Lcom/tencent/qqpimsecure/service/TimedTaskReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/16 v10, 0xc

    const/4 v9, 0x7

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v1, 0x0

    const-string v0, "taskType"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "taskName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "taskDes"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "taskDesStatus"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "^^ type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " des "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " stauts "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, p2}, Lov;->a(Landroid/content/Intent;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lho;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, p2}, Lov;->a(Landroid/content/Intent;)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v1, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-virtual {v0, v8, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-virtual {v0, v8, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v1, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-virtual {v0, v8, v8}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    invoke-virtual {v0, v8, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0, p2}, Lov;->a(Landroid/content/Intent;)V

    if-nez v4, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    if-ne v4, v8, :cond_2

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ^^\u3000is schedule app ? false"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iget-object v2, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v3, "scanPlan"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Ljl;->a()[I

    move-result-object v3

    iget-object v4, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v5, "scanTimeHour"

    const/16 v6, 0x11

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v5, "scanTimeMini"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v6, v10, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_0

    if-nez v2, :cond_5

    move v0, v1

    :goto_1
    array-length v1, v3

    if-ge v0, v1, :cond_4

    aget v1, v3, v0

    if-ne v1, v8, :cond_3

    add-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x7

    invoke-virtual {v6, v9, v1}, Ljava/util/Calendar;->set(II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :cond_5
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    invoke-virtual {v0}, Lov;->c()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
