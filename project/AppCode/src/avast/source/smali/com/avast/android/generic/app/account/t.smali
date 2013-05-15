.class public Lcom/avast/android/generic/app/account/t;
.super Ljava/lang/Object;
.source "BackupChecker.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/avast/android/generic/ae;)Lcom/avast/android/generic/app/account/u;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {p0}, Lcom/avast/android/generic/f/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const/4 v4, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v5, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcom/avast/android/generic/ae;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 40
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 42
    new-instance v2, Ljava/io/File;

    const-string v8, "/system/etc/com.avast.android.antitheft.backup.enc"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v2, Lcom/avast/android/generic/app/account/v;->b:Lcom/avast/android/generic/app/account/v;

    const-string v6, "Backup not found"

    invoke-direct {v0, v2, v6}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3b

    .line 159
    if-eqz v3, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11

    .line 167
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 170
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12

    .line 175
    :cond_1
    :goto_1
    if-eqz v3, :cond_37

    .line 178
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13

    :goto_2
    move-object v1, v3

    .line 184
    :goto_3
    if-eqz v3, :cond_2

    .line 187
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_14

    .line 195
    :cond_2
    :goto_4
    :try_start_5
    const-string v1, "temp.xml"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_15

    .line 202
    :goto_5
    return-object v0

    .line 48
    :cond_3
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/com.avast.android.antitheft.backup.enc"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3b

    .line 49
    :try_start_7
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3c

    .line 53
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 54
    if-nez v8, :cond_7

    .line 56
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v6, Lcom/avast/android/generic/app/account/v;->c:Lcom/avast/android/generic/app/account/v;

    const-string v7, "Invalid ZIP format"

    invoke-direct {v0, v6, v7}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3d

    .line 159
    if-eqz v3, :cond_4

    .line 162
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16

    .line 167
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 170
    :try_start_a
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17

    .line 175
    :cond_5
    :goto_7
    if-eqz v3, :cond_36

    .line 178
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_18

    .line 184
    :goto_8
    if-eqz v3, :cond_6

    .line 187
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_19

    .line 195
    :cond_6
    :goto_9
    :try_start_d
    const-string v1, "temp.xml"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_5

    .line 196
    :catch_0
    move-exception v1

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    :goto_a
    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 59
    :cond_7
    :try_start_e
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 61
    const-string v4, "temp.xml"

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3d

    move-result-object v4

    .line 65
    :try_start_f
    invoke-static {v2, v0}, Lcom/avast/android/generic/c/c;->a(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)[B
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3e

    move-result-object v0

    .line 71
    :try_start_10
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 73
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3e

    .line 75
    const/4 v5, 0x0

    .line 77
    :try_start_11
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3d

    move-result-object v4

    .line 78
    :try_start_12
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3f

    .line 80
    :cond_8
    :goto_b
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->available()I

    move-result v0

    if-lez v0, :cond_15

    .line 82
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    .line 85
    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 87
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_b

    .line 152
    :catch_1
    move-exception v0

    move-object v5, v4

    move-object v6, v3

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    .line 154
    :goto_c
    :try_start_14
    const-string v0, "AvastBackupGeneric"

    const-string v7, "Invalid backup format"

    invoke-static {v0, v7, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v7, Lcom/avast/android/generic/app/account/v;->e:Lcom/avast/android/generic/app/account/v;

    invoke-static {p0, v1}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 159
    if-eqz v6, :cond_9

    .line 162
    :try_start_15
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 167
    :cond_9
    :goto_d
    if-eqz v4, :cond_a

    .line 170
    :try_start_16
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 175
    :cond_a
    :goto_e
    if-eqz v2, :cond_38

    .line 178
    :try_start_17
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 184
    :goto_f
    if-eqz v3, :cond_b

    .line 187
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    .line 195
    :cond_b
    :goto_10
    :try_start_19
    const-string v1, "temp.xml"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    goto/16 :goto_5

    .line 196
    :catch_2
    move-exception v1

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    goto/16 :goto_a

    .line 66
    :catch_3
    move-exception v0

    .line 67
    :try_start_1a
    const-string v6, "AvastBackupGeneric"

    const-string v7, "Invalid backup format"

    invoke-static {v6, v7, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v6, Lcom/avast/android/generic/app/account/v;->c:Lcom/avast/android/generic/app/account/v;

    const-string v7, "Decryption failed"

    invoke-direct {v0, v6, v7}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3e

    .line 159
    if-eqz v4, :cond_c

    .line 162
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1a

    .line 167
    :cond_c
    :goto_11
    if-eqz v2, :cond_d

    .line 170
    :try_start_1c
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1b

    .line 175
    :cond_d
    :goto_12
    if-eqz v3, :cond_35

    .line 178
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1c

    .line 184
    :goto_13
    if-eqz v3, :cond_e

    .line 187
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1d

    .line 195
    :cond_e
    :goto_14
    :try_start_1f
    const-string v1, "temp.xml"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4

    goto/16 :goto_5

    .line 196
    :catch_4
    move-exception v1

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    goto/16 :goto_a

    .line 89
    :cond_f
    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    .line 91
    :try_start_20
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 92
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    goto/16 :goto_b

    .line 159
    :catchall_0
    move-exception v0

    move-object v6, v3

    :goto_15
    if-eqz v6, :cond_10

    .line 162
    :try_start_21
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8

    .line 167
    :cond_10
    :goto_16
    if-eqz v2, :cond_11

    .line 170
    :try_start_22
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9

    .line 175
    :cond_11
    :goto_17
    if-eqz v1, :cond_39

    .line 178
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_a

    .line 184
    :goto_18
    if-eqz v3, :cond_12

    .line 187
    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_b

    .line 195
    :cond_12
    :goto_19
    :try_start_25
    const-string v1, "temp.xml"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c

    .line 159
    :goto_1a
    throw v0

    .line 93
    :cond_13
    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    .line 95
    :try_start_26
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 96
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 97
    :cond_14
    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 99
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 100
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 103
    :cond_15
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1

    .line 105
    const/4 v4, 0x0

    .line 109
    :try_start_27
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_5
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_6

    .line 115
    :goto_1b
    :try_start_28
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    invoke-static {v0}, Lcom/avast/android/generic/app/account/t;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 120
    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 122
    new-instance v1, Lcom/avast/android/generic/app/account/u;

    sget-object v6, Lcom/avast/android/generic/app/account/v;->d:Lcom/avast/android/generic/app/account/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current state does not contain backup key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_6

    .line 159
    if-eqz v3, :cond_17

    .line 162
    :try_start_29
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1e

    .line 167
    :cond_17
    :goto_1c
    if-eqz v2, :cond_18

    .line 170
    :try_start_2a
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_1f

    .line 175
    :cond_18
    :goto_1d
    if-eqz v3, :cond_34

    .line 178
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_20

    :goto_1e
    move-object v0, v3

    .line 184
    :goto_1f
    if-eqz v3, :cond_19

    .line 187
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_21

    .line 195
    :cond_19
    :goto_20
    :try_start_2d
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_22

    :goto_21
    move-object v0, v1

    .line 122
    goto/16 :goto_5

    .line 110
    :catch_5
    move-exception v0

    .line 112
    :try_start_2e
    const-string v1, "AvastBackupGeneric"

    const-string v8, "Can not delete temp file"

    invoke-static {v1, v8, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 152
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v4, v2

    move-object v5, v3

    move-object v6, v3

    move-object v2, v3

    goto/16 :goto_c

    .line 125
    :cond_1a
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/avast/android/generic/app/account/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    .line 127
    new-instance v1, Lcom/avast/android/generic/app/account/u;

    sget-object v8, Lcom/avast/android/generic/app/account/v;->d:Lcom/avast/android/generic/app/account/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current state does not equal backup key value ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_6
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_6

    .line 159
    if-eqz v3, :cond_1b

    .line 162
    :try_start_2f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_23

    .line 167
    :cond_1b
    :goto_22
    if-eqz v2, :cond_1c

    .line 170
    :try_start_30
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_24

    .line 175
    :cond_1c
    :goto_23
    if-eqz v3, :cond_33

    .line 178
    :try_start_31
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_25

    :goto_24
    move-object v0, v3

    .line 184
    :goto_25
    if-eqz v3, :cond_1d

    .line 187
    :try_start_32
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_26

    .line 195
    :cond_1d
    :goto_26
    :try_start_33
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_27

    :goto_27
    move-object v0, v1

    .line 127
    goto/16 :goto_5

    .line 130
    :cond_1e
    :try_start_34
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-static {v0}, Lcom/avast/android/generic/app/account/t;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 135
    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_23

    .line 137
    new-instance v1, Lcom/avast/android/generic/app/account/u;

    sget-object v6, Lcom/avast/android/generic/app/account/v;->d:Lcom/avast/android/generic/app/account/v;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Backup does not contain current state key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_6
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_6

    .line 159
    if-eqz v3, :cond_20

    .line 162
    :try_start_35
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_28

    .line 167
    :cond_20
    :goto_28
    if-eqz v2, :cond_21

    .line 170
    :try_start_36
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_29

    .line 175
    :cond_21
    :goto_29
    if-eqz v3, :cond_32

    .line 178
    :try_start_37
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_2a

    :goto_2a
    move-object v0, v3

    .line 184
    :goto_2b
    if-eqz v3, :cond_22

    .line 187
    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_2b

    .line 195
    :cond_22
    :goto_2c
    :try_start_39
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_2c

    :goto_2d
    move-object v0, v1

    .line 137
    goto/16 :goto_5

    .line 140
    :cond_23
    :try_start_3a
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/avast/android/generic/app/account/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 142
    new-instance v1, Lcom/avast/android/generic/app/account/u;

    sget-object v8, Lcom/avast/android/generic/app/account/v;->d:Lcom/avast/android/generic/app/account/v;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Backup does not equal current state key value ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_6

    .line 159
    if-eqz v3, :cond_24

    .line 162
    :try_start_3b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_2d

    .line 167
    :cond_24
    :goto_2e
    if-eqz v2, :cond_25

    .line 170
    :try_start_3c
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_2e

    .line 175
    :cond_25
    :goto_2f
    if-eqz v3, :cond_31

    .line 178
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_2f

    :goto_30
    move-object v0, v3

    .line 184
    :goto_31
    if-eqz v3, :cond_26

    .line 187
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_30

    .line 195
    :cond_26
    :goto_32
    :try_start_3f
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_31

    :goto_33
    move-object v0, v1

    .line 142
    goto/16 :goto_5

    .line 147
    :cond_27
    :try_start_40
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v6, Lcom/avast/android/generic/app/account/v;->c:Lcom/avast/android/generic/app/account/v;

    const-string v7, "No XML file"

    invoke-direct {v0, v6, v7}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_3
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_3d

    .line 159
    if-eqz v3, :cond_28

    .line 162
    :try_start_41
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_37

    .line 167
    :cond_28
    :goto_34
    if-eqz v2, :cond_29

    .line 170
    :try_start_42
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_38

    .line 175
    :cond_29
    :goto_35
    if-eqz v3, :cond_2f

    .line 178
    :try_start_43
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_39

    .line 184
    :goto_36
    if-eqz v3, :cond_2a

    .line 187
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_3a

    .line 195
    :cond_2a
    :goto_37
    :try_start_45
    const-string v1, "temp.xml"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_7

    goto/16 :goto_5

    .line 196
    :catch_7
    move-exception v1

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    goto/16 :goto_a

    .line 150
    :cond_2b
    :try_start_46
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 151
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_6
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_6

    .line 159
    if-eqz v3, :cond_2c

    .line 162
    :try_start_47
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_32

    .line 167
    :cond_2c
    :goto_38
    if-eqz v2, :cond_2d

    .line 170
    :try_start_48
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_33

    .line 175
    :cond_2d
    :goto_39
    if-eqz v3, :cond_30

    .line 178
    :try_start_49
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_34

    :goto_3a
    move-object v0, v3

    .line 184
    :goto_3b
    if-eqz v3, :cond_2e

    .line 187
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_35

    .line 195
    :cond_2e
    :goto_3c
    :try_start_4b
    const-string v0, "temp.xml"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_36

    .line 202
    :goto_3d
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v1, Lcom/avast/android/generic/app/account/v;->a:Lcom/avast/android/generic/app/account/v;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 163
    :catch_8
    move-exception v5

    goto/16 :goto_16

    .line 171
    :catch_9
    move-exception v2

    goto/16 :goto_17

    .line 179
    :catch_a
    move-exception v1

    goto/16 :goto_18

    .line 188
    :catch_b
    move-exception v1

    goto/16 :goto_19

    .line 196
    :catch_c
    move-exception v1

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 163
    :catch_d
    move-exception v1

    goto/16 :goto_d

    .line 171
    :catch_e
    move-exception v1

    goto/16 :goto_e

    .line 179
    :catch_f
    move-exception v1

    goto/16 :goto_f

    .line 188
    :catch_10
    move-exception v1

    goto/16 :goto_10

    .line 163
    :catch_11
    move-exception v2

    goto/16 :goto_0

    .line 171
    :catch_12
    move-exception v1

    goto/16 :goto_1

    .line 179
    :catch_13
    move-exception v1

    goto/16 :goto_2

    .line 188
    :catch_14
    move-exception v1

    goto/16 :goto_4

    .line 196
    :catch_15
    move-exception v1

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    goto/16 :goto_a

    .line 163
    :catch_16
    move-exception v4

    goto/16 :goto_6

    .line 171
    :catch_17
    move-exception v2

    goto/16 :goto_7

    .line 179
    :catch_18
    move-exception v1

    goto/16 :goto_8

    .line 188
    :catch_19
    move-exception v1

    goto/16 :goto_9

    .line 163
    :catch_1a
    move-exception v4

    goto/16 :goto_11

    .line 171
    :catch_1b
    move-exception v2

    goto/16 :goto_12

    .line 179
    :catch_1c
    move-exception v1

    goto/16 :goto_13

    .line 188
    :catch_1d
    move-exception v1

    goto/16 :goto_14

    .line 163
    :catch_1e
    move-exception v0

    goto/16 :goto_1c

    .line 171
    :catch_1f
    move-exception v0

    goto/16 :goto_1d

    .line 179
    :catch_20
    move-exception v0

    goto/16 :goto_1e

    .line 188
    :catch_21
    move-exception v0

    goto/16 :goto_20

    .line 196
    :catch_22
    move-exception v0

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 163
    :catch_23
    move-exception v0

    goto/16 :goto_22

    .line 171
    :catch_24
    move-exception v0

    goto/16 :goto_23

    .line 179
    :catch_25
    move-exception v0

    goto/16 :goto_24

    .line 188
    :catch_26
    move-exception v0

    goto/16 :goto_26

    .line 196
    :catch_27
    move-exception v0

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 163
    :catch_28
    move-exception v0

    goto/16 :goto_28

    .line 171
    :catch_29
    move-exception v0

    goto/16 :goto_29

    .line 179
    :catch_2a
    move-exception v0

    goto/16 :goto_2a

    .line 188
    :catch_2b
    move-exception v0

    goto/16 :goto_2c

    .line 196
    :catch_2c
    move-exception v0

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 163
    :catch_2d
    move-exception v0

    goto/16 :goto_2e

    .line 171
    :catch_2e
    move-exception v0

    goto/16 :goto_2f

    .line 179
    :catch_2f
    move-exception v0

    goto/16 :goto_30

    .line 188
    :catch_30
    move-exception v0

    goto/16 :goto_32

    .line 196
    :catch_31
    move-exception v0

    .line 198
    const-string v2, "AvastBackupGeneric"

    const-string v3, "Can not delete temp file"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 163
    :catch_32
    move-exception v0

    goto/16 :goto_38

    .line 171
    :catch_33
    move-exception v0

    goto/16 :goto_39

    .line 179
    :catch_34
    move-exception v0

    goto/16 :goto_3a

    .line 188
    :catch_35
    move-exception v0

    goto/16 :goto_3c

    .line 196
    :catch_36
    move-exception v0

    .line 198
    const-string v1, "AvastBackupGeneric"

    const-string v2, "Can not delete temp file"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 163
    :catch_37
    move-exception v4

    goto/16 :goto_34

    .line 171
    :catch_38
    move-exception v2

    goto/16 :goto_35

    .line 179
    :catch_39
    move-exception v1

    goto/16 :goto_36

    .line 188
    :catch_3a
    move-exception v1

    goto/16 :goto_37

    .line 159
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v4, v1

    move-object v6, v3

    move-object v1, v3

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    move-object v4, v1

    move-object v6, v3

    move-object v1, v3

    goto/16 :goto_15

    :catchall_4
    move-exception v0

    move-object v6, v4

    move-object v4, v1

    move-object v1, v3

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    move-object v1, v3

    move-object v6, v3

    goto/16 :goto_15

    :catchall_6
    move-exception v0

    move-object v1, v3

    move-object v4, v3

    move-object v6, v3

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_15

    .line 152
    :catch_3b
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    goto/16 :goto_c

    :catch_3c
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v1

    move-object v6, v3

    move-object v1, v0

    goto/16 :goto_c

    :catch_3d
    move-exception v0

    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    move-object v2, v3

    move-object v1, v0

    goto/16 :goto_c

    :catch_3e
    move-exception v0

    move-object v5, v1

    move-object v6, v4

    move-object v4, v2

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_c

    :catch_3f
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    move-object v6, v3

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_c

    :cond_2f
    move-object v3, v1

    goto/16 :goto_36

    :cond_30
    move-object v0, v3

    goto/16 :goto_3b

    :cond_31
    move-object v0, v3

    goto/16 :goto_31

    :cond_32
    move-object v0, v3

    goto/16 :goto_2b

    :cond_33
    move-object v0, v3

    goto/16 :goto_25

    :cond_34
    move-object v0, v3

    goto/16 :goto_1f

    :cond_35
    move-object v3, v1

    goto/16 :goto_13

    :cond_36
    move-object v3, v1

    goto/16 :goto_8

    :cond_37
    move-object v1, v3

    goto/16 :goto_3

    :cond_38
    move-object v3, v5

    goto/16 :goto_f

    :cond_39
    move-object v3, v4

    goto/16 :goto_18
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 207
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v1

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, v1

    .line 212
    :cond_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 213
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_4

    .line 215
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 222
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    const-string v1, "wipethorough"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "allowsms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "locktext"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "disadb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "endata"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "lockmode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "audiofile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sirenonlock"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "battery"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "batteryalways"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gpsautoon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hidegps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "checkforupdates"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "lockprogrammgr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "lockallsettings"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "owner"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "system"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "hidegps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "forceEnableData"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "auid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "accountCommPassword"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "accountEmail"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "accountEncKey"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "accountSmsGateway"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2dmowner"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "c2dmri"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "encaccesscode"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "accountSmsSending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "splitcdma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
