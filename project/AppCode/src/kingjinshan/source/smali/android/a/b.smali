.class public final Landroid/a/b;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# static fields
.field private static final a:Ljava/lang/String; = "SqliteWrapper"

.field private static final b:Ljava/lang/String; = "unable to open database file"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when update: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    invoke-static {p0, v0}, Landroid/a/b;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 92
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when delete: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-static {p0, v0}, Landroid/a/b;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 102
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 68
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when query: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-static {p0, v0}, Landroid/a/b;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    move-object v0, v6

    .line 72
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "\u5185\u5b58\u4e0d\u8db3"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 62
    :cond_0
    throw p1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    .line 46
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 47
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 50
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when requery: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-static {p0, v0}, Landroid/a/b;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "SqliteWrapper"

    const-string v2, "Catch a SQLiteException when insert: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-static {p0, v0}, Landroid/a/b;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method
