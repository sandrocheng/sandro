.class final Lcom/keniu/security/b/d;
.super Lcom/jxphone/mosecurity/d/t;
.source "ContactDaoImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/d/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    const-string v0, "create table if not exists contact (id INTEGER primary key autoincrement,name text,phone_number text,list_type INTEGER,create_date INTEGER,activity_date INTEGER,photo BLOB)"

    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 39
    const-string v0, "alter table contact add photo blob"

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
