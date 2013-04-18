.class final Lcom/keniu/security/traffic/cu;
.super Ljava/lang/Object;
.source "TrafficSoftDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSoftDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/keniu/security/traffic/cu;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/keniu/security/traffic/cu;->a:Lcom/keniu/security/traffic/TrafficSoftDetailActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficSoftDetailActivity;->finish()V

    .line 139
    return-void
.end method
