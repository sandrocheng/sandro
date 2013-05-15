.class public Lcom/avast/android/mobilesecurity/app/filter/core/a/e;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x7f

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x81

    const/4 v1, 0x0

    .line 1004
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1005
    :cond_0
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1007
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1009
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1010
    :goto_0
    if-lez v0, :cond_c

    .line 1011
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1012
    sget-boolean v4, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v4, :cond_2

    if-ne v6, v3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1013
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 1015
    sparse-switch v3, :sswitch_data_0

    .line 1143
    const-string v3, "PduParser"

    const-string v4, "Not supported Content-Type parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v6, v3, :cond_b

    .line 1145
    const-string v3, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :sswitch_0
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1032
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1033
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1034
    if-le v0, v8, :cond_4

    .line 1036
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1038
    sget-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 1039
    sget-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1040
    const/16 v3, 0x83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1053
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    .line 1054
    goto :goto_0

    .line 1046
    :cond_4
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1047
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1048
    const/16 v3, 0x83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1071
    :sswitch_1
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1072
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 1073
    const/16 v3, 0x99

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1077
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    .line 1078
    goto/16 :goto_0

    .line 1095
    :sswitch_2
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1096
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1097
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1099
    const/16 v3, 0x20

    if-le v0, v3, :cond_6

    if-lt v0, v8, :cond_7

    :cond_6
    if-nez v0, :cond_9

    .line 1102
    :cond_7
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1104
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 1106
    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :cond_8
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1121
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    .line 1122
    goto/16 :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1109
    const-string v4, "PduParser"

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1114
    :cond_9
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1115
    if-eqz p1, :cond_8

    .line 1116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1134
    :sswitch_3
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 1136
    const/16 v3, 0x97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1140
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    .line 1141
    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 1147
    goto/16 :goto_0

    .line 1153
    :cond_c
    if-eqz v0, :cond_d

    .line 1154
    const-string v0, "PduParser"

    const-string v1, "Corrupt Content-Type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_d
    return-void

    .line 1015
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 599
    const-string v0, "PduParser"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void
.end method

