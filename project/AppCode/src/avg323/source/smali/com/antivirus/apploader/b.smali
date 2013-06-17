.class Lcom/antivirus/apploader/b;
.super Lcom/antivirus/apploader/c;


# instance fields
.field final synthetic a:Lcom/antivirus/apploader/a;


# direct methods
.method constructor <init>(Lcom/antivirus/apploader/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/apploader/b;->a:Lcom/antivirus/apploader/a;

    invoke-direct {p0, p1, p2}, Lcom/antivirus/apploader/c;-><init>(Lcom/antivirus/apploader/a;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-class v2, Lcom/antivirus/apploader/AppLoaderAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.droidsec.apploaderalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lcom/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {}, Lcom/antivirus/apploader/AppLoaderService;->a()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private a(J)V
    .locals 7

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lcom/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private b()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "plugged"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    :goto_2
    return v1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Lcom/antivirus/apploader/f;

    invoke-direct {v4}, Lcom/antivirus/apploader/f;-><init>()V

    const-string v0, "no"

    iget-object v3, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v5, "nevercomunicate"

    const-string v6, "no"

    invoke-virtual {v4, v3, v5, v6}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->d(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v3, "trys"

    const-string v5, "0"

    invoke-virtual {v4, v0, v3, v5}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0}, Lcom/antivirus/apploader/b;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    if-ge v5, v0, :cond_a

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->e(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-lez v3, :cond_10

    new-instance v0, Lcom/antivirus/apploader/g;

    invoke-direct {v0}, Lcom/antivirus/apploader/g;-><init>()V

    iget-object v3, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v3, v6}, Lcom/antivirus/apploader/g;->a(Landroid/content/Context;Ljava/util/TreeMap;)Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_3

    const-string v0, "DONOTCOMMAGAIN"

    :goto_1
    if-eqz v0, :cond_6

    const-string v7, "OK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v0, "NextCommunication"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v8, "nextcom"

    invoke-virtual {v4, v7, v8, v0}, Lcom/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "APKsToSend"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    if-eqz v0, :cond_4

    const-string v7, "\\|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    array-length v8, v7

    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_4

    aget-object v9, v7, v0

    const-string v10, "~~"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    array-length v10, v9

    if-ne v10, v12, :cond_2

    const/4 v10, 0x0

    aget-object v10, v9, v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    aget-object v10, v9, v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v3, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "Status"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v4, v0, v6, v7}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/util/TreeMap;I)V

    :cond_5
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-virtual {v4, v0, v3, v6}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/util/TreeMap;I)V

    :cond_6
    :goto_3
    const-string v0, "no"

    iget-object v3, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v6, "nevercomunicate"

    const-string v7, "no"

    invoke-virtual {v4, v3, v6, v7}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v6, "trys"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v6, v7}, Lcom/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0}, Lcom/antivirus/apploader/b;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/antivirus/apploader/d;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v3, v0}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v3, "trys"

    const-string v6, "0"

    invoke-virtual {v4, v0, v3, v6}, Lcom/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_7
    const-wide/16 v6, 0x61a8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    goto :goto_4

    :cond_8
    :try_start_2
    const-string v3, "ERROR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    const-string v3, "DONOTCOMMAGAIN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v3, "nevercomunicate"

    const-string v6, "yes"

    invoke-virtual {v4, v0, v3, v6}, Lcom/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lcom/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-class v3, Lcom/antivirus/apploader/AppLoaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_b
    move v1, v2

    goto :goto_5

    :cond_c
    :try_start_3
    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/antivirus/apploader/f;->c(Landroid/content/Context;)Z

    :cond_d
    const/4 v0, 0x6

    if-ge v5, v0, :cond_a

    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "nextcom"

    const-string v2, "86400000"

    invoke-virtual {v4, v0, v1, v2}, Lcom/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "86400000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/antivirus/apploader/b;->a()V

    goto :goto_6

    :cond_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/antivirus/apploader/b;->a(J)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lcom/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :cond_10
    move-object v3, v0

    goto/16 :goto_0
.end method
