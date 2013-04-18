.class final Lcom/keniu/security/protection/ui/s;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/keniu/security/protection/ui/s;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/keniu/security/protection/ui/s;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->removeDialog(I)V

    .line 369
    return-void
.end method
