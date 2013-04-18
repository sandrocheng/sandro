.class final Lcom/keniu/security/traffic/bc;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/keniu/security/traffic/bc;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 846
    iget-object v0, p0, Lcom/keniu/security/traffic/bc;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 848
    iget-object v0, p0, Lcom/keniu/security/traffic/bc;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const v2, 0x7f080188

    invoke-virtual {v0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/TrafficIcon2;

    .line 849
    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficIcon2;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    .line 850
    iget-object v2, p0, Lcom/keniu/security/traffic/bc;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->n(Lcom/keniu/security/traffic/TrafficMainActivity;)Lcom/keniu/security/traffic/br;

    move-result-object v2

    iget-wide v2, v2, Lcom/keniu/security/traffic/br;->g:J

    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->d:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/keniu/security/traffic/TrafficIcon2;->a(JJ)V

    .line 852
    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficIcon2;->a()V

    .line 856
    :goto_0
    return-void

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/bc;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->o(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
