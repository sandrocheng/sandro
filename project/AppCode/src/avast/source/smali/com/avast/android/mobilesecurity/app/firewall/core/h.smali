.class public Lcom/avast/android/mobilesecurity/app/firewall/core/h;
.super Landroid/support/v4/a/f;
.source "FirewallLogLoader.java"


# instance fields
.field private t:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->t:Ljava/util/Map;

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11
    .parameter

    .prologue
    const/4 v10, -0x1

    .line 141
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    const/16 v0, -0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 148
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 149
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 150
    const-string v0, "[AVASTWALL]"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 155
    const-string v0, "UID="

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v10, :cond_5

    const-string v1, " "

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_5

    .line 156
    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 159
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/firewall/core/j;

    .line 164
    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/core/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;-><init>(Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/app/firewall/core/i;)V

    .line 166
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_1
    const-wide/16 v1, 0x0

    .line 170
    const-string v7, "LEN="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    const-string v8, " "

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 171
    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v1, v1

    .line 179
    :cond_2
    :goto_2
    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->a(Lcom/avast/android/mobilesecurity/app/firewall/core/j;J)I

    .line 181
    const-string v7, "DST="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_0

    const-string v8, " "

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 182
    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->c(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->c(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->c(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long v0, v8, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    const-wide/16 v1, 0x1

    goto :goto_2

    .line 186
    :cond_3
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->c(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    :cond_4
    return-object v5

    :cond_5
    move-object v1, v3

    goto/16 :goto_1
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/List;
    .locals 2
    .parameter

    .prologue
    .line 200
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 201
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/core/i;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/i;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/core/h;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 213
    return-object v0
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->f()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/database/Cursor;
    .locals 15

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->j()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 68
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->j()Landroid/content/Context;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "total_blocked"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "last_targets"

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 74
    :try_start_0
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->Y()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 128
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;)Z

    move-result v3

    .line 79
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->Z()Z

    move-result v0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v3, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "dmesg | $GREP AVASTWALL\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/avast/android/mobilesecurity/app/firewall/core/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 84
    if-eqz v0, :cond_1

    move-object v0, v2

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 90
    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 93
    const v3, 0x7f0c030b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 94
    new-instance v6, Lcom/avast/android/generic/util/ac;

    invoke-direct {v6, v1}, Lcom/avast/android/generic/util/ac;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/firewall/core/j;

    .line 97
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->a(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/lang/Integer;

    move-result-object v8

    .line 98
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/core/h;->t:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    if-nez v1, :cond_6

    move-object v4, v5

    .line 107
    :goto_2
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->b(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)I

    move-result v1

    int-to-long v9, v1

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const/4 v1, 0x1

    .line 111
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->c(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v3, v1

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    if-nez v3, :cond_3

    .line 113
    const-string v3, ",\n"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/core/j;->c(Lcom/avast/android/mobilesecurity/app/firewall/core/j;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Lcom/avast/android/generic/util/ac;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3

    .line 121
    :cond_4
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "AvastMobileSecurity"

    const-string v3, "Error on reading firewall log"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move-object v0, v2

    .line 128
    goto/16 :goto_0

    :cond_6
    move-object v4, v1

    goto :goto_2
.end method
