.class public final Lcom/ijinshan/kinghelper/firewall/dq;
.super Ljava/lang/Object;
.source "ServiceSmsLocalDB.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:I

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;


# instance fields
.field private p:Landroid/content/Context;

.field private q:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "srvsms.db"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->a:Ljava/lang/String;

    .line 17
    const-string v0, "usertype"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    .line 18
    const-string v0, "id"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    .line 19
    const-string v0, "name"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->d:Ljava/lang/String;

    .line 20
    const-string v0, "desc"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->e:Ljava/lang/String;

    .line 21
    const/16 v0, 0xc9

    sput v0, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    .line 22
    const-string v0, "create table if not exists usertype( id INTEGER, name VARCHAR(500),desc VARCHAR(500) )"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->g:Ljava/lang/String;

    .line 24
    const-string v0, "create table if not exists usernumber( number VARCHAR(500), typeid INTEGER )"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->h:Ljava/lang/String;

    .line 25
    const-string v0, "usernumber"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    .line 26
    const-string v0, "number"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->j:Ljava/lang/String;

    .line 27
    const-string v0, "typeid"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->k:Ljava/lang/String;

    .line 29
    const-string v0, "create table if not exists deletedtype( id INTEGER, del INTEGER)"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->l:Ljava/lang/String;

    .line 30
    const-string v0, "deletedtype"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->m:Ljava/lang/String;

    .line 31
    const-string v0, "id"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->n:Ljava/lang/String;

    .line 32
    const-string v0, "del"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/dq;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    .line 36
    iput-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    const v4, 0x7f0b01e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    const v5, 0x7f0b01e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    sget v6, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    const v4, 0x7f0b01e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    const v5, 0x7f0b01e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    sget v6, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 70
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    const v4, 0x7f0b01e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/dq;->p:Landroid/content/Context;

    const v5, 0x7f0b01e7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    sget v6, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 79
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_1
    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select max("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget v1, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    .line 157
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 162
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 165
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    .line 168
    return v0
.end method

.method private d(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 131
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 134
    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 130
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 101
    .line 102
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 103
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 106
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 108
    sget v3, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    if-lt v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v9

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v2, v3

    :goto_1
    if-nez v2, :cond_0

    move v1, v8

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/dq;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const/4 v1, -0x1

    .line 115
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_2
    return v1

    :cond_3
    move v3, v8

    .line 108
    goto :goto_0

    :cond_4
    move v2, v8

    goto :goto_1

    :cond_5
    move v1, v8

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select max("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/ijinshan/kinghelper/firewall/dq;->f:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    .line 87
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 89
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 94
    const/4 v0, 0x0

    .line 96
    :cond_2
    return v0
.end method

.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public final a(I)V
    .locals 4
    .parameter

    .prologue
    .line 173
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->n:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->o:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->m:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 179
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->k:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 147
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 208
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_2

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/dr;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/dr;-><init>(Lcom/ijinshan/kinghelper/firewall/dq;)V

    .line 218
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/ijinshan/kinghelper/firewall/dr;->b:I

    .line 219
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/dr;->a:Ljava/lang/String;

    .line 220
    sget-object v2, Lcom/ijinshan/kinghelper/firewall/dq;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/dr;->c:Ljava/lang/String;

    .line 222
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_2
    return-object v8
.end method

.method public final b(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 190
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 193
    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 189
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public final c(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 197
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/dq;->q:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dq;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dq;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 199
    return-void
.end method
