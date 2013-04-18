.class public Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallBroadcastReceiver.java"


# static fields
.field private static final d:Ljava/lang/String; = "softdetail"


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private e:Lcom/ijinshan/cleaner/receiver/a;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->f:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->a:Z

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->b:J

    return-void
.end method

.method private a(Ljava/io/File;)J
    .locals 4
    .parameter

    .prologue
    .line 110
    .line 113
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    array-length v1, v0

    .line 118
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 120
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->a(Ljava/io/File;)J

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-wide v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->b:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->b:J

    .line 128
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->b:J

    return-wide v0

    .line 125
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-wide v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->b:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->b:J

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Lcom/ijinshan/cleaner/receiver/a;
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 66
    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 70
    const-string v3, "apkname = ?"

    .line 71
    new-array v4, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 72
    new-instance v0, Lcom/ijinshan/cleaner/b/a;

    invoke-direct {v0}, Lcom/ijinshan/cleaner/b/a;-><init>()V

    .line 73
    invoke-virtual {v0}, Lcom/ijinshan/cleaner/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    iget-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "softdetail"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    const-string v3, ""

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    :cond_0
    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 81
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    if-nez v3, :cond_1

    .line 84
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 87
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 88
    iget-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v11

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, v7}, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->a(Ljava/io/File;)J

    move-result-wide v9

    add-long/2addr v5, v9

    .line 94
    goto :goto_0

    :cond_3
    move-wide v4, v5

    .line 96
    :goto_1
    cmp-long v0, v4, v11

    if-ltz v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 97
    new-instance v0, Lcom/ijinshan/cleaner/receiver/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/receiver/a;-><init>(Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;)V

    .line 98
    iput-object p1, v0, Lcom/ijinshan/cleaner/receiver/a;->a:Ljava/lang/String;

    .line 99
    iput-object v3, v0, Lcom/ijinshan/cleaner/receiver/a;->b:Ljava/lang/String;

    .line 100
    iput-object v1, v0, Lcom/ijinshan/cleaner/receiver/a;->c:Ljava/util/ArrayList;

    .line 101
    iput-wide v4, v0, Lcom/ijinshan/cleaner/receiver/a;->d:J

    .line 103
    :goto_2
    return-object v0

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    move-wide v4, v11

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string v2, "filelist"

    iget-object v3, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    iget-object v3, v3, Lcom/ijinshan/cleaner/receiver/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    const-string v2, "name"

    iget-object v3, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    iget-object v3, v3, Lcom/ijinshan/cleaner/receiver/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v2, "size"

    iget-object v3, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    iget-wide v3, v3, Lcom/ijinshan/cleaner/receiver/a;->d:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->a:Z

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->a:Z

    if-eqz v0, :cond_2

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->f:Ljava/lang/String;

    .line 34
    iget-object v8, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->f:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v3, "apkname = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    new-instance v0, Lcom/ijinshan/cleaner/b/a;

    invoke-direct {v0}, Lcom/ijinshan/cleaner/b/a;-><init>()V

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/b/a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "softdetail"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->a(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Lcom/ijinshan/cleaner/receiver/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/cleaner/receiver/a;-><init>(Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;)V

    iput-object v8, v0, Lcom/ijinshan/cleaner/receiver/a;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/ijinshan/cleaner/receiver/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/ijinshan/cleaner/receiver/a;->c:Ljava/util/ArrayList;

    iput-wide v3, v0, Lcom/ijinshan/cleaner/receiver/a;->d:J

    :goto_2
    iput-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    .line 35
    iget-object v0, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->a:Ljava/lang/String;

    sget-object v2, Lcom/ijinshan/cleaner/MonitorUninstallActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "filelist"

    iget-object v3, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    iget-object v3, v3, Lcom/ijinshan/cleaner/receiver/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "name"

    iget-object v3, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    iget-object v3, v3, Lcom/ijinshan/cleaner/receiver/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "size"

    iget-object v3, p0, Lcom/ijinshan/cleaner/receiver/UninstallBroadcastReceiver;->e:Lcom/ijinshan/cleaner/receiver/a;

    iget-wide v3, v3, Lcom/ijinshan/cleaner/receiver/a;->d:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v9

    goto :goto_2
.end method
