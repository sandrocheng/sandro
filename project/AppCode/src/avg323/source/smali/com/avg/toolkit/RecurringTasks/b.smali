.class public Lcom/avg/toolkit/RecurringTasks/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/avg/toolkit/RecurringTasks/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JZZIZ)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/avg/toolkit/RecurringTasks/b;->b:J

    move/from16 v0, p7

    iput v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->c:I

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->d:Z

    iput-boolean p6, p0, Lcom/avg/toolkit/RecurringTasks/b;->e:Z

    new-instance v1, Lcom/avg/toolkit/RecurringTasks/a;

    new-instance v2, Lcom/avg/toolkit/RecurringTasks/c;

    invoke-direct {v2, p0, p1}, Lcom/avg/toolkit/RecurringTasks/c;-><init>(Lcom/avg/toolkit/RecurringTasks/b;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/avg/toolkit/RecurringTasks/a;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/avg/toolkit/RecurringTasks/b;->f:Lcom/avg/toolkit/RecurringTasks/a;

    const-string v1, "HB"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_re_last_succ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v4, v1, v7

    if-nez v4, :cond_3

    if-eqz p5, :cond_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v7, p0, Lcom/avg/toolkit/RecurringTasks/b;->b:J

    move-object v1, p1

    move/from16 v3, p7

    invoke-static/range {v1 .. v8}, Lcom/avg/toolkit/RecurringTasks/RecurringTaskAlarmReceiver;->a(Landroid/content/Context;Ljava/lang/String;IIJJ)V

    return-void

    :cond_1
    iget-wide v1, p0, Lcom/avg/toolkit/RecurringTasks/b;->b:J

    add-long/2addr v1, v5

    iget-boolean v4, p0, Lcom/avg/toolkit/RecurringTasks/b;->e:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    add-int/2addr v4, v7

    const v7, 0x2932e00

    rem-int/2addr v4, v7

    int-to-long v7, v4

    add-long/2addr v1, v7

    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_re_last_succ"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-wide v5, v1

    goto :goto_0

    :cond_3
    cmp-long v3, v1, v5

    if-gez v3, :cond_0

    iget-wide v3, p0, Lcom/avg/toolkit/RecurringTasks/b;->b:J

    add-long v5, v1, v3

    iget-boolean v1, p0, Lcom/avg/toolkit/RecurringTasks/b;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x2932e00

    rem-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v5, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "HB"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_re_last_succ"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-wide v4, p0, Lcom/avg/toolkit/RecurringTasks/b;->b:J

    add-long/2addr v4, v0

    iget-boolean v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x2932e00

    rem-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v4, v0

    :cond_0
    iget-object v1, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    iget v2, p0, Lcom/avg/toolkit/RecurringTasks/b;->c:I

    iget-wide v6, p0, Lcom/avg/toolkit/RecurringTasks/b;->b:J

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/avg/toolkit/RecurringTasks/RecurringTaskAlarmReceiver;->a(Landroid/content/Context;Ljava/lang/String;IIJJ)V

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    const-string v3, "__SAD"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/avg/toolkit/RecurringTasks/b;->d:Z

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/avg/toolkit/RecurringTasks/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/avg/toolkit/RecurringTasks/b;->f:Lcom/avg/toolkit/RecurringTasks/a;

    invoke-virtual {v1, p1}, Lcom/avg/toolkit/RecurringTasks/a;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->f:Lcom/avg/toolkit/RecurringTasks/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->f:Lcom/avg/toolkit/RecurringTasks/a;

    iget-boolean v0, v0, Lcom/avg/toolkit/RecurringTasks/a;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/avg/toolkit/RecurringTasks/b;->f:Lcom/avg/toolkit/RecurringTasks/a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
