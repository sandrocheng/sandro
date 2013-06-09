.class final Lorg/antivirus/apploader/b;
.super Lorg/antivirus/apploader/c;


# instance fields
.field final synthetic a:Lorg/antivirus/apploader/a;


# direct methods
.method constructor <init>(Lorg/antivirus/apploader/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/apploader/b;->a:Lorg/antivirus/apploader/a;

    invoke-direct {p0, p1, p2}, Lorg/antivirus/apploader/c;-><init>(Lorg/antivirus/apploader/a;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-class v2, Lorg/antivirus/apploader/AppLoaderAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.droidsec.apploaderalarm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private a()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

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
    iget-object v3, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

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
.method public final run()V
    .locals 14

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v8, Lorg/antivirus/apploader/f;

    invoke-direct {v8}, Lorg/antivirus/apploader/f;-><init>()V

    const-string v0, "no"

    iget-object v1, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v2, "nevercomunicate"

    const-string v3, "no"

    invoke-virtual {v8, v1, v2, v3}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v8, v0}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v1, Lorg/antivirus/apploader/e;

    const-string v2, "uppdb"

    invoke-direct {v1, v0, v2}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    move-result-object v4

    :try_start_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v1, "_value"

    const-string v2, "yes"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_key"

    const-string v2, "populated"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const-string v1, "_value"

    const-string v2, "0"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_key"

    const-string v2, "trys"

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_11

    move-result-object v10

    move-object v1, v5

    move-object v3, v5

    :goto_0
    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    :try_start_4
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    new-instance v11, Ljava/io/File;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v11}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2d

    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    :try_start_5
    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/a/a/a/b/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "sha"

    invoke-virtual {v9, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "basepack"

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sourcedir"

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v9, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "version"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "up"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "signatures"

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_0
    move-object v0, v1

    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_1
    :goto_2
    if-eqz v1, :cond_b

    :try_start_7
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    :goto_3
    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :cond_2
    :goto_4
    if-eqz v1, :cond_b

    :try_start_9
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :cond_3
    :goto_6
    if-eqz v2, :cond_4

    :try_start_b
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    :cond_4
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception v0

    move-object v0, v4

    move-object v3, v2

    :goto_7
    if-eqz v0, :cond_5

    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_6
    if-eqz v1, :cond_7

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    :try_start_e
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    :cond_8
    :goto_9
    :try_start_f
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "trys"

    const-string v2, "0"

    invoke-virtual {v8, v0, v1, v2}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0}, Lorg/antivirus/apploader/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x5

    if-ge v2, v0, :cond_14

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v8, v0}, Lorg/antivirus/apploader/f;->d(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_2c

    new-instance v0, Lorg/antivirus/apploader/g;

    invoke-direct {v0}, Lorg/antivirus/apploader/g;-><init>()V

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lorg/antivirus/apploader/g;->a(Landroid/content/Context;Ljava/util/TreeMap;)Ljava/util/HashMap;

    move-result-object v0

    move-object v1, v0

    :goto_a
    if-nez v1, :cond_15

    const-string v0, "DONOTCOMMAGAIN"

    :goto_b
    if-eqz v0, :cond_20

    const-string v4, "OK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v0, "NextCommunication"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v5, "nextcom"

    invoke-virtual {v8, v4, v5, v0}, Lorg/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v0, "APKsToSend"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    if-eqz v0, :cond_16

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    array-length v5, v4

    move v0, v7

    :goto_c
    if-ge v0, v5, :cond_16

    aget-object v9, v4, v0

    const-string v10, "~~"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    array-length v10, v9

    if-ne v10, v13, :cond_a

    const/4 v10, 0x0

    aget-object v10, v9, v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    aget-object v10, v9, v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v1, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_c
    :try_start_10
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    if-eqz v4, :cond_d

    :try_start_11
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_e

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :cond_e
    if-eqz v1, :cond_f

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    :cond_f
    :goto_d
    if-eqz v3, :cond_8

    :try_start_13
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v4, v5

    move-object v3, v5

    :goto_e
    if-eqz v4, :cond_10

    :try_start_14
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_11

    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    :cond_11
    if-eqz v5, :cond_12

    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :cond_12
    :goto_f
    if-eqz v3, :cond_13

    :try_start_16
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    :cond_13
    :goto_10
    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    :catch_3
    move-exception v0

    :cond_14
    :goto_11
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-class v3, Lorg/antivirus/apploader/AppLoaderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void

    :cond_15
    :try_start_18
    const-string v0, "Status"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_b

    :cond_16
    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v8, v0, v3, v4}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/util/TreeMap;I)V

    :cond_17
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v8, v0, v1, v3}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/util/TreeMap;I)V

    :cond_18
    move v1, v7

    :goto_12
    const-string v0, "no"

    iget-object v3, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v4, "nevercomunicate"

    const-string v5, "no"

    invoke-virtual {v8, v3, v4, v5}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v8, v0}, Lorg/antivirus/apploader/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v4, "trys"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v4, v5}, Lorg/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-direct {p0}, Lorg/antivirus/apploader/b;->a()Z

    move-result v3

    if-eqz v3, :cond_28

    if-nez v1, :cond_28

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lorg/antivirus/apploader/d;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v8, v3, v0}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v3, "trys"

    const-string v4, "0"

    invoke-virtual {v8, v0, v3, v4}, Lorg/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v8, v0}, Lorg/antivirus/apploader/f;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    move-result-object v0

    :cond_19
    const-wide/16 v3, 0x61a8

    :try_start_19
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_13

    :catch_4
    move-exception v3

    goto :goto_13

    :cond_1a
    :try_start_1a
    const-string v1, "ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v6

    goto :goto_12

    :cond_1b
    const-string v1, "DONOTCOMMAGAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "nevercomunicate"

    const-string v3, "yes"

    invoke-virtual {v8, v0, v1, v3}, Lorg/antivirus/apploader/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    :try_start_1b
    new-instance v1, Lorg/antivirus/apploader/e;

    const-string v3, "uppdb"

    invoke-direct {v1, v0, v3}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    move-result-object v0

    :try_start_1c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "drop table signatures"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    if-eqz v0, :cond_1c

    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1c
    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1d

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_1d
    :goto_15
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    :try_start_1e
    new-instance v1, Lorg/antivirus/apploader/e;

    const-string v3, "uppdb"

    invoke-direct {v1, v0, v3}, Lorg/antivirus/apploader/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v0, "VACUUM"

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6

    if-eqz v5, :cond_1e

    :try_start_1f
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1e
    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    :cond_1f
    :goto_16
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lorg/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;

    :cond_20
    move v1, v7

    goto/16 :goto_12

    :catch_5
    move-exception v0

    move-object v0, v5

    :goto_17
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_21
    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1d

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    goto :goto_15

    :catchall_2
    move-exception v0

    :goto_18
    if-eqz v5, :cond_22

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_22
    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_23

    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V

    :cond_23
    throw v0

    :catch_6
    move-exception v0

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_24
    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v0, :cond_1f

    iget-object v0, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v0}, Lorg/antivirus/apploader/e;->close()V

    goto :goto_16

    :catchall_3
    move-exception v0

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_25
    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    if-eqz v1, :cond_26

    iget-object v1, v8, Lorg/antivirus/apploader/f;->b:Lorg/antivirus/apploader/e;

    invoke-virtual {v1}, Lorg/antivirus/apploader/e;->close()V

    :cond_26
    throw v0

    :cond_27
    move v1, v6

    goto/16 :goto_14

    :cond_28
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    invoke-virtual {v8, v0}, Lorg/antivirus/apploader/f;->c(Landroid/content/Context;)Z

    :cond_29
    const/4 v0, 0x6

    if-ge v2, v0, :cond_14

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "nextcom"

    const-string v2, "86400000"

    invoke-virtual {v8, v0, v1, v2}, Lorg/antivirus/apploader/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "86400000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lorg/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {}, Lorg/antivirus/apploader/AppLoaderService;->a()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_11

    :cond_2a
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lorg/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_11

    :cond_2b
    iget-object v0, p0, Lorg/antivirus/apploader/b;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-direct {p0, v0}, Lorg/antivirus/apploader/b;->a(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    goto/16 :goto_11

    :catch_7
    move-exception v2

    goto/16 :goto_2

    :catch_8
    move-exception v2

    goto/16 :goto_4

    :catch_9
    move-exception v3

    goto/16 :goto_6

    :catch_a
    move-exception v0

    goto/16 :goto_d

    :catch_b
    move-exception v0

    goto/16 :goto_8

    :catch_c
    move-exception v0

    goto/16 :goto_9

    :catch_d
    move-exception v1

    goto/16 :goto_f

    :catch_e
    move-exception v1

    goto/16 :goto_10

    :catchall_4
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto/16 :goto_18

    :catch_f
    move-exception v1

    goto/16 :goto_17

    :catchall_5
    move-exception v0

    move-object v3, v5

    goto/16 :goto_e

    :catchall_6
    move-exception v2

    move-object v5, v0

    move-object v3, v1

    move-object v0, v2

    goto/16 :goto_e

    :catchall_7
    move-exception v0

    move-object v5, v1

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    move-object v5, v1

    move-object v3, v2

    goto/16 :goto_e

    :catch_10
    move-exception v0

    move-object v0, v5

    move-object v1, v5

    move-object v3, v5

    goto/16 :goto_7

    :catch_11
    move-exception v0

    move-object v0, v4

    move-object v1, v5

    move-object v3, v5

    goto/16 :goto_7

    :catch_12
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    goto/16 :goto_7

    :catch_13
    move-exception v0

    move-object v0, v4

    goto/16 :goto_7

    :catchall_9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_5

    :catch_14
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_3

    :cond_2c
    move-object v1, v5

    goto/16 :goto_a

    :cond_2d
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_1
.end method
