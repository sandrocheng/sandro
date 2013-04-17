.class public final Lui$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lui;


# direct methods
.method public constructor <init>(Lui;)V
    .locals 0

    iput-object p1, p0, Lui$a;->a:Lui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lui$a;->a:Lui;

    iget-object v0, v0, Lui;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lui$a;->a:Lui;

    iget-object v0, v0, Lui;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lml;

    iget-object v1, v0, Lml;->a:Lmk;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lml;->a:Lmk;

    iget v1, v1, Lmk;->protocolType:I

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lml;->a:Lmk;

    iget-object v1, v1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lml;->a:Lmk;

    iget-object v1, v1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, v0, Lml;->a:Lmk;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lml;->a:Lmk;

    iget-object v1, v1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lml;->a:Lmk;

    iget-object v0, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    :cond_2
    return-void

    :cond_3
    iget-object v1, v0, Lml;->a:Lmk;

    iget-object v1, v1, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->contentLocation:[B

    if-eqz v1, :cond_2

    iget-object v5, p0, Lui$a;->a:Lui;

    iget-object v1, v0, Lml;->a:Lmk;

    invoke-static {}, Lu;->a()Lu;

    move-result-object v6

    invoke-virtual {v6, v3}, Lu;->a(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v1, Lmk;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_4
    invoke-static {}, Lu;->a()Lu;

    move-result-object v6

    invoke-virtual {v6, v2}, Lu;->a(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v1, v1, Lmk;->f:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_1
    invoke-static {}, Lu;->a()Lu;

    move-result-object v6

    invoke-virtual {v6, v1}, Lu;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v5, Lui;->a:Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

    invoke-interface {v5, v1}, Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;->beginMmsConnectivity(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_5

    :try_start_0
    iget-object v1, p0, Lui$a;->a:Lui;

    iget v6, v1, Lui;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lui;->f:I

    iget-object v1, p0, Lui$a;->a:Lui;

    iget v1, v1, Lui;->f:I

    const/16 v6, 0x32

    if-ne v1, v6, :cond_8

    const/4 v5, -0x1

    iget-object v1, p0, Lui$a;->a:Lui;

    const/4 v6, 0x0

    iput v6, v1, Lui;->f:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "open mmsnet "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lui$a;->a:Lui;

    iget v6, v6, Lui;->f:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    if-nez v5, :cond_a

    iget-object v1, p0, Lui$a;->a:Lui;

    iput v3, v1, Lui;->f:I

    iget-object v5, p0, Lui$a;->a:Lui;

    iget-object v1, v5, Lui;->a:Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

    iget-object v6, v0, Lml;->a:Lmk;

    invoke-interface {v1, v6}, Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;->retrieveMmsContent(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    move-result v1

    iget-object v6, v5, Lui;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    iget-object v6, v5, Lui;->d:Ljava/util/HashSet;

    new-instance v7, Ljava/lang/Integer;

    iget v8, v0, Lml;->b:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_6

    iget v1, v0, Lml;->b:I

    new-instance v6, Ljp;

    const-string v7, "securesmslog"

    const-string v8, "secure_mms_pdu"

    const-string v9, "secure_mms_parts"

    invoke-direct {v6, v7, v8, v9}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljp;->a(I)Lmk;

    move-result-object v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_3
    if-nez v1, :cond_9

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_FAILURE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "id"

    iget v6, v0, Lml;->b:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "smslog"

    iget-object v0, v0, Lml;->a:Lmk;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0095

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lui$a;->a:Lui;

    iget-boolean v0, v0, Lui;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui$a;->a:Lui;

    iget-object v1, v0, Lui;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lui$a;->a:Lui;

    iget-object v0, v0, Lui;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lui$a;->a:Lui;

    iget-object v0, v0, Lui;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lui$a;->a:Lui;

    iget-object v1, v1, Lui;->d:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-wide/16 v6, 0x3e8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    new-instance v1, Lhq;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Lhq;-><init>(I)V

    iget-object v6, v0, Lml;->a:Lmk;

    iget-object v6, v6, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lhq;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljp;

    const-string v6, "securesmslog"

    const-string v7, "secure_mms_pdu"

    const-string v8, "secure_mms_parts"

    invoke-direct {v1, v6, v7, v8}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v6, v0, Lml;->a:Lmk;

    invoke-virtual {v1, v6}, Ljp;->b(Lmk;)Z

    iget-object v6, v0, Lml;->a:Lmk;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lmk;->date:J

    iget-object v6, v0, Lml;->a:Lmk;

    iget-object v6, v6, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iput-object v4, v6, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v6, v0, Lml;->a:Lmk;

    iput-boolean v3, v6, Lmk;->l:Z

    iget-object v6, v0, Lml;->a:Lmk;

    invoke-virtual {v1, v6, v2}, Ljp;->a(Lmk;Z)J

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_SUCCESS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "id"

    iget v7, v0, Lml;->b:I

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "smslog"

    iget-object v7, v0, Lml;->a:Lmk;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, v5, Lui;->a:Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;

    iget-object v0, v0, Lml;->a:Lmk;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IMmsTransactionHelper;->sendAcknowledgeInd(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)I

    goto/16 :goto_4

    :cond_a
    if-eq v5, v2, :cond_7

    if-eqz v5, :cond_7

    iget-object v1, p0, Lui$a;->a:Lui;

    iget-object v1, v1, Lui;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    iget-object v1, p0, Lui$a;->a:Lui;

    iget-object v1, v1, Lui;->d:Ljava/util/HashSet;

    new-instance v5, Ljava/lang/Integer;

    iget v6, v0, Lml;->b:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.tencent.qqpimsecure.service.ACTION_NOTIFY_SECURE_MMSPATR_DOWNLOAD_FAILURE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "id"

    iget v6, v0, Lml;->b:I

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "smslog"

    iget-object v0, v0, Lml;->a:Lmk;

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b
    move-object v1, v4

    goto/16 :goto_5

    :cond_c
    move v1, v3

    goto/16 :goto_3

    :cond_d
    move v1, v3

    goto/16 :goto_1
.end method
