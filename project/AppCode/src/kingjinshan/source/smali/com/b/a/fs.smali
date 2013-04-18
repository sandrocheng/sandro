.class final Lcom/b/a/fs;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"


# static fields
.field private static final a:Ljava/util/Iterator;

.field private static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lcom/b/a/ft;

    invoke-direct {v0}, Lcom/b/a/ft;-><init>()V

    sput-object v0, Lcom/b/a/fs;->a:Ljava/util/Iterator;

    .line 606
    new-instance v0, Lcom/b/a/fu;

    invoke-direct {v0}, Lcom/b/a/fu;-><init>()V

    sput-object v0, Lcom/b/a/fs;->b:Ljava/lang/Iterable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 615
    sget-object v0, Lcom/b/a/fs;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/b/a/fs;->a:Ljava/util/Iterator;

    return-object v0
.end method
