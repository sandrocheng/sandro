.class final Lcom/ijinshan/cleaner/l;
.super Ljava/lang/Object;
.source "CacheCleanerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/cleaner/CacheCleanerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/CacheCleanerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/ijinshan/cleaner/l;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ijinshan/cleaner/l;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v1, p0, Lcom/ijinshan/cleaner/l;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    iget-object v1, p0, Lcom/ijinshan/cleaner/l;->a:Lcom/ijinshan/cleaner/CacheCleanerActivity;

    invoke-static {v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->e(Lcom/ijinshan/cleaner/CacheCleanerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {p0}, Lcom/ijinshan/cleaner/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/cleaner/CacheCleanerActivity;->a(Ljava/lang/String;)V

    .line 205
    return-void
.end method
