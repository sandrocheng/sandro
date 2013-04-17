.class public final Lgx$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/tencent/tmsecure/module/software/AppEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lgx$a;->a:Ljava/text/Collator;

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lgx$a;-><init>()V

    return-void
.end method

.method private a(Lcom/tencent/tmsecure/module/software/AppEntity;Lcom/tencent/tmsecure/module/software/AppEntity;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lgx$a;->a:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/tencent/tmsecure/module/software/AppEntity;

    check-cast p2, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {p0, p1, p2}, Lgx$a;->a(Lcom/tencent/tmsecure/module/software/AppEntity;Lcom/tencent/tmsecure/module/software/AppEntity;)I

    move-result v0

    return v0
.end method
