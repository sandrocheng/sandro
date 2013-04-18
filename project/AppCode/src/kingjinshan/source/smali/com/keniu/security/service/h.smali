.class final Lcom/keniu/security/service/h;
.super Ljava/lang/Thread;
.source "RubbishSMSScanServiceCtrl.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object p1, p0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 126
    iput v0, p0, Lcom/keniu/security/service/h;->b:I

    .line 128
    iput-boolean v0, p0, Lcom/keniu/security/service/h;->c:Z

    .line 131
    iput v0, p0, Lcom/keniu/security/service/h;->b:I

    .line 132
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/service/h;->c:Z

    .line 136
    return-void
.end method

.method public final run()V
    .locals 25

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->d()V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/a/w;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 145
    if-eqz v4, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 148
    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 149
    const-string v6, "address"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 150
    const-string v7, "body"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 151
    const-string v8, "subject"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 152
    const-string v9, "service_center"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 154
    const-string v10, "protocol"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 156
    const-string v11, "date"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 158
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 160
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 162
    const/4 v14, 0x0

    .line 163
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 164
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 165
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 167
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 169
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/keniu/security/service/h;->c:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    move-object/from16 v0, v18

    move v1, v14

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->a(II)V

    .line 175
    invoke-static/range {v16 .. v16}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v14

    .line 178
    if-eqz v14, :cond_0

    move-object v0, v14

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 183
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 185
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 187
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 188
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 190
    const-string v24, "address"

    move-object v0, v13

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v16, "subject"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v16, "service_center"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v16, "read"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v16, "protocol"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v16, "body"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v16, "date"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v16, "person"

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v16, "firewall_log_time"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 200
    const-string v16, "firewall_log_description"

    move-object v0, v14

    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v16, "firewall_log_rule_id"

    iget v14, v14, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v14, "firewall_from"

    sget v16, Lcom/ijinshan/kinghelper/firewall/a/a;->d:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v14, "logtype"

    sget v16, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-static {v13}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 208
    const-wide/16 v20, 0x0

    cmp-long v14, v16, v20

    if-lez v14, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/service/h;->b:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/keniu/security/service/h;->b:I

    .line 211
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v16, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v17, "_id=?"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v18, v20

    move-object v0, v14

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v14, v19

    .line 218
    goto/16 :goto_0

    :catch_0
    move-exception v14

    :cond_0
    move/from16 v14, v19

    .line 222
    goto/16 :goto_0

    .line 223
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/service/h;->a:Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/keniu/security/service/h;->c:Z

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/keniu/security/service/h;->b:I

    move v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->a(ZI)V

    .line 226
    return-void
.end method
