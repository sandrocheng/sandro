.class final Lcom/keniu/security/traffic/ay;
.super Landroid/os/Handler;
.source "TrafficMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 128
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 129
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->c(Lcom/keniu/security/traffic/TrafficMainActivity;)Z

    .line 130
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->d(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 146
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->e(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_5

    .line 153
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->f(Lcom/keniu/security/traffic/TrafficMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->a(Lcom/keniu/security/traffic/TrafficMainActivity;Z)Z

    .line 156
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-string v1, "10"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const v1, 0x7f0b032e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 164
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const v1, 0x7f0b02a5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/keniu/security/traffic/ay;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/at;->a(Landroid/content/Context;Lcom/keniu/security/traffic/y;)V

    goto/16 :goto_0
.end method
