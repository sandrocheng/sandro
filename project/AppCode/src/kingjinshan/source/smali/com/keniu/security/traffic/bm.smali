.class final Lcom/keniu/security/traffic/bm;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/keniu/security/traffic/bm;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/keniu/security/traffic/bm;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/traffic/y;->a:Z

    .line 524
    iget-object v1, p0, Lcom/keniu/security/traffic/bm;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const v2, 0x7f0b03c0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 526
    iget-object v0, p0, Lcom/keniu/security/traffic/bm;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;)V

    .line 527
    iget-object v0, p0, Lcom/keniu/security/traffic/bm;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->b(Lcom/keniu/security/traffic/TrafficMainActivity;)V

    .line 529
    return-void
.end method
