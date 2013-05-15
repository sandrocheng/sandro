.class public Lcom/avast/android/mobilesecurity/app/filter/core/x;
.super Ljava/lang/Object;
.source "Telephony.java"


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 130
    const-string v1, "type"

    .line 131
    const-string v2, "thread_id"

    .line 132
    const-string v3, "address"

    .line 133
    const-string v4, "body"

    .line 134
    const-string v5, "date"

    .line 135
    const-string v6, "read"

    .line 136
    const-string v7, "status"

    .line 137
    const-string v8, "subject"

    .line 139
    :try_start_0
    const-string v0, "android.provider.Telephony$TextBasedSmsColumns"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 141
    const-string v0, "TYPE"

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    const-string v1, "THREAD_ID"

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :try_start_2
    const-string v2, "ADDRESS"

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 147
    :try_start_3
    const-string v3, "BODY"

    invoke-virtual {v9, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 149
    :try_start_4
    const-string v4, "DATE"

    invoke-virtual {v9, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 151
    :try_start_5
    const-string v5, "READ"

    invoke-virtual {v9, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 153
    :try_start_6
    const-string v6, "STATUS"

    invoke-virtual {v9, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 155
    :try_start_7
    const-string v7, "SUBJECT"

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 162
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/x;->c:Ljava/lang/String;

    .line 163
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/x;->d:Ljava/lang/String;

    .line 164
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/x;->e:Ljava/lang/String;

    .line 165
    sput-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/x;->j:Ljava/lang/String;

    .line 166
    sput-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/x;->f:Ljava/lang/String;

    .line 167
    sput-object v5, Lcom/avast/android/mobilesecurity/app/filter/core/x;->g:Ljava/lang/String;

    .line 168
    sput-object v6, Lcom/avast/android/mobilesecurity/app/filter/core/x;->h:Ljava/lang/String;

    .line 169
    sput-object v7, Lcom/avast/android/mobilesecurity/app/filter/core/x;->i:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    move-object v11, v7

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v11

    .line 158
    :goto_1
    :try_start_8
    const-string v9, "Telephony.TextBasedSmsColumns"

    const-string v10, "Android class not found."

    invoke-static {v9, v10, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 162
    sput-object v7, Lcom/avast/android/mobilesecurity/app/filter/core/x;->c:Ljava/lang/String;

    .line 163
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/x;->d:Ljava/lang/String;

    .line 164
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/x;->e:Ljava/lang/String;

    .line 165
    sput-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/x;->j:Ljava/lang/String;

    .line 166
    sput-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/x;->f:Ljava/lang/String;

    .line 167
    sput-object v5, Lcom/avast/android/mobilesecurity/app/filter/core/x;->g:Ljava/lang/String;

    .line 168
    sput-object v6, Lcom/avast/android/mobilesecurity/app/filter/core/x;->h:Ljava/lang/String;

    .line 169
    sput-object v8, Lcom/avast/android/mobilesecurity/app/filter/core/x;->i:Ljava/lang/String;

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    move-object v11, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v11

    :goto_2
    sput-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/x;->c:Ljava/lang/String;

    .line 163
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/x;->d:Ljava/lang/String;

    .line 164
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/x;->e:Ljava/lang/String;

    .line 165
    sput-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/x;->j:Ljava/lang/String;

    .line 166
    sput-object v5, Lcom/avast/android/mobilesecurity/app/filter/core/x;->f:Ljava/lang/String;

    .line 167
    sput-object v6, Lcom/avast/android/mobilesecurity/app/filter/core/x;->g:Ljava/lang/String;

    .line 168
    sput-object v7, Lcom/avast/android/mobilesecurity/app/filter/core/x;->h:Ljava/lang/String;

    .line 169
    sput-object v8, Lcom/avast/android/mobilesecurity/app/filter/core/x;->i:Ljava/lang/String;

    throw v0

    .line 162
    :catchall_1
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v11, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_3
    move-exception v3

    move-object v11, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_4
    move-exception v4

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_5
    move-exception v5

    move-object v11, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_6
    move-exception v6

    move-object v11, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_7
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_8
    move-exception v0

    move-object v11, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v7

    move-object v7, v11

    goto :goto_2

    .line 157
    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, v11

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v11, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, v11

    goto :goto_1

    :catch_3
    move-exception v3

    move-object v11, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_1

    :catch_4
    move-exception v4

    move-object v11, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_1

    :catch_5
    move-exception v5

    move-object v11, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_1

    :catch_6
    move-exception v6

    move-object v11, v6

    move-object v6, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_1

    :catch_7
    move-exception v7

    move-object v11, v7

    move-object v7, v0

    move-object v0, v11

    goto/16 :goto_1
.end method
