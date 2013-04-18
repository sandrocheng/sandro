.class final Lcom/ijinshan/bootmanager/a/b;
.super Ljava/lang/Object;
.source "OnBootInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/b/a;

.field final synthetic b:Lcom/ijinshan/bootmanager/a/a;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/a/a;Lcom/ijinshan/bootmanager/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ijinshan/bootmanager/a/b;->b:Lcom/ijinshan/bootmanager/a/a;

    iput-object p2, p0, Lcom/ijinshan/bootmanager/a/b;->a:Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ijinshan/bootmanager/a/b;->b:Lcom/ijinshan/bootmanager/a/a;

    invoke-static {v0}, Lcom/ijinshan/bootmanager/a/a;->a(Lcom/ijinshan/bootmanager/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/a/b;->a:Lcom/ijinshan/bootmanager/b/a;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Lcom/ijinshan/bootmanager/b/a;)V

    .line 89
    return-void
.end method