.method protected static a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 777
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 781
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 802
    const/4 v0, 0x1

    goto :goto_0

    .line 781
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method protected static a(Lcom/avast/android/mobilesecurity/app/filter/core/a/d;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x89

    const/16 v6, 0x85

    const-wide/16 v4, -0x1

    const/16 v3, 0x98

    const/4 v0, 0x0

    .line 1235
    if-nez p0, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return v0

    .line 1240
    :cond_1
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v1

    .line 1243
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v2

    .line 1244
    if-eqz v2, :cond_0

    .line 1250
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1253
    :pswitch_0
    const/16 v1, 0x84

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1254
    if-eqz v1, :cond_0

    .line 1259
    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->c(I)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v1

    .line 1260
    if-eqz v1, :cond_0

    .line 1265
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1266
    if-eqz v1, :cond_0

    .line 1442
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1273
    :pswitch_1
    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v1

    .line 1274
    if-eqz v1, :cond_0

    .line 1279
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1280
    if-nez v1, :cond_2

    goto :goto_0

    .line 1287
    :pswitch_2
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1288
    if-eqz v1, :cond_0

    .line 1293
    const/16 v1, 0x88

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->e(I)J

    move-result-wide v1

    .line 1294
    cmp-long v1, v4, v1

    if-eqz v1, :cond_0

    .line 1299
    const/16 v1, 0x8a

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1300
    if-eqz v1, :cond_0

    .line 1305
    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->e(I)J

    move-result-wide v1

    .line 1306
    cmp-long v1, v4, v1

    if-eqz v1, :cond_0

    .line 1311
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1312
    if-nez v1, :cond_2

    goto :goto_0

    .line 1319
    :pswitch_3
    const/16 v1, 0x95

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v1

    .line 1320
    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1326
    if-nez v1, :cond_2

    goto :goto_0

    .line 1333
    :pswitch_4
    const/16 v1, 0x84

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1334
    if-eqz v1, :cond_0

    .line 1339
    invoke-virtual {p0, v6}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->e(I)J

    move-result-wide v1

    .line 1340
    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1347
    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->e(I)J

    move-result-wide v1

    .line 1348
    cmp-long v1, v4, v1

    if-eqz v1, :cond_0

    .line 1353
    const/16 v1, 0x8b

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1354
    if-eqz v1, :cond_0

    .line 1359
    const/16 v1, 0x95

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v1

    .line 1360
    if-eqz v1, :cond_0

    .line 1365
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->d(I)[Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v1

    .line 1366
    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1373
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1374
    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1381
    :pswitch_7
    invoke-virtual {p0, v6}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->e(I)J

    move-result-wide v1

    .line 1382
    cmp-long v1, v4, v1

    if-eqz v1, :cond_0

    .line 1387
    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->c(I)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v1

    .line 1388
    if-eqz v1, :cond_0

    .line 1393
    const/16 v1, 0x8b

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_0

    .line 1399
    const/16 v1, 0x9b

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v1

    .line 1400
    if-eqz v1, :cond_0

    .line 1405
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->d(I)[Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v1

    .line 1406
    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1413
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->c(I)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v1

    .line 1414
    if-eqz v1, :cond_0

    .line 1419
    const/16 v1, 0x8b

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(I)[B

    move-result-object v1

    .line 1420
    if-eqz v1, :cond_0

    .line 1425
    const/16 v1, 0x9b

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(I)I

    move-result v1

    .line 1426
    if-eqz v1, :cond_0

    .line 1431
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->d(I)[Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v1

    .line 1432
    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected static a(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 715
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 733
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 736
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 737
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 738
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 741
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 756
    :goto_0
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->b(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0

    .line 742
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 745
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 748
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x20

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x7f

    const/4 v4, 0x0

    .line 1173
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1176
    :cond_0
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1177
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1178
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    if-ne v6, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1179
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1181
    and-int/lit16 v0, v0, 0xff

    .line 1183
    if-ge v0, v7, :cond_8

    .line 1184
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1185
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1186
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1187
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1188
    sget-boolean v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v3, :cond_2

    if-ne v6, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1189
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1190
    and-int/lit16 v0, v0, 0xff

    .line 1192
    if-lt v0, v7, :cond_5

    if-gt v0, v5, :cond_5

    .line 1193
    invoke-static {p0, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1208
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1209
    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1210
    if-lez v1, :cond_3

    .line 1211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1214
    :cond_3
    if-gez v1, :cond_4

    .line 1215
    const-string v0, "PduParser"

    const-string v1, "Corrupt MMS message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1225
    :cond_4
    :goto_1
    return-object v0

    .line 1194
    :cond_5
    if-le v0, v5, :cond_7

    .line 1195
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1197
    sget-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 1198
    sget-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1200
    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1201
    invoke-static {p0, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1204
    :cond_7
    const-string v0, "PduParser"

    const-string v1, "Corrupt content-type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 1218
    :cond_8
    if-gt v0, v5, :cond_9

    .line 1219
    invoke-static {p0, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 1221
    :cond_9
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/c;->a:[Ljava/lang/String;

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method

.method protected static b(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 614
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 615
    :cond_0
    const/4 v1, 0x0

    .line 616
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 617
    if-ne v0, v3, :cond_1

    .line 633
    :goto_0
    return v0

    .line 621
    :cond_1
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_2

    .line 622
    shl-int/lit8 v1, v1, 0x7

    .line 623
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v1, v0

    .line 624
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 625
    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 630
    :cond_2
    shl-int/lit8 v1, v1, 0x7

    .line 631
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    .line 633
    goto :goto_0
.end method

.method protected static b(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 821
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 832
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 825
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 832
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static b(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 837
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 838
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 839
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 840
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v2, :cond_1

    if-ne v3, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 841
    :cond_1
    if-eq v3, v0, :cond_4

    if-eqz v0, :cond_4

    .line 843
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 844
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 853
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 854
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v2, :cond_1

    if-ne v3, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 848
    :cond_3
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 849
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 857
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 858
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 861
    :goto_1
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static c(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter

    .prologue
    .line 651
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 652
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 653
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 654
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 656
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_2

    .line 659
    :goto_0
    return v0

    .line 658
    :cond_2
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    .line 659
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->b(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 662
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Value length > LENGTH_QUOTE!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static c(Ljava/io/ByteArrayInputStream;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 966
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 967
    :cond_0
    new-array v0, p1, [B

    .line 968
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    .line 969
    if-ge v0, p1, :cond_1

    .line 970
    const/4 v0, -0x1

    .line 972
    :cond_1
    return v0
.end method

.method protected static d(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 676
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 677
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 680
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 681
    sget-boolean v2, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 682
    :cond_1
    and-int/lit16 v0, v0, 0xff

    .line 684
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 685
    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    .line 686
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 688
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 691
    :goto_0
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 694
    if-eqz v0, :cond_2

    .line 695
    :try_start_0
    new-instance v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    invoke-direct {v1, v0, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;-><init>(I[B)V

    move-object v0, v1

    .line 703
    :goto_1
    return-object v0

    .line 697
    :cond_2
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 699
    :catch_0
    move-exception v0

    .line 700
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected static e(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter

    .prologue
    .line 871
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 872
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 873
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 874
    :cond_1
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected static f(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter

    .prologue
    .line 891
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 892
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 893
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 894
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method protected static g(Ljava/io/ByteArrayInputStream;)J
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    .line 914
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 915
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 916
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    if-ne v6, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 917
    :cond_1
    and-int/lit16 v3, v0, 0xff

    .line 919
    if-le v3, v7, :cond_2

    .line 920
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_2
    const-wide/16 v1, 0x0

    .line 925
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    .line 926
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 927
    sget-boolean v5, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v5, :cond_3

    if-ne v6, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 928
    :cond_3
    shl-long/2addr v1, v7

    .line 929
    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 932
    :cond_4
    return-wide v1
.end method

.method protected static h(Ljava/io/ByteArrayInputStream;)J
    .locals 2
    .parameter

    .prologue
    .line 946
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 947
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 948
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 949
    sget-boolean v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 950
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 951
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 952
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    int-to-long v0, v0

    .line 954
    :goto_0
    return-wide v0

    :cond_2
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->g(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/d;
    .locals 13
    .parameter

    .prologue
    const/4 v6, 0x1

    const/16 v12, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    if-nez p1, :cond_0

    move-object v0, v2

    .line 590
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;

    invoke-direct {v3}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;-><init>()V

    move v0, v6

    .line 92
    :cond_1
    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_d

    .line 93
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 94
    packed-switch v7, :pswitch_data_0

    .line 585
    :pswitch_0
    const-string v4, "Unknown header"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_1
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 98
    packed-switch v4, :pswitch_data_1

    .line 118
    :try_start_0
    invoke-virtual {v3, v4, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set invalid Octet value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the header filed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 122
    goto :goto_0

    :pswitch_2
    move-object v0, v2

    .line 115
    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Octet header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 125
    goto :goto_0

    .line 158
    :pswitch_3
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 161
    :try_start_1
    invoke-virtual {v3, v4, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 162
    :catch_2
    move-exception v0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set invalid Octet value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the header filed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 165
    goto/16 :goto_0

    .line 166
    :catch_3
    move-exception v0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Octet header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 168
    goto/16 :goto_0

    .line 179
    :pswitch_4
    :try_start_2
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->g(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 180
    invoke-virtual {v3, v4, v5, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 181
    :catch_4
    move-exception v0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 183
    goto/16 :goto_0

    .line 194
    :pswitch_5
    :try_start_3
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 195
    invoke-virtual {v3, v4, v5, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 196
    :catch_5
    move-exception v0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 198
    goto/16 :goto_0

    .line 224
    :pswitch_6
    invoke-static {p1, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 225
    if-eqz v4, :cond_1

    .line 227
    :try_start_4
    invoke-virtual {v3, v4, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 228
    :catch_6
    move-exception v4

    .line 229
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    :catch_7
    move-exception v0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 232
    goto/16 :goto_0

    .line 248
    :pswitch_7
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->d(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v4

    .line 250
    if-eqz v4, :cond_1

    .line 252
    :try_start_5
    invoke-virtual {v3, v4, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 253
    :catch_8
    move-exception v4

    .line 254
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 255
    :catch_9
    move-exception v0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 257
    goto/16 :goto_0

    .line 268
    :pswitch_8
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->d(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v5

    .line 270
    if-eqz v5, :cond_1

    .line 271
    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a()[B

    move-result-object v8

    .line 272
    if-eqz v8, :cond_3

    .line 273
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    .line 274
    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 275
    if-lez v8, :cond_2

    .line 276
    invoke-virtual {v4, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 279
    :cond_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 287
    :cond_3
    :try_start_7
    invoke-virtual {v3, v5, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->b(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 288
    :catch_a
    move-exception v4

    .line 289
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 280
    :catch_b
    move-exception v0

    .line 281
    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 282
    goto/16 :goto_0

    .line 290
    :catch_c
    move-exception v0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 292
    goto/16 :goto_0

    .line 305
    :pswitch_9
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 308
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 313
    :try_start_8
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->g(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v4

    .line 318
    const/16 v9, 0x81

    if-ne v9, v8, :cond_4

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 325
    :cond_4
    :try_start_9
    invoke-virtual {v3, v4, v5, v7}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 326
    :catch_d
    move-exception v0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 328
    goto/16 :goto_0

    .line 314
    :catch_e
    move-exception v0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 316
    goto/16 :goto_0

    .line 339
    :pswitch_a
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 342
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 345
    if-ne v12, v4, :cond_7

    .line 347
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->d(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v4

    .line 348
    if-eqz v4, :cond_6

    .line 349
    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a()[B

    move-result-object v8

    .line 350
    if-eqz v8, :cond_6

    .line 351
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    .line 352
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 353
    if-lez v8, :cond_5

    .line 354
    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 357
    :cond_5
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 375
    :cond_6
    :goto_2
    const/16 v5, 0x89

    :try_start_b
    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 376
    :catch_f
    move-exception v4

    .line 377
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 358
    :catch_10
    move-exception v0

    .line 359
    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 360
    goto/16 :goto_0

    .line 366
    :cond_7
    :try_start_c
    new-instance v4, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    const-string v5, "insert-address-token"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_2

    .line 368
    :catch_11
    move-exception v0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 370
    goto/16 :goto_0

    .line 378
    :catch_12
    move-exception v0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 380
    goto/16 :goto_0

    .line 387
    :pswitch_b
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 388
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 390
    if-lt v4, v12, :cond_b

    .line 393
    if-ne v12, v4, :cond_8

    .line 394
    :try_start_d
    const-string v4, "personal"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 410
    :catch_13
    move-exception v4

    .line 411
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 397
    :cond_8
    const/16 v5, 0x81

    if-ne v5, v4, :cond_9

    .line 398
    :try_start_e
    const-string v4, "advertisement"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 412
    :catch_14
    move-exception v0

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 414
    goto/16 :goto_0

    .line 401
    :cond_9
    const/16 v5, 0x82

    if-ne v5, v4, :cond_a

    .line 402
    :try_start_f
    const-string v4, "informational"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V

    goto/16 :goto_1

    .line 405
    :cond_a
    const/16 v5, 0x83

    if-ne v5, v4, :cond_1

    .line 406
    const-string v4, "auto"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 418
    :cond_b
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 419
    invoke-static {p1, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 420
    if-eqz v4, :cond_1

    .line 422
    const/16 v5, 0x8a

    :try_start_10
    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 423
    :catch_15
    move-exception v4

    .line 424
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    :catch_16
    move-exception v0

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 427
    goto/16 :goto_0

    .line 435
    :pswitch_c
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 438
    const/16 v5, 0x8d

    :try_start_11
    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(II)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 439
    :catch_17
    move-exception v0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set invalid Octet value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the header filed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 442
    goto/16 :goto_0

    .line 443
    :catch_18
    move-exception v0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Octet header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 445
    goto/16 :goto_0

    .line 454
    :pswitch_d
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 458
    :try_start_12
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->h(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 465
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->d(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    move-result-object v4

    .line 467
    if-eqz v4, :cond_1

    .line 469
    const/16 v5, 0xa0

    :try_start_13
    invoke-virtual {v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 471
    :catch_19
    move-exception v4

    .line 472
    const-string v4, "null pointer error!"

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 459
    :catch_1a
    move-exception v0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not Integer-Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 461
    goto/16 :goto_0

    .line 473
    :catch_1b
    move-exception v0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 475
    goto/16 :goto_0

    .line 485
    :pswitch_e
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 489
    :try_start_14
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->h(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 497
    :try_start_15
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->g(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 498
    const/16 v8, 0xa1

    invoke-virtual {v3, v4, v5, v8}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 500
    :catch_1c
    move-exception v0

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 502
    goto/16 :goto_0

    .line 490
    :catch_1d
    move-exception v0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not Integer-Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 492
    goto/16 :goto_0

    .line 515
    :pswitch_f
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 518
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    .line 521
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->d(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    goto/16 :goto_1

    .line 534
    :pswitch_10
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->c(Ljava/io/ByteArrayInputStream;)I

    .line 537
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->e(Ljava/io/ByteArrayInputStream;)I

    .line 541
    :try_start_16
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->h(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 542
    :catch_1e
    move-exception v0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not Integer-Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 544
    goto/16 :goto_0

    .line 553
    :pswitch_11
    invoke-static {p1, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 561
    :pswitch_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 563
    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v0

    .line 566
    if-eqz v0, :cond_c

    .line 568
    const/16 v4, 0x84

    :try_start_17
    invoke-virtual {v3, v0, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/a/d;->a([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    :cond_c
    :goto_3
    move v0, v1

    .line 578
    goto/16 :goto_1

    .line 569
    :catch_1f
    move-exception v0

    .line 570
    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 571
    :catch_20
    move-exception v0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    move-object v0, v2

    .line 573
    goto/16 :goto_0

    :cond_d
    move-object v0, v3

    .line 590
    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 98
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a([B)Lcom/avast/android/mobilesecurity/app/filter/core/a/d;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/d;

    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Lcom/avast/android/mobilesecurity/app/filter/core/a/d;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const-string v1, "check mandatory headers failed!"

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 75
    goto :goto_0
.end method
