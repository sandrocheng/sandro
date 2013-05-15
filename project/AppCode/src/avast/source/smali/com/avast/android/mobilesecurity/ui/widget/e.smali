.class Lcom/avast/android/mobilesecurity/ui/widget/e;
.super Ljava/lang/Object;
.source "ConnectionTypeButtons.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->f(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;Z)Z

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Lcom/avast/android/mobilesecurity/ui/widget/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Lcom/avast/android/mobilesecurity/ui/widget/g;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->g(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/ui/widget/e;->a:Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;)Landroid/widget/ToggleButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-interface {v0, v2, v3, p2, v4}, Lcom/avast/android/mobilesecurity/ui/widget/g;->a(Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;ZZZ)V

    .line 160
    :cond_1
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
