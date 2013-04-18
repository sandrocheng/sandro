.class public final Lorg/achartengine/d/a;
.super Ljava/lang/Object;
.source "MathHelper.java"


# static fields
.field public static final a:D = 1.7976931348623157E308

.field private static final b:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lorg/achartengine/d/a;->b:Ljava/text/NumberFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static a(D)D
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v9, 0x4014

    const-wide/high16 v7, 0x4000

    const-wide/high16 v5, 0x4024

    .line 131
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 132
    neg-int v1, v0

    int-to-double v1, v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, p0

    .line 133
    cmpl-double v3, v1, v9

    if-lez v3, :cond_1

    move-wide v1, v5

    .line 140
    :cond_0
    :goto_0
    int-to-double v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v0, v1, v3

    .line 141
    return-wide v0

    .line 135
    :cond_1
    cmpl-double v3, v1, v7

    if-lez v3, :cond_2

    move-wide v1, v9

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, v1, v3

    if-lez v3, :cond_0

    move-wide v1, v7

    .line 138
    goto :goto_0
.end method

.method public static a(DDI)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    sget-object v0, Lorg/achartengine/d/a;->b:Ljava/text/NumberFormat;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    sub-double v1, p0, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3e7ad7f2a0000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 p2, 0x3

    new-array p2, p2, [D

    const/4 p3, 0x0

    aput-wide p0, p2, p3

    const/4 p3, 0x1

    aput-wide p0, p2, p3

    const/4 p0, 0x2

    const-wide/16 p3, 0x0

    aput-wide p3, p2, p0

    move-object p0, p2

    .line 75
    :goto_0
    const/4 p1, 0x1

    aget-wide p1, p0, p1

    const/4 p3, 0x0

    aget-wide p3, p0, p3

    sub-double/2addr p1, p3

    const/4 p3, 0x2

    aget-wide p3, p0, p3

    div-double/2addr p1, p3

    double-to-int p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 80
    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_5

    .line 81
    const/4 p3, 0x0

    aget-wide p3, p0, p3

    int-to-double v1, p2

    const/4 v3, 0x2

    aget-wide v3, p0, v3

    mul-double/2addr v1, v3

    add-double/2addr p3, v1

    .line 85
    :try_start_0
    sget-object v1, Lorg/achartengine/d/a;->b:Ljava/text/NumberFormat;

    sget-object v2, Lorg/achartengine/d/a;->b:Ljava/text/NumberFormat;

    invoke-virtual {v2, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 89
    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 73
    :cond_0
    const/4 v1, 0x0

    cmpl-double v2, p0, p2

    if-lez v2, :cond_6

    const/4 v1, 0x1

    :goto_3
    sub-double v2, p2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p4, v4

    const-wide/high16 v4, 0x4024

    neg-int v6, p4

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    const-wide/high16 v2, 0x4024

    :cond_1
    :goto_4
    const-wide/high16 v4, 0x4024

    int-to-double v6, p4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    mul-double/2addr p2, v2

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    if-eqz v1, :cond_4

    const/4 p4, 0x3

    new-array p4, p4, [D

    const/4 v1, 0x0

    aput-wide p0, p4, v1

    const/4 p0, 0x1

    aput-wide p2, p4, p0

    const/4 p0, 0x2

    const-wide/high16 p1, -0x4010

    mul-double/2addr p1, v2

    aput-wide p1, p4, p0

    move-object p0, p4

    goto/16 :goto_0

    :cond_2
    const-wide/high16 v4, 0x4000

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    const-wide/high16 v2, 0x4014

    goto :goto_4

    :cond_3
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    const-wide/high16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/4 p4, 0x3

    new-array p4, p4, [D

    const/4 v1, 0x0

    aput-wide p2, p4, v1

    const/4 p2, 0x1

    aput-wide p0, p4, p2

    const/4 p0, 0x2

    aput-wide v2, p4, p0

    move-object p0, p4

    goto/16 :goto_0

    .line 91
    :cond_5
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_6
    move-wide v8, p2

    move-wide p2, p0

    move-wide p0, v8

    goto :goto_3
.end method

.method public static a(Ljava/util/List;)[F
    .locals 4
    .parameter

    .prologue
    .line 151
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 152
    new-array v2, v1, [F

    .line 153
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 154
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    .line 153
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 156
    :cond_0
    return-object v2
.end method

.method private static b(DDI)[D
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e7ad7f2a0000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 105
    const/4 p2, 0x3

    new-array p2, p2, [D

    const/4 p3, 0x0

    aput-wide p0, p2, p3

    const/4 p3, 0x1

    aput-wide p0, p2, p3

    const/4 p0, 0x2

    const-wide/16 p3, 0x0

    aput-wide p3, p2, p0

    move-object p0, p2

    .line 123
    :goto_0
    return-object p0

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 110
    cmpl-double v1, p0, p2

    if-lez v1, :cond_5

    .line 111
    const/4 v0, 0x1

    move v7, v0

    move-wide v0, p2

    move-wide v8, p0

    move-wide p1, v8

    move p0, v7

    .line 116
    :goto_1
    sub-double v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double p3, p4

    div-double p3, v2, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const-wide/high16 v3, 0x4024

    neg-int v5, v2

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr p3, v3

    const-wide/high16 v3, 0x4014

    cmpl-double v3, p3, v3

    if-lez v3, :cond_2

    const-wide/high16 p3, 0x4024

    :cond_1
    :goto_2
    const-wide/high16 v3, 0x4024

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr p3, v2

    .line 118
    div-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double/2addr v0, p3

    .line 119
    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    mul-double/2addr p1, p3

    .line 120
    if-eqz p0, :cond_4

    .line 121
    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 v2, 0x0

    aput-wide p1, p0, v2

    const/4 p1, 0x1

    aput-wide v0, p0, p1

    const/4 p1, 0x2

    const-wide/high16 v0, -0x4010

    mul-double p2, v0, p3

    aput-wide p2, p0, p1

    goto :goto_0

    .line 116
    :cond_2
    const-wide/high16 v3, 0x4000

    cmpl-double v3, p3, v3

    if-lez v3, :cond_3

    const-wide/high16 p3, 0x4014

    goto :goto_2

    :cond_3
    const-wide/high16 v3, 0x3ff0

    cmpl-double v3, p3, v3

    if-lez v3, :cond_1

    const-wide/high16 p3, 0x4000

    goto :goto_2

    .line 123
    :cond_4
    const/4 p0, 0x3

    new-array p0, p0, [D

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    const/4 v0, 0x1

    aput-wide p1, p0, v0

    const/4 p1, 0x2

    aput-wide p3, p0, p1

    goto :goto_0

    :cond_5
    move v7, v0

    move-wide v0, p0

    move p0, v7

    move-wide v8, p2

    move-wide p1, v8

    goto :goto_1
.end method

.method private static b(Ljava/util/List;)[D
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 46
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-array v0, v11, [D

    .line 57
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move-wide v3, v0

    move-wide v5, v0

    move v1, v10

    .line 52
    :goto_1
    if-ge v1, v2, :cond_1

    .line 53
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 54
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 55
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 57
    :cond_1
    new-array v0, v11, [D

    aput-wide v5, v0, v9

    aput-wide v3, v0, v10

    goto :goto_0
.end method
