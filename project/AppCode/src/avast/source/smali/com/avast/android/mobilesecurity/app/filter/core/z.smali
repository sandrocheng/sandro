.class public Lcom/avast/android/mobilesecurity/app/filter/core/z;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final b:Ljava/lang/String;

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
    .locals 13

    .prologue
    .line 602
    const-string v1, "date"

    .line 603
    const-string v2, "recipient_ids"

    .line 604
    const-string v3, "message_count"

    .line 605
    const-string v4, "read"

    .line 606
    const-string v5, "snippet"

    .line 607
    const-string v6, "snippet_cs"

    .line 608
    const-string v7, "type"

    .line 609
    const-string v8, "error"

    .line 610
    const-string v9, "has_attachment"

    .line 612
    :try_start_0
    const-string v0, "android.provider.Telephony$ThreadsColumns"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 614
    const-string v0, "DATE"

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :try_start_1
    const-string v1, "RECIPIENT_IDS"

    invoke-virtual {v10, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    :try_start_2
    const-string v2, "MESSAGE_COUNT"

    invoke-virtual {v10, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 620
    :try_start_3
    const-string v3, "READ"

    invoke-virtual {v10, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 622
    :try_start_4
    const-string v4, "SNIPPET"

    invoke-virtual {v10, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 624
    :try_start_5
    const-string v5, "SNIPPET_CHARSET"

    invoke-virtual {v10, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 626
    :try_start_6
    const-string v6, "TYPE"

    invoke-virtual {v10, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 628
    :try_start_7
    const-string v7, "ERROR"

    invoke-virtual {v10, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 630
    :try_start_8
    const-string v8, "HAS_ATTACHMENT"

    invoke-virtual {v10, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 637
    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/z;->b:Ljava/lang/String;

    .line 638
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/z;->c:Ljava/lang/String;

    .line 639
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/z;->d:Ljava/lang/String;

    .line 640
    sput-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/z;->e:Ljava/lang/String;

    .line 641
    sput-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/z;->f:Ljava/lang/String;

    .line 642
    sput-object v5, Lcom/avast/android/mobilesecurity/app/filter/core/z;->g:Ljava/lang/String;

    .line 643
    sput-object v6, Lcom/avast/android/mobilesecurity/app/filter/core/z;->h:Ljava/lang/String;

    .line 644
    sput-object v7, Lcom/avast/android/mobilesecurity/app/filter/core/z;->i:Ljava/lang/String;

    .line 645
    sput-object v8, Lcom/avast/android/mobilesecurity/app/filter/core/z;->j:Ljava/lang/String;

    .line 647
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    move-object v12, v8

    move-object v8, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v12

    .line 633
    :goto_1
    :try_start_9
    const-string v10, "Telephony.ThreadsColumns"

    const-string v11, "Android class not found."

    invoke-static {v10, v11, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 637
    sput-object v8, Lcom/avast/android/mobilesecurity/app/filter/core/z;->b:Ljava/lang/String;

    .line 638
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/z;->c:Ljava/lang/String;

    .line 639
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/z;->d:Ljava/lang/String;

    .line 640
    sput-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/z;->e:Ljava/lang/String;

    .line 641
    sput-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/z;->f:Ljava/lang/String;

    .line 642
    sput-object v5, Lcom/avast/android/mobilesecurity/app/filter/core/z;->g:Ljava/lang/String;

    .line 643
    sput-object v6, Lcom/avast/android/mobilesecurity/app/filter/core/z;->h:Ljava/lang/String;

    .line 644
    sput-object v7, Lcom/avast/android/mobilesecurity/app/filter/core/z;->i:Ljava/lang/String;

    .line 645
    sput-object v9, Lcom/avast/android/mobilesecurity/app/filter/core/z;->j:Ljava/lang/String;

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    move-object v12, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v12

    :goto_2
    sput-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/z;->b:Ljava/lang/String;

    .line 638
    sput-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/z;->c:Ljava/lang/String;

    .line 639
    sput-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/z;->d:Ljava/lang/String;

    .line 640
    sput-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/z;->e:Ljava/lang/String;

    .line 641
    sput-object v5, Lcom/avast/android/mobilesecurity/app/filter/core/z;->f:Ljava/lang/String;

    .line 642
    sput-object v6, Lcom/avast/android/mobilesecurity/app/filter/core/z;->g:Ljava/lang/String;

    .line 643
    sput-object v7, Lcom/avast/android/mobilesecurity/app/filter/core/z;->h:Ljava/lang/String;

    .line 644
    sput-object v8, Lcom/avast/android/mobilesecurity/app/filter/core/z;->i:Ljava/lang/String;

    .line 645
    sput-object v9, Lcom/avast/android/mobilesecurity/app/filter/core/z;->j:Ljava/lang/String;

    throw v0

    .line 637
    :catchall_1
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_3
    move-exception v3

    move-object v12, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_4
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_5
    move-exception v5

    move-object v12, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_6
    move-exception v6

    move-object v12, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_7
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_8
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object v12, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v8

    move-object v8, v12

    goto :goto_2

    .line 632
    :catch_1
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_3
    move-exception v3

    move-object v12, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_4
    move-exception v4

    move-object v12, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_5
    move-exception v5

    move-object v12, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_6
    move-exception v6

    move-object v12, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_7
    move-exception v7

    move-object v12, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1

    :catch_8
    move-exception v8

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_1
.end method
