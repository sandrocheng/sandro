.class final Lcom/keniu/security/b/n;
.super Lcom/jxphone/mosecurity/d/t;
.source "SmsDaoImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/d/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const-string v0, "create table if not exists sms (id INTEGER primary key autoincrement,address text,body text,date INTEGER,status INTEGER,type INTEGER,list_type INTEGER)"

    .line 46
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 37
    const-string v0, "update sms set status=-2"

    .line 38
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method
