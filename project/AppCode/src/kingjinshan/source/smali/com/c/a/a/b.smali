.class public final Lcom/c/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/c/a/a/q;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/c/a/a/b;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    new-instance v0, Lcom/c/a/a/q;

    invoke-direct {v0, p1, p2}, Lcom/c/a/a/q;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/c/a/a/b;->a:Lcom/c/a/a/q;

    .line 40
    return-void
.end method

.method private a(DDI)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v4, 0x40f86a0000000000L

    .line 79
    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longitude == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/b;->a:Lcom/c/a/a/q;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v2, Lcom/c/a/a/n;->b:Z

    if-eqz v2, :cond_4

    if-nez p5, :cond_5

    :cond_4
    move-object v0, v1

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_5
    mul-double v2, p3, v4

    double-to-int v2, v2

    mul-double v3, p1, v4

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://wireless.mapbar.com/reverse/reverseGeocoding.json?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/c/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/c/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&gb=02&ch=GBK&rn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&nq=2&format=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/c/a/a/ah;

    iget-object v4, v0, Lcom/c/a/a/q;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/c/a/a/ah;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/c/a/a/ah;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/c/a/a/ah;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    iget-object v0, v0, Lcom/c/a/a/q;->b:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/c/a/a/o;->a(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move-object v0, v1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v1, "Geocoder"

    const-string v2, "getFromLocation: got Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locationName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/b;->a:Lcom/c/a/a/q;

    invoke-virtual {v0, p1, p2}, Lcom/c/a/a/q;->a(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "Geocoder"

    const-string v2, "getFromLocationName: got Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;IDDDD)Ljava/util/List;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p3, v3

    if-ltz v3, :cond_1

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p3, v3

    if-lez v3, :cond_2

    .line 175
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_2
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p5, v3

    if-ltz v3, :cond_3

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p5, v3

    if-lez v3, :cond_4

    .line 179
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_4
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p7, v3

    if-ltz v3, :cond_5

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p7, v3

    if-lez v3, :cond_6

    .line 183
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upperRightLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_6
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p9, v3

    if-ltz v3, :cond_7

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p9, v3

    if-lez v3, :cond_8

    .line 187
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upperRightLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_8
    const-wide/16 v3, 0x0

    cmpl-double v3, p3, v3

    if-nez v3, :cond_9

    const-wide/16 v3, 0x0

    cmpl-double v3, p5, v3

    if-nez v3, :cond_9

    const-wide/16 v3, 0x0

    cmpl-double v3, p7, v3

    if-nez v3, :cond_9

    const-wide/16 v3, 0x0

    cmpl-double v3, p9, v3

    if-nez v3, :cond_9

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/c/a/a/b;->a:Lcom/c/a/a/q;

    invoke-virtual {v3, p1, p2}, Lcom/c/a/a/q;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 200
    :goto_0
    return-object v3

    .line 196
    :cond_9
    iget-object v3, p0, Lcom/c/a/a/b;->a:Lcom/c/a/a/q;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v5, Lcom/c/a/a/n;->b:Z

    if-nez v5, :cond_a

    move-object v3, v4

    goto :goto_0

    :cond_a
    add-double v5, p5, p9

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    const-wide v7, 0x40f86a0000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    add-double v6, p3, p7

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    const-wide v8, 0x40f86a0000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sub-double v7, p9, p5

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide v9, 0x40f86a0000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-double v8, p7, p3

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    const-wide v10, 0x40f86a0000000000L

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_b

    const/16 v7, 0x1f4

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/c/a/a/q;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ch=UTF-8&fd=5&rn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&pn=1&tp=2&cp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/c/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Lcom/c/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {p1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lcom/c/a/a/ah;

    iget-object v6, v3, Lcom/c/a/a/q;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/c/a/a/ah;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/c/a/a/ah;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/c/a/a/ah;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_c

    iget-object v3, v3, Lcom/c/a/a/q;->b:Ljava/util/Locale;

    invoke-static {v3, p0}, Lcom/c/a/a/o;->b(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    move-object v3, v4

    goto/16 :goto_0

    .line 198
    :catch_0
    move-exception v3

    .line 199
    const-string v4, "Geocoder"

    const-string v5, "getFromLocationName: got Exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
