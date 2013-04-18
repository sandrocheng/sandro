.class final Lcom/keniu/security/b/i;
.super Lcom/jxphone/mosecurity/d/t;
.source "PhoneCallDaoImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/d/t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const-string v0, "create table if not exists phone_call (id INTEGER primary key autoincrement,phone_number text,date INTEGER,type INTEGER,list_type INTEGER,ring_duration INTEGER,talk_duration INTEGER)"

    .line 49
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    return-void
.end method
