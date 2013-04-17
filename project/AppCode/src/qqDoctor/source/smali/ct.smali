.class public final Lct;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct;->a:Ljava/util/Map;

    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "FAX"

    aput-object v2, v0, v1

    const-string v2, "WORK"

    aput-object v2, v0, v6

    const-string v2, "HOME"

    aput-object v2, v0, v7

    sput-object v0, Lct;->b:[Ljava/lang/String;

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [C

    sput-object v0, Lct;->c:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    sget-object v0, Lct;->c:[C

    const/16 v1, 0x3b

    aput-char v1, v0, v6

    sget-object v0, Lct;->c:[C

    const/16 v1, 0x72

    aput-char v1, v0, v7

    sget-object v0, Lct;->c:[C

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    return-void

    :cond_0
    sget-object v2, Lct;->a:Ljava/util/Map;

    sget-object v3, Lct;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v2, p0, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v2, 0x1

    const/4 v6, 0x0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v6

    move v1, v6

    move v3, v6

    move v4, v6

    :goto_0
    array-length v0, v7

    if-lt v5, v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-eqz v4, :cond_6

    :cond_0
    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    const-string v1, "FAX;WORK"

    aput-object v1, v0, v6

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lct;->a:Ljava/util/Map;

    aget-object v9, v7, v5

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    aget-object v0, v7, v5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v3

    move v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2

    :pswitch_0
    move v0, v1

    move v1, v3

    move v3, v2

    goto :goto_2

    :pswitch_1
    move v0, v1

    move v3, v4

    move v1, v2

    goto :goto_2

    :pswitch_2
    move v0, v2

    move v1, v3

    move v3, v4

    goto :goto_2

    :cond_3
    const-string v1, "FAX;HOME"

    aput-object v1, v0, v6

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const-string v1, "WORK"

    aput-object v1, v0, v6

    goto :goto_1

    :cond_5
    const-string v1, "HOME"

    aput-object v1, v0, v6

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x5c

    if-ne v0, v5, :cond_7

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v4, :cond_6

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v0, v1

    :goto_2
    sget-object v6, Lct;->c:[C

    if-eqz v6, :cond_8

    sget-object v6, Lct;->c:[C

    array-length v6, v6

    if-lt v0, v6, :cond_2

    move v0, v2

    move-object v2, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    sget-object v6, Lct;->c:[C

    aget-char v6, v6, v0

    if-ne v5, v6, :cond_5

    const/16 v0, 0x72

    if-ne v5, v0, :cond_3

    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move-object v2, v3

    goto :goto_3

    :cond_3
    const/16 v0, 0x6e

    if-ne v5, v0, :cond_4

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    move-object v2, v3

    goto :goto_3

    :cond_7
    const/16 v5, 0x3b

    if-eq v0, v5, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    move v7, v2

    move-object v2, v0

    move v0, v7

    goto :goto_3

    :cond_8
    move v0, v2

    move-object v2, v3

    goto :goto_3
.end method
