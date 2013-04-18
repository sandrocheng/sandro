.class final Lcom/ijinshan/kinghelper/firewall/en;
.super Landroid/os/AsyncTask;
.source "SmsBackupActivity.java"


# instance fields
.field a:Z

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/firewall/en;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    return-void
.end method

.method private a(Ljava/io/File;[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 170
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 171
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 172
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v1, "CREATE TABLE  if not exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sms_backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 177
    array-length v2, p2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_0

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 184
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v1, "CREATE TABLE if not exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sms_backup_friend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "id INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "address text,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "body text,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "date INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "status INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "type INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "list_type INTEGER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 460
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0193

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    .line 469
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->e(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/en;

    .line 470
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/Integer;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 455
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0191

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 417
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 422
    :cond_0
    const-string v1, "date"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 425
    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    .line 426
    const-string v1, "sms_backup"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "address =? and date=?"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_3

    .line 429
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 430
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 432
    :goto_0
    if-lez v0, :cond_2

    move v0, v9

    :goto_1
    return v0

    :cond_2
    move v0, v8

    goto :goto_1

    :cond_3
    move v0, v8

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/jxphone/mosecurity/c/l;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 436
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v1

    .line 443
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    aput-object v0, v4, v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 444
    const-string v1, "sms_backup_friend"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v2, v8

    const-string v3, "address =? and date=? "

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_2

    .line 447
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 450
    :goto_0
    if-lez v0, :cond_1

    move v0, v9

    :goto_1
    return v0

    :cond_1
    move v0, v8

    goto :goto_1

    :cond_2
    move v0, v8

    goto :goto_0
.end method

.method private varargs b()Ljava/lang/Integer;
    .locals 21

    .prologue
    .line 216
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/eo;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/eo;-><init>(Lcom/ijinshan/kinghelper/firewall/en;)V

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 228
    :cond_0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 412
    :goto_0
    return-object v4

    .line 232
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/ep;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/ep;-><init>(Lcom/ijinshan/kinghelper/firewall/en;)V

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v4, v0

    if-eqz v4, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 246
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 248
    :cond_3
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 252
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 253
    sget-object v5, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 254
    const/4 v4, 0x0

    .line 255
    if-eqz v12, :cond_5

    .line 256
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 260
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v5

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v5, v6}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v13

    .line 261
    array-length v14, v13

    .line 262
    add-int v15, v4, v14

    .line 263
    const/4 v5, 0x1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v6, v0

    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 267
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 268
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    .line 269
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 272
    :cond_6
    new-instance v16, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mosecurity/SMSBackup/smsbak.bak.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 274
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 277
    :cond_7
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 281
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/a/j;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 283
    if-eqz v12, :cond_8

    .line 284
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_9

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 289
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/eq;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/eq;-><init>(Lcom/ijinshan/kinghelper/firewall/en;)V

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 297
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 300
    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v6, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 308
    :cond_b
    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 312
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v6, v0

    if-eqz v6, :cond_f

    .line 313
    if-eqz v12, :cond_c

    .line 314
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 318
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 321
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 304
    :cond_e
    invoke-interface {v12}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/en;->a(Ljava/io/File;[Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_f
    if-eqz v12, :cond_26

    .line 326
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 327
    if-lez v17, :cond_19

    .line 329
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    move v4, v5

    .line 330
    :cond_10
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 331
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 332
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "address"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v5, ""

    :cond_11
    const-string v6, "date"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v6, ""

    :cond_12
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const-string v5, "sms_backup"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v7

    const-string v7, "address =? and date=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_13

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_13
    move v4, v5

    if-lez v4, :cond_17

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_18

    .line 335
    const-string v4, "address"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 336
    const-string v4, "address"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "sms_backup"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 343
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 345
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/en;->publishProgress([Ljava/lang/Object;)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 348
    if-eqz v12, :cond_15

    .line 349
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_16

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 353
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 355
    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 356
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 334
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 340
    :cond_18
    const-string v4, "SmsBackupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemSmsExistBackup skip>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_19
    move v4, v5

    .line 360
    :cond_1a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move/from16 v12, v17

    .line 364
    :goto_4
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 365
    move-object v0, v13

    array-length v0, v0

    move/from16 v18, v0

    const/4 v5, 0x0

    move/from16 v19, v5

    move/from16 v20, v4

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_22

    aget-object v5, v13, v19

    .line 366
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 367
    const-string v4, "id"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v4, "address"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, ""

    :goto_6
    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v4, "body"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v4, "date"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v4, "status"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string v4, "type"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v4, "list_type"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v6, ""

    :cond_1b
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v9

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v8, v5

    const/4 v5, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const-string v5, "sms_backup_friend"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "id"

    aput-object v9, v6, v7

    const-string v7, "address =? and date=? "

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1c
    move v4, v5

    if-lez v4, :cond_20

    const/4 v4, 0x1

    :goto_7
    if-nez v4, :cond_1d

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "sms_backup_friend"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 379
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    add-int/lit8 v5, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 380
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/en;->publishProgress([Ljava/lang/Object;)V

    .line 382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v4, v0

    if-eqz v4, :cond_21

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_1e

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 385
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 387
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 388
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 368
    :cond_1f
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    .line 375
    :cond_20
    const/4 v4, 0x0

    goto :goto_7

    .line 365
    :cond_21
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_5

    .line 393
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_23

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 395
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 399
    :cond_23
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mosecurity/SMSBackup/smsbak.bak.tmp2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 401
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 403
    :cond_24
    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 404
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 405
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 406
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 407
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 408
    add-int v4, v14, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 410
    :cond_25
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 411
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 412
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_26
    move v12, v4

    move v4, v5

    goto/16 :goto_4
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    .line 167
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .parameter

    .prologue
    .line 159
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->b()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/eo;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/eo;-><init>(Lcom/ijinshan/kinghelper/firewall/en;)V

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x19000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/ep;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/ep;-><init>(Lcom/ijinshan/kinghelper/firewall/en;)V

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v4, v0

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_3
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v4, 0x0

    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v5

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v5, v6}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v13

    array-length v14, v13

    add-int v15, v4, v14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v6, v0

    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_6
    new-instance v16, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mosecurity/SMSBackup/smsbak.bak.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_7
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/a/j;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    new-instance v5, Lcom/ijinshan/kinghelper/firewall/eq;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/eq;-><init>(Lcom/ijinshan/kinghelper/firewall/en;)V

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v6, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Ljava/io/File;Ljava/io/File;)Z

    :cond_b
    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v6, v0

    if-eqz v6, :cond_f

    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_e
    invoke-interface {v12}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/en;->a(Ljava/io/File;[Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    if-eqz v12, :cond_26

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_19

    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    move v4, v5

    :cond_10
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "address"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v5, ""

    :cond_11
    const-string v6, "date"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v6, ""

    :cond_12
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const-string v5, "sms_backup"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_id"

    aput-object v9, v6, v7

    const-string v7, "address =? and date=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_13

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_13
    move v4, v5

    if-lez v4, :cond_17

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_18

    const-string v4, "address"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "address"

    const-string v5, ""

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "sms_backup"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/en;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v5, v0

    if-eqz v5, :cond_10

    if-eqz v12, :cond_15

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_18
    const-string v4, "SmsBackupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSystemSmsExistBackup skip>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_19
    move v4, v5

    :cond_1a
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move/from16 v12, v17

    :goto_4
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v13

    array-length v0, v0

    move/from16 v18, v0

    const/4 v5, 0x0

    move/from16 v19, v5

    move/from16 v20, v4

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_22

    aget-object v5, v13, v19

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    const-string v4, "id"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "address"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v6, ""

    :goto_6
    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "body"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "date"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "status"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "list_type"

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v6, ""

    :cond_1b
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v9

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v8, v5

    const/4 v5, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const-string v5, "sms_backup_friend"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "id"

    aput-object v9, v6, v7

    const-string v7, "address =? and date=? "

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1c
    move v4, v5

    if-lez v4, :cond_20

    const/4 v4, 0x1

    :goto_7
    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "sms_backup_friend"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    add-int/lit8 v5, v20, 0x1

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/en;->publishProgress([Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->a:Z

    move v4, v0

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1e
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_1f
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_6

    :cond_20
    const/4 v4, 0x0

    goto :goto_7

    :cond_21
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_5

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_23
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/mosecurity/SMSBackup/smsbak.bak.tmp2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_24
    move-object/from16 v0, v16

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int v4, v14, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_25
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    :cond_26
    move v12, v4

    move v4, v5

    goto/16 :goto_4
.end method

.method protected final onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 474
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 482
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    .line 483
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->e(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/en;

    .line 484
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 159
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0193

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->e(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/en;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 202
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    .line 204
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 206
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 207
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0191

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 159
    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/en;->b:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0191

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
