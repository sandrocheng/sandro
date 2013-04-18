.class final Lcom/keniu/security/protection/ui/r;
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
    .line 356
    iput-object p1, p0, Lcom/keniu/security/protection/ui/r;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 360
    return-void
.end method
