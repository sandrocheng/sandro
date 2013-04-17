.class public final Lcq;
.super Lcc;


# static fields
.field private static f:J


# instance fields
.field private e:Lbm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcq;->f:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcc;-><init>()V

    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    iput-object v0, p0, Lcq;->e:Lbm;

    return-void
.end method


# virtual methods
.method public final a()Lcc$a;
    .locals 1

    sget-object v0, Lcc$a;->a:Lcc$a;

    return-object v0
.end method

.method public final c()I
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    sget-wide v0, Lcq;->f:J

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    int-to-long v5, v5

    add-long/2addr v0, v5

    sput-wide v0, Lcq;->f:J

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v2, v0

    :goto_1
    return v2

    :cond_0
    iget-object v0, p0, Lcq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcp;

    if-eqz v0, :cond_1

    iget-object v5, v0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PHOTO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcp;->b:[B

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    iget-object v0, v0, Lcp;->b:[B

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcp;->a:[Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcq;->e:Lbm;

    iget v1, v1, Lbm;->c:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcq;->e:Lbm;

    iget-object v0, v0, Lbm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcq;->e:Lbm;

    iget-object v0, v0, Lbm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcc;->d:Ljava/lang/Integer;

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcc;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcq;->b()Lcp;

    move-result-object v2

    iget-object v4, p0, Lcc;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcc;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v4, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "X-FOCUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcq;->e:Lbm;

    iput v3, v2, Lbm;->c:I

    goto :goto_0

    :cond_4
    const-string v5, "ACCOUNTNAME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v4, p0, Lcq;->e:Lbm;

    iget-object v2, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lbm;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string v5, "ACCOUNTTYPE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcq;->e:Lbm;

    iget-object v2, v2, Lcp;->a:[Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lbm;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method
