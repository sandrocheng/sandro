.class final Lcom/keniu/security/traffic/ce;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/cd;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/cd;)V
    .locals 0
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lcom/keniu/security/traffic/ce;->a:Lcom/keniu/security/traffic/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/keniu/security/traffic/ce;->a:Lcom/keniu/security/traffic/cd;

    iget-object v0, v0, Lcom/keniu/security/traffic/cd;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;)V

    .line 798
    return-void
.end method
