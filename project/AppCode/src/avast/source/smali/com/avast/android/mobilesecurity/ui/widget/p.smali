.class Lcom/avast/android/mobilesecurity/ui/widget/p;
.super Ljava/lang/Object;
.source "SmsCallButtons.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->performClick()Z

    .line 67
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->a(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/avast/android/generic/d/e;->a(Ljava/lang/String;Z)Z

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->b(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Lcom/avast/android/mobilesecurity/ui/widget/r;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->b(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Lcom/avast/android/mobilesecurity/ui/widget/r;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/widget/p;->a:Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;->c(Lcom/avast/android/mobilesecurity/ui/widget/SmsCallButtons;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/avast/android/mobilesecurity/ui/widget/r;->a(Landroid/widget/ToggleButton;Z)V

    .line 73
    :cond_1
    return-void
.end method
