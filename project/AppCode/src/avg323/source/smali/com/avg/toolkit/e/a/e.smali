.class public Lcom/avg/toolkit/e/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/avg/toolkit/e/a/o;C)C
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avg/toolkit/e/a/e;->a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :cond_0
    return p1
.end method

.method public static a([Ljava/lang/String;)C
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget-object v0, p0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, p0, v3

    return v1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a([Ljava/lang/String;Z)Lcom/avg/toolkit/e/a/o;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_0

    sget-object v2, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    if-ne v0, v2, :cond_0

    aget-object v2, p0, v4

    const-string v3, "70"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/avg/toolkit/e/a/o;->b:Lcom/avg/toolkit/e/a/o;

    if-eqz p1, :cond_0

    aget-object v2, p0, v4

    invoke-static {v2, v4, v6}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v4

    :cond_0
    :goto_0
    if-lt v1, v5, :cond_1

    sget-object v2, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    if-ne v0, v2, :cond_1

    aget-object v2, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_3

    sget-object v0, Lcom/avg/toolkit/e/a/o;->d:Lcom/avg/toolkit/e/a/o;

    if-eqz p1, :cond_1

    aget-object v1, p0, v4

    invoke-static {v1, v4, v5}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    aget-object v2, p0, v4

    const-string v3, "75"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/avg/toolkit/e/a/o;->c:Lcom/avg/toolkit/e/a/o;

    if-eqz p1, :cond_0

    aget-object v2, p0, v4

    invoke-static {v2, v4, v6}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v4

    goto :goto_0

    :cond_3
    aget-object v2, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_4

    sget-object v0, Lcom/avg/toolkit/e/a/o;->e:Lcom/avg/toolkit/e/a/o;

    if-eqz p1, :cond_1

    aget-object v1, p0, v4

    invoke-static {v1, v4, v5}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    goto :goto_1

    :cond_4
    const/16 v2, 0x23

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    :cond_5
    sget-object v0, Lcom/avg/toolkit/e/a/o;->f:Lcom/avg/toolkit/e/a/o;

    goto :goto_1
.end method

.method public static a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/avg/toolkit/e/a/f;->a:[I

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/e/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "0"

    const-string v1, "O"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/avg/toolkit/e/a/a;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/a;-><init>(J)V

    throw v0
.end method

.method public static a(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    sget-object v1, Lcom/avg/toolkit/e/a/f;->a:[I

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    aput-object p1, p3, v0

    aput-object p2, p3, v3

    return-void

    :pswitch_0
    add-int/lit8 v1, v0, -0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v0, -0x5

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2, v3}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v0, -0x5

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "5"

    const-string v1, "S"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/avg/toolkit/e/a/e;->a([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/avg/toolkit/e/a/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x5

    const/16 v4, 0x2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    add-int/lit8 v1, v0, -0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avg/toolkit/e/a/f;->a:[I

    invoke-virtual {p0}, Lcom/avg/toolkit/e/a/o;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 v0, 0x1

    aput-object v1, p3, v0

    return-void

    :pswitch_0
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    sub-int v2, v0, v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, -0x6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    add-int/lit8 v2, v0, -0x5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_3

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0, v5}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_4

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x4

    invoke-static {p1, v0, v2}, Lcom/avg/toolkit/e/a/ac;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "1"

    const-string v1, "L"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "I"

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "1"

    const-string v1, "I"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "8"

    const-string v1, "B"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
