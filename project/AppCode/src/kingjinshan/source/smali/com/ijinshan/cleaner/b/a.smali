.class public final Lcom/ijinshan/cleaner/b/a;
.super Ljava/lang/Object;
.source "DBManager.java"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 18
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    iget-object v0, p0, Lcom/ijinshan/cleaner/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 26
    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ijinshan/cleaner/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    const-string v1, "clearpath2.db"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ijinshan/cleaner/b/a;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/cleaner/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    iget-object v0, p0, Lcom/ijinshan/cleaner/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
