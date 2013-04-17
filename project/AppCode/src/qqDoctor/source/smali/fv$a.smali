.class final Lfv$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lmf;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lfv;


# direct methods
.method private constructor <init>(Lfv;)V
    .locals 0

    iput-object p1, p0, Lfv$a;->a:Lfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfv;B)V
    .locals 0

    invoke-direct {p0, p1}, Lfv$a;-><init>(Lfv;)V

    return-void
.end method

.method private a(Lmf;Lmf;)I
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p1, Lmf;->a:Ljava/lang/String;

    iget-object v4, p2, Lmf;->a:Ljava/lang/String;

    sget-object v5, Lsv;->b:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lsv;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lsv;->b:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v0, Lsv;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v5, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-ge v5, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lsv;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lfv$a;->a:Lfv;

    iget-object v0, p1, Lmf;->a:Ljava/lang/String;

    invoke-static {v0}, Lfv;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lfv$a;->a:Lfv;

    iget-object v4, p2, Lmf;->a:Ljava/lang/String;

    invoke-static {v4}, Lfv;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v0, :cond_7

    if-nez v4, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lmf;

    check-cast p2, Lmf;

    invoke-direct {p0, p1, p2}, Lfv$a;->a(Lmf;Lmf;)I

    move-result v0

    return v0
.end method
