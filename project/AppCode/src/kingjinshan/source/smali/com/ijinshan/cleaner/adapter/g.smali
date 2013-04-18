.class final Lcom/ijinshan/cleaner/adapter/g;
.super Ljava/lang/Object;
.source "SDcardActivityAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/adapter/f;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/adapter/f;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ijinshan/cleaner/adapter/g;->a:Lcom/ijinshan/cleaner/adapter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ijinshan/cleaner/a/c;Lcom/ijinshan/cleaner/a/c;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 42
    const/4 v0, -0x1

    .line 46
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    check-cast p1, Lcom/ijinshan/cleaner/a/c;

    check-cast p2, Lcom/ijinshan/cleaner/a/c;

    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/ijinshan/cleaner/a/c;->e()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
