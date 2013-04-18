.class final Lcom/b/a/fu;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 609
    invoke-static {}, Lcom/b/a/fs;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
