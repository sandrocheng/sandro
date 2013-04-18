.class final Lcom/ijinshan/kinghelper/firewall/a/o;
.super Ljava/lang/Thread;
.source "OldDatabaseConversion.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/a/o;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/a/o;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/o;->a:Landroid/content/Context;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/o;->b:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "OldDatabaseConversion"

    const-string v6, "begin converSmsData>"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x3

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/jxphone/mosecurity/c/c;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v6}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    const-string v5, "sms"

    const/4 v6, 0x0

    const-string v7, "list_type = ? or list_type = ? or list_type = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v12}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "body"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "date"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v14, "list_type"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getShort(I)S

    invoke-static {}, Lcom/jxphone/mosecurity/c/c;->values()[Lcom/jxphone/mosecurity/c/c;

    move-result-object v21

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    aget-object v21, v21, v22

    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    const-string v22, "address"

    move-object v0, v15

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "body"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "date"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "firewall_log_description"

    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "person"

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "protocol"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "read"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "firewall_log_rule_id"

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "service_center"

    const-string v18, ""

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "subject"

    const-string v18, ""

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "firewall_log_time"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v17, "firewall_from"

    sget v18, Lcom/ijinshan/kinghelper/firewall/a/a;->b:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v17, "logtype"

    sget v18, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v15}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/ContentValues;)J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v19, v20

    const-string v16, "sms"

    const-string v20, "id=?"

    move-object v0, v4

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v13, v13, 0x1

    :cond_0
    const-string v16, "OldDatabaseConversion"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "converSmsData>re="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/16 v20, 0x0

    cmp-long v17, v17, v20

    if-lez v17, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "values="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    :cond_2
    move v6, v13

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move v5, v6

    :goto_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v4, "OldDatabaseConversion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end converSmsData>sucess="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/o;->a:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/o;->b:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/n;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/o;->a:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/o;->b:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v4, v5}, Lcom/ijinshan/kinghelper/firewall/a/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void

    .line 45
    :cond_3
    const-string v6, "OldDatabaseConversion"

    const-string v7, "  converSmsData no data"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v13

    goto :goto_2

    :cond_4
    move v5, v13

    goto :goto_3
.end method
