.class Lcom/google/a/af;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    new-instance v0, Lcom/google/a/ag;

    invoke-direct {v0}, Lcom/google/a/ag;-><init>()V

    sput-object v0, Lcom/google/a/af;->a:Ljava/util/Iterator;

    .line 604
    new-instance v0, Lcom/google/a/ah;

    invoke-direct {v0}, Lcom/google/a/ah;-><init>()V

    sput-object v0, Lcom/google/a/af;->b:Ljava/lang/Iterable;

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 613
    sget-object v0, Lcom/google/a/af;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/google/a/af;->a:Ljava/util/Iterator;

    return-object v0
.end method
