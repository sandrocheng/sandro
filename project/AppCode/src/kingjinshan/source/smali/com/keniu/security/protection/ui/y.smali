.class final Lcom/keniu/security/protection/ui/y;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/keniu/security/protection/ui/y;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 274
    iget-object v0, p0, Lcom/keniu/security/protection/ui/y;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 275
    return-void
.end method
