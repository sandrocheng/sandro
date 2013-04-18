.class final Lcom/ijinshan/bootmanager/activity/b;
.super Ljava/lang/Object;
.source "AutoBootMangerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/b;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/b;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/b;->a:Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;

    const-class v3, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method
