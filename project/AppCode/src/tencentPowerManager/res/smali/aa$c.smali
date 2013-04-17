.class public final Laa$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private synthetic a:Laa;


# direct methods
.method public constructor <init>(Laa;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Laa$c;->a:Laa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v2, 0x0

    const-class v9, Laa;

    monitor-enter v9

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Laa$b;

    move-object v5, v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v10, v5, Laa$b;->j:Laa$a;

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    monitor-exit v9

    return-void

    :pswitch_0
    iget-object v1, p0, Laa$c;->a:Laa;

    invoke-virtual {v1}, Laa;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v1, v5, Laa$b;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v10, :cond_0

    invoke-virtual {v10, v1}, Laa$a;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Laa$c;->a:Laa;

    invoke-virtual {v1}, Laa;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v5, Laa$b;->a:Ljava/lang/String;

    iget-object v3, v5, Laa$b;->b:[Ljava/lang/String;

    iget-object v4, v5, Laa$b;->c:Ljava/lang/String;

    iget-object v5, v5, Laa$b;->d:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v10, :cond_4

    invoke-virtual {v10, v2}, Laa$a;->a(Landroid/database/Cursor;)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Laa$c;->a:Laa;

    invoke-virtual {v1}, Laa;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v5, Laa$b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v5, Laa$b;->i:Landroid/content/ContentValues;

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Laa$a;->a()V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Laa$c;->a:Laa;

    invoke-virtual {v1}, Laa;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v5, Laa$b;->a:Ljava/lang/String;

    iget-object v4, v5, Laa$b;->i:Landroid/content/ContentValues;

    iget-object v6, v5, Laa$b;->c:Ljava/lang/String;

    iget-object v5, v5, Laa$b;->d:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Laa$a;->c()V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Laa$c;->a:Laa;

    invoke-virtual {v1}, Laa;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v5, Laa$b;->a:Ljava/lang/String;

    iget-object v4, v5, Laa$b;->c:Ljava/lang/String;

    iget-object v5, v5, Laa$b;->d:[Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Laa$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_0

    :cond_4
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
