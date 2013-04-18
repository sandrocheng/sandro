.class public final Lcom/keniu/security/sync/c/j;
.super Lcom/keniu/security/sync/c/g;
.source "SMSRestoreTask.java"


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const v0, 0x7f0b08bc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/c/j;->e:I

    .line 36
    iput p3, p0, Lcom/keniu/security/sync/c/j;->e:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 24
    .parameter

    .prologue
    .line 47
    invoke-super/range {p0 .. p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->e:I

    move v3, v0

    if-nez v3, :cond_0

    sget-object v3, Lcom/keniu/security/sync/r;->aI:Ljava/lang/String;

    .line 50
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->e:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/16 v3, -0x2729

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 243
    :goto_1
    return-object v3

    .line 49
    :cond_0
    sget-object v3, Lcom/keniu/security/sync/r;->aJ:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    const/4 v11, 0x0

    .line 53
    new-instance v12, Ljava/io/File;

    sget-object v4, Lcom/keniu/security/sync/r;->aK:Ljava/lang/String;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 56
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".copy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v3, v4}, Lcom/keniu/security/sync/r;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, -0x2728

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 58
    :cond_3
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/keniu/security/sync/r;->aK:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/keniu/security/sync/l;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 60
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 61
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 62
    const/16 v3, -0x271c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 64
    :cond_5
    invoke-static {v4}, Lcom/keniu/security/sync/l;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 66
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->b:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    const-string v5, ""

    .line 70
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 74
    :cond_6
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/sync/c/j;->d:I

    .line 76
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->b(I)V

    .line 77
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 78
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-ge v6, v7, :cond_a

    .line 80
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 81
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 82
    const-string v8, "msg_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_8

    .line 83
    const-string v8, "address"

    const-string v9, "address"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v8, "date"

    const-string v9, "date"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    invoke-static {v3, v5}, Lcom/keniu/security/sync/r;->a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 86
    const-string v8, "type"

    const-string v9, "type"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v8, "status"

    const-string v9, "status"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v8, "read"

    const-string v9, "read"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v8, "subject"

    const-string v9, "subject"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v8, "body"

    const-string v9, "body"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v7, Landroid/a/t;->a:Landroid/net/Uri;

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :cond_7
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->d:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/sync/c/j;->d:I

    .line 103
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->a(I)V

    .line 104
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->publishProgress([Ljava/lang/Object;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/sync/c/j;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 107
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 108
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 109
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto/16 :goto_1

    .line 93
    :cond_8
    :try_start_3
    const-string v8, "msg_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 94
    invoke-static {v7}, Lcom/jxphone/mosecurity/c/l;->a(Lorg/json/JSONObject;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v7

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->b:Landroid/content/Context;

    move-object v8, v0

    invoke-static {v8}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v8

    .line 96
    invoke-interface {v8, v7}, Lcom/jxphone/mosecurity/logic/a/j;->g(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-interface {v8, v7}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/jxphone/mosecurity/c/l;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 98
    :catch_0
    move-exception v7

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 112
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 113
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->d:I

    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    goto/16 :goto_1

    .line 116
    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_b
    :try_start_5
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "sms_backup"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v11

    .line 123
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "sms_backup_friend"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v3

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/sync/c/j;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 134
    if-eqz v11, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 137
    :cond_e
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 138
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 139
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    .line 125
    :catch_2
    move-exception v3

    move-object v3, v11

    :goto_5
    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 126
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 128
    :cond_10
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 129
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 130
    const/16 v3, -0x271d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    .line 143
    :cond_11
    if-nez v11, :cond_12

    if-eqz v3, :cond_22

    .line 144
    :cond_12
    if-eqz v11, :cond_19

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 145
    :goto_6
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 146
    :goto_7
    add-int v6, v5, v4

    .line 147
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/sync/c/j;->d:I

    .line 148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> fc#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sc#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->b(I)V

    .line 151
    const/4 v7, 0x0

    .line 153
    if-eqz v11, :cond_1b

    if-lez v4, :cond_1b

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->b:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 155
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 157
    const-string v9, "address"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 158
    const-string v10, "body"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 159
    const-string v14, "date"

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 160
    const-string v15, "protocol"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 161
    const-string v16, "read"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 162
    const-string v17, "service_center"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 163
    const-string v18, "status"

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 164
    const-string v19, "subject"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 165
    const-string v20, "type"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 167
    :cond_13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 168
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 170
    const-string v7, "address"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v7, "body"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v7, "date"

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v7, "protocol"

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v7, "read"

    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v7, "service_center"

    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "status"

    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "subject"

    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v7, "type"

    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {v4, v8}, Lcom/keniu/security/sync/r;->a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 181
    const-string v7, "_id"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 182
    const-string v7, "thread_id"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 183
    const-string v7, "datatype"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 185
    const-string v7, "address"

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 186
    const-string v7, "address"

    const-string v21, ""

    move-object v0, v8

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_14
    sget-object v7, Landroid/a/t;->a:Landroid/net/Uri;

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 190
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "doRestore>>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v21, ",values="

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->d:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/sync/c/j;->d:I

    .line 193
    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 194
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->a(I)V

    .line 195
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->publishProgress([Ljava/lang/Object;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/sync/c/j;->isCancelled()Z

    move-result v21

    if-eqz v21, :cond_13

    .line 198
    if-eqz v11, :cond_16

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_16
    if-eqz v3, :cond_17

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 201
    :cond_18
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 202
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 203
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    .line 144
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 145
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_1b
    move v4, v7

    .line 207
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 209
    if-eqz v3, :cond_22

    if-lez v5, :cond_22

    .line 210
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->b:Landroid/content/Context;

    move-object v7, v0

    invoke-static {v7}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v7

    .line 212
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 213
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 214
    invoke-static {v3}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v8

    .line 215
    invoke-interface {v7, v8}, Lcom/jxphone/mosecurity/logic/a/j;->g(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 216
    invoke-virtual {v8}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 217
    const-string v9, ""

    invoke-virtual {v8, v9}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 219
    :cond_1c
    invoke-interface {v7, v8}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/jxphone/mosecurity/c/l;)I

    .line 221
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->d:I

    move v8, v0

    add-int/lit8 v8, v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/sync/c/j;->d:I

    .line 222
    add-int/lit8 v8, v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->a(I)V

    .line 223
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/j;->publishProgress([Ljava/lang/Object;)V

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/sync/c/j;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 226
    if-eqz v11, :cond_1e

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_1e
    if-eqz v3, :cond_1f

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/j;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 229
    :cond_20
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 230
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 231
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    :cond_21
    move v4, v8

    .line 233
    goto :goto_8

    .line 237
    :cond_22
    if-eqz v11, :cond_23

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_23
    if-eqz v3, :cond_24

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 241
    :cond_24
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 242
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/sync/c/j;->d:I

    move v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto/16 :goto_1

    .line 125
    :catch_3
    move-exception v3

    move-object v3, v11

    goto/16 :goto_5
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> sms#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/keniu/security/sync/c/j;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/j;->c:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void

    .line 249
    :cond_0
    const/16 v3, -0x271b

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/j;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/j;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 41
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/j;->b(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/j;->a(I)V

    .line 43
    return-void
.end method
