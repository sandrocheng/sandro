.class public interface abstract Lcom/tencent/tmsecure/module/plugin/IPluginDatabase;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract deleteTable(Ljava/lang/String;)Z
.end method

.method public abstract execSQL(Ljava/lang/String;)V
.end method

.method public abstract execTransaction(Ljava/lang/Runnable;)V
.end method

.method public abstract insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
