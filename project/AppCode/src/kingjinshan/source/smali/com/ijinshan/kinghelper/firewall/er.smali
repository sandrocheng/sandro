.class final Lcom/ijinshan/kinghelper/firewall/er;
.super Landroid/os/AsyncTask;
.source "SmsBackupActivity.java"


# instance fields
.field a:Landroid/database/sqlite/SQLiteDatabase;

.field b:Z

.field final synthetic c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kinghelper/firewall/er;-><init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->b:Z

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 785
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 788
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0195

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    .line 800
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->f(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/er;

    .line 801
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/Integer;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 780
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0192

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

    .line 781
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 759
    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 764
    :cond_0
    const-string v1, "date"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 767
    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    .line 768
    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "address =? and date=? and type <> 3"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_3

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 772
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 775
    :goto_0
    if-lez v0, :cond_2

    move v0, v7

    :goto_1
    return v0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method private varargs b()Ljava/lang/Integer;
    .locals 23

    .prologue
    .line 545
    invoke-static {}, Lcom/ijinshan/kinghelper/a/j;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v2, v0

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/es;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/es;-><init>(Lcom/ijinshan/kinghelper/firewall/er;)V

    invoke-virtual {v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 553
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 755
    :goto_0
    return-object v2

    .line 556
    :cond_0
    const/4 v10, 0x0

    .line 558
    new-instance v11, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mosecurity/SMSBackup/smsbak.bak.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 564
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    invoke-static {v2, v11}, Lcom/ijinshan/kinghelper/a/j;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v2, v0

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/et;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/et;-><init>(Lcom/ijinshan/kinghelper/firewall/er;)V

    invoke-virtual {v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 574
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 575
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 579
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v3, v0

    invoke-static {v2, v11}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 596
    :cond_3
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "sms_backup"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 598
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "sms_backup_friend"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->b:Z

    move v2, v0

    if-eqz v2, :cond_9

    .line 621
    if-eqz v10, :cond_4

    .line 622
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 624
    :cond_4
    if-eqz v8, :cond_5

    .line 625
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 628
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 584
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v2, v0

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/eu;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/eu;-><init>(Lcom/ijinshan/kinghelper/firewall/er;)V

    invoke-virtual {v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 590
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 591
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 600
    :catch_0
    move-exception v2

    move-object v2, v10

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 603
    :cond_7
    if-eqz v2, :cond_8

    .line 604
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 606
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v2, v0

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/ev;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ijinshan/kinghelper/firewall/ev;-><init>(Lcom/ijinshan/kinghelper/firewall/er;)V

    invoke-virtual {v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 616
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 617
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 631
    :cond_9
    const/4 v2, 0x0

    .line 632
    if-nez v10, :cond_a

    if-eqz v8, :cond_1c

    .line 633
    :cond_a
    const/4 v2, 0x0

    .line 634
    if-eqz v10, :cond_b

    .line 635
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 638
    :cond_b
    const/4 v3, 0x0

    .line 639
    if-eqz v8, :cond_1f

    .line 640
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v9, v3

    .line 642
    :goto_2
    add-int v12, v9, v2

    .line 644
    const-string v3, "SmsBackupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doRestore>>friendSmsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",systemSmsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 648
    const/4 v3, 0x0

    .line 650
    if-eqz v10, :cond_15

    if-lez v2, :cond_15

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 652
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 654
    const-string v4, "address"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 655
    const-string v4, "body"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 656
    const-string v4, "date"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 657
    const-string v4, "protocol"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 658
    const-string v4, "read"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 659
    const-string v4, "service_center"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 660
    const-string v4, "status"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 661
    const-string v4, "subject"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 662
    const-string v4, "type"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 664
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 665
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 667
    const-string v3, "address"

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v3, "body"

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v3, "date"

    move-object v0, v10

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v3, "protocol"

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v3, "read"

    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v3, "service_center"

    move-object v0, v10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v3, "status"

    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v3, "subject"

    move-object v0, v10

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v3, "type"

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v3, "address"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v3, ""

    :cond_d
    const-string v4, "date"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v4, ""

    :cond_e
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const/4 v3, 0x1

    aput-object v4, v6, v3

    sget-object v3, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    const-string v5, "address =? and date=? and type <> 3"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    move v3, v4

    if-lez v3, :cond_13

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_14

    .line 679
    const-string v3, "_id"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 680
    const-string v3, "thread_id"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 681
    const-string v3, "datatype"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 683
    const-string v3, "address"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 684
    const-string v3, "address"

    const-string v4, ""

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_10
    sget-object v3, Landroid/a/t;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 688
    const-string v4, "SmsBackupActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doRestore>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",values="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 695
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/er;->publishProgress([Ljava/lang/Object;)V

    .line 697
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->b:Z

    move v4, v0

    if-eqz v4, :cond_c

    .line 698
    if-eqz v10, :cond_11

    .line 699
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 701
    :cond_11
    if-eqz v8, :cond_12

    .line 702
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_12
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 705
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 678
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 690
    :cond_14
    const-string v3, "SmsBackupActivity"

    const-string v4, "existInSystem skip>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_15
    move v2, v3

    .line 709
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 711
    if-eqz v8, :cond_1b

    if-lez v9, :cond_1b

    .line 712
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v4, v0

    invoke-static {v4}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v4

    .line 714
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 715
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 717
    invoke-static {v8}, Lcom/jxphone/mosecurity/c/l;->a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;

    move-result-object v5

    .line 718
    invoke-interface {v4, v5}, Lcom/jxphone/mosecurity/logic/a/j;->g(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 720
    invoke-virtual {v5}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 721
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 724
    :cond_16
    invoke-interface {v4, v5}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/jxphone/mosecurity/c/l;)I

    .line 729
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 730
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/er;->publishProgress([Ljava/lang/Object;)V

    .line 732
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/er;->b:Z

    move v2, v0

    if-eqz v2, :cond_1a

    .line 733
    if-eqz v10, :cond_17

    .line 734
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 736
    :cond_17
    if-eqz v8, :cond_18

    .line 737
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_18
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 740
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 726
    :cond_19
    const-string v6, "SmsBackupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logic.isExists skip>>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_1a
    move v2, v6

    .line 742
    goto :goto_5

    :cond_1b
    move v2, v12

    .line 746
    :cond_1c
    if-eqz v10, :cond_1d

    .line 747
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_1d
    if-eqz v8, :cond_1e

    .line 750
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_1e
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 755
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 600
    :catch_1
    move-exception v2

    move-object v2, v10

    goto/16 :goto_1

    :cond_1f
    move v9, v3

    goto/16 :goto_2
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->b:Z

    .line 529
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/er;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 805
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 808
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 810
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 812
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    .line 816
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->f(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/er;

    .line 817
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 522
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0195

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->f(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Lcom/ijinshan/kinghelper/firewall/er;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 533
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;I)I

    .line 535
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 537
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->a(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 538
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->b(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->c(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0192

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "0"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 522
    check-cast p1, [Ljava/lang/Integer;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;->d(Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/er;->c:Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    const v2, 0x7f0b0192

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
