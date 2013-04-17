.class public Lcom/tencent/feedback/common/NetConsumeUtil;
.super Ljava/lang/Object;
.source "NetConsumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static clearTodayConsume(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 215
    invoke-static {p0}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_2

    .line 219
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 221
    const-string v3, "local_rqd_upload_todaynowifi"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v3

    .line 222
    if-eqz v3, :cond_0

    .line 224
    new-array v4, v6, [J

    fill-array-data v4, :array_0

    .line 225
    invoke-virtual {v3, v5}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 226
    invoke-virtual {v3, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 227
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 228
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    .line 229
    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Lcom/tencent/feedback/a/a;)V

    .line 233
    :cond_0
    const-string v3, "local_rqd_upload_todaywifi"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v3

    .line 234
    if-eqz v3, :cond_1

    .line 236
    new-array v4, v6, [J

    fill-array-data v4, :array_1

    .line 237
    invoke-virtual {v3, v5}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 238
    invoke-virtual {v3, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 239
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    .line 240
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 241
    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Lcom/tencent/feedback/a/a;)V

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    const-string v0, "CountProccessAbs has not been inited!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 236
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static clearTotalConsume(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 110
    invoke-static {p0}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2

    .line 114
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 116
    const-string v3, "local_rqd_upload_totalnowifi"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_0

    .line 119
    new-array v4, v6, [J

    fill-array-data v4, :array_0

    .line 120
    invoke-virtual {v3, v5}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 121
    invoke-virtual {v3, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 122
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 123
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    .line 124
    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Lcom/tencent/feedback/a/a;)V

    .line 128
    :cond_0
    const-string v3, "local_rqd_upload_totalwifi"

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v3

    .line 129
    if-eqz v3, :cond_1

    .line 131
    new-array v4, v6, [J

    fill-array-data v4, :array_1

    .line 132
    invoke-virtual {v3, v5}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 133
    invoke-virtual {v3, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 134
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    .line 135
    invoke-virtual {v3, v1, v2}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 136
    invoke-virtual {v0, v3}, Lcom/tencent/feedback/a/c;->a(Lcom/tencent/feedback/a/a;)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    const-string v0, "CountProccessAbs has not been inited!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 131
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getTodayConsume(Landroid/content/Context;)Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;
    .locals 24
    .parameter

    .prologue
    .line 147
    const-string v2, "CountProccessAbs getTodayConsume start!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 149
    invoke-static/range {p0 .. p0}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v15

    .line 150
    if-eqz v15, :cond_4

    .line 152
    new-instance v16, Ljava/util/Date;

    invoke-direct/range {v16 .. v16}, Ljava/util/Date;-><init>()V

    .line 153
    const-wide/16 v13, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 155
    const-string v12, "local_rqd_upload_todaynowifi"

    invoke-virtual {v15, v12}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v12

    .line 156
    if-eqz v12, :cond_1

    .line 158
    new-instance v17, Ljava/util/Date;

    invoke-virtual {v12}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v18

    invoke-direct/range {v17 .. v19}, Ljava/util/Date;-><init>(J)V

    .line 159
    invoke-static/range {v16 .. v17}, Lcom/tencent/feedback/common/g;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 162
    invoke-virtual {v12}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v6

    .line 163
    const-wide/16 v8, 0x0

    invoke-virtual {v12}, Lcom/tencent/feedback/a/a;->e()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v8, v8, v17

    .line 164
    invoke-virtual {v12}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v12

    .line 165
    if-eqz v12, :cond_1

    .line 167
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 169
    const/4 v2, 0x1

    aget-wide v2, v12, v2

    const/4 v4, 0x2

    aget-wide v4, v12, v4

    add-long v10, v2, v4

    .line 170
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    aget-wide v4, v12, v4

    add-long/2addr v4, v2

    .line 171
    const-wide/16 v2, 0x0

    const/16 v17, 0x2

    aget-wide v17, v12, v17

    add-long v2, v2, v17

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v9, v22

    move-wide/from16 v11, v20

    .line 182
    :goto_0
    const-string v8, "local_rqd_upload_todaywifi"

    invoke-virtual {v15, v8}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v8

    .line 183
    if-eqz v8, :cond_3

    .line 185
    new-instance v15, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 186
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/tencent/feedback/common/g;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 188
    invoke-virtual {v8}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v15

    move-wide v0, v15

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 189
    invoke-virtual {v8}, Lcom/tencent/feedback/a/a;->e()I

    move-result v15

    int-to-long v15, v15

    add-long/2addr v11, v15

    .line 190
    invoke-virtual {v8}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v8

    .line 191
    if-eqz v8, :cond_3

    .line 193
    array-length v15, v8

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 195
    const/4 v13, 0x1

    aget-wide v13, v8, v13

    const/4 v15, 0x2

    aget-wide v15, v8, v15

    add-long/2addr v13, v15

    .line 196
    const/4 v15, 0x1

    aget-wide v15, v8, v15

    add-long/2addr v4, v15

    .line 197
    const/4 v15, 0x2

    aget-wide v15, v8, v15

    add-long/2addr v2, v15

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-wide v3, v6

    move-wide v5, v11

    move-wide v7, v13

    move-wide/from16 v13, v20

    move-wide/from16 v11, v22

    .line 206
    :goto_1
    new-instance v2, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;

    invoke-direct/range {v2 .. v14}, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;-><init>(JJJJJJ)V

    .line 209
    :goto_2
    return-object v2

    .line 175
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "LocalCount_TodayNotWifiConsumed datas error ,length not 3 but"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v12, v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    :cond_1
    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move-wide/from16 v9, v22

    move-wide/from16 v11, v20

    goto :goto_0

    .line 201
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "LocalCount_TodayWifiConsumed datas error ,length not 3 but"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v8, v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    :cond_3
    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-wide v3, v6

    move-wide v5, v11

    move-wide v7, v13

    move-wide/from16 v13, v20

    move-wide/from16 v11, v22

    goto :goto_1

    .line 208
    :cond_4
    const-string v2, "CountProccessAbs has not been inited!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 209
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static getTotalConsume(Landroid/content/Context;)Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;
    .locals 20
    .parameter

    .prologue
    .line 53
    invoke-static/range {p0 .. p0}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v13

    .line 54
    if-eqz v13, :cond_4

    .line 56
    const-wide/16 v11, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 58
    const-string v10, "local_rqd_upload_totalnowifi"

    invoke-virtual {v13, v10}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v10

    .line 59
    if-eqz v10, :cond_1

    .line 61
    invoke-virtual {v10}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v4

    .line 62
    const-wide/16 v6, 0x0

    invoke-virtual {v10}, Lcom/tencent/feedback/a/a;->e()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v6, v14

    .line 63
    invoke-virtual {v10}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v10

    .line 64
    if-eqz v10, :cond_1

    .line 66
    array-length v14, v10

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 68
    const/4 v0, 0x1

    aget-wide v0, v10, v0

    const/4 v2, 0x2

    aget-wide v2, v10, v2

    add-long v8, v0, v2

    .line 69
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    aget-wide v2, v10, v2

    add-long/2addr v2, v0

    .line 70
    const-wide/16 v0, 0x0

    const/4 v14, 0x2

    aget-wide v14, v10, v14

    add-long/2addr v0, v14

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    .line 80
    :goto_0
    const-string v6, "local_rqd_upload_totalwifi"

    invoke-virtual {v13, v6}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_3

    .line 83
    invoke-virtual {v6}, Lcom/tencent/feedback/a/a;->c()J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 84
    invoke-virtual {v6}, Lcom/tencent/feedback/a/a;->e()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v9, v13

    .line 85
    invoke-virtual {v6}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v6

    .line 86
    if-eqz v6, :cond_3

    .line 88
    array-length v13, v6

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    .line 90
    const/4 v11, 0x1

    aget-wide v11, v6, v11

    const/4 v13, 0x2

    aget-wide v13, v6, v13

    add-long/2addr v11, v13

    .line 91
    const/4 v13, 0x1

    aget-wide v13, v6, v13

    add-long/2addr v2, v13

    .line 92
    const/4 v13, 0x2

    aget-wide v13, v6, v13

    add-long/2addr v0, v13

    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    move-wide v1, v4

    move-wide v3, v9

    move-wide v5, v11

    move-wide/from16 v11, v16

    move-wide/from16 v9, v18

    .line 101
    :goto_1
    new-instance v0, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;

    invoke-direct/range {v0 .. v12}, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;-><init>(JJJJJJ)V

    .line 104
    :goto_2
    return-object v0

    .line 74
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LocalCount_NotWifiConsumed datas error ,length not 3 but"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v10, v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    :cond_1
    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v7, v18

    move-wide/from16 v9, v16

    goto :goto_0

    .line 96
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LocalCount_WifiConsumed datas error ,length not 3 but"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v6, v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    :cond_3
    move-wide/from16 v16, v0

    move-wide/from16 v18, v2

    move-wide v1, v4

    move-wide v3, v9

    move-wide v5, v11

    move-wide/from16 v11, v16

    move-wide/from16 v9, v18

    goto :goto_1

    .line 103
    :cond_4
    const-string v0, "CountProccessAbs has not been inited!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    goto :goto_2
.end method
