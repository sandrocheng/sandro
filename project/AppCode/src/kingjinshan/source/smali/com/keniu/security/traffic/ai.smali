.class final Lcom/keniu/security/traffic/ai;
.super Ljava/lang/Object;
.source "TrafficFireWallMainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    const v2, 0x7f0b037d

    invoke-virtual {v1, v2}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 232
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {v4}, Lcom/keniu/security/traffic/q;->c(Z)V

    .line 190
    invoke-static {v3}, Lcom/keniu/security/traffic/q;->d(Z)V

    .line 191
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 193
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 194
    invoke-static {}, Lcom/keniu/security/traffic/q;->k()Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 195
    iget-object v0, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    invoke-static {p2}, Lcom/keniu/security/traffic/q;->b(Z)V

    .line 197
    iget-object v0, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->c(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 200
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 201
    aget-object v2, v0, v1

    .line 202
    iput-boolean v4, v2, Lcom/keniu/security/traffic/f;->c:Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 212
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 213
    aget-object v2, v0, v1

    .line 214
    iput-boolean v3, v2, Lcom/keniu/security/traffic/f;->c:Z

    .line 215
    const-string v2, ""

    invoke-static {v2}, Lcom/keniu/security/traffic/q;->a(Ljava/lang/String;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ai;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 227
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setClickable(Z)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f0803ab
        :pswitch_0
    .end packed-switch
.end method
