.class final Lcom/keniu/security/traffic/bh;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/keniu/security/traffic/bh;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/keniu/security/traffic/bh;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 1224
    const-string v1, "1"

    iput-object v1, v0, Lcom/keniu/security/traffic/y;->u:Ljava/lang/String;

    .line 1225
    iget-object v1, p0, Lcom/keniu/security/traffic/bh;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const v2, 0x7f0b02c0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 1227
    iget-object v0, p0, Lcom/keniu/security/traffic/bh;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;I)V

    .line 1230
    return-void
.end method
