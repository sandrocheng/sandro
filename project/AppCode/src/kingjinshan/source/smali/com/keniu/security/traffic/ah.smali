.class final Lcom/keniu/security/traffic/ah;
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
    .line 104
    iput-object p1, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    sget-object v0, Lcom/keniu/security/traffic/e;->j:Lcom/keniu/security/malware/bz;

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    const v2, 0x7f0b037d

    invoke-virtual {v1, v2}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 169
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {v2}, Lcom/keniu/security/traffic/q;->d(Z)V

    .line 119
    invoke-static {v3}, Lcom/keniu/security/traffic/q;->c(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 123
    invoke-static {}, Lcom/keniu/security/traffic/q;->j()Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 124
    iget-object v0, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    invoke-static {p2}, Lcom/keniu/security/traffic/q;->a(Z)V

    .line 127
    iget-object v0, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 128
    :goto_1
    iget-object v1, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, v1, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, v1, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    aget-object v1, v1, v0

    .line 130
    iput-boolean v2, v1, Lcom/keniu/security/traffic/f;->d:Z

    .line 131
    iget v1, v1, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v1, v3}, Lcom/keniu/security/traffic/q;->a(IZ)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 144
    :goto_2
    iget-object v1, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, v1, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v1, v1, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    aget-object v1, v1, v0

    .line 146
    iput-boolean v3, v1, Lcom/keniu/security/traffic/f;->d:Z

    .line 147
    iget v1, v1, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v1, v2}, Lcom/keniu/security/traffic/q;->a(IZ)V

    .line 149
    const-string v1, ""

    invoke-static {v1}, Lcom/keniu/security/traffic/q;->b(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ah;->a:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 164
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x7f0803aa
        :pswitch_0
    .end packed-switch
.end method
