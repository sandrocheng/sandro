.class final Lcom/keniu/security/sync/ui/ad;
.super Ljava/lang/Object;
.source "SyncMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncMainActivity;

.field private b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/keniu/security/sync/ui/SyncMainActivity;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ad;->a:Lcom/keniu/security/sync/ui/SyncMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/sync/ui/ad;->b:Ljava/lang/Class;

    .line 221
    iput-object p2, p0, Lcom/keniu/security/sync/ui/ad;->b:Ljava/lang/Class;

    .line 222
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ad;->a:Lcom/keniu/security/sync/ui/SyncMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/ad;->a:Lcom/keniu/security/sync/ui/SyncMainActivity;

    iget-object v3, p0, Lcom/keniu/security/sync/ui/ad;->b:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/SyncMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method
