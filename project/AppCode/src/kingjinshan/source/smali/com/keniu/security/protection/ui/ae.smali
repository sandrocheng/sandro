.class final Lcom/keniu/security/protection/ui/ae;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/ad;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ae;->a:Lcom/keniu/security/protection/ui/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    return-void
.end method
